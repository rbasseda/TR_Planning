(in-package "PDDL")

(defstruct (pgraph
              (:print-function
                 (lambda (pg str lev)
                    (declare (ignore lev))
                    (format str "#<PG ~s ~s>"
                            (length (pgraph-faces pg))
                            (length (pgraph-nodes pg))))))
   (faces '())
   (nodes '()))

(defstruct (pface
              (:print-function
                 (lambda (pg str lev)
                    (declare (ignore lev))
                    (format str "#<PF ~s>"
                            (length (pface-nodes pg))))))
   (nodes '()))

(defstruct (pnode 
              (:print-function
                 (lambda (pn str lev)
                    (declare (ignore lev))
                    (format str "#<PN ~s ~5,2f ~5,2f>"
                            (pnode-sym pn)
                            (pnode-x pn)
                            (pnode-y pn)))))
   sym x y (neighbors '()) (vehl nil) (stuff '()) (fuel 0))

(defun new-pnode (x y ss)
   (let ((new (make-pnode :x x :y y)))
      (setf (pnode-sym new) (new-sym 'food ss))
      new))

(defvar random-prob-announce* nil)

(defvar mystery-sym-pool*
  '((province moravia manitoba guanabara pennsylvania surrey bavaria
              kentucky goias oregon arizona alsace bosnia quebec)
    (planet mercury venus earth mars jupiter saturn uranus neptune pluto
            vulcan)
    (food beef pork cod broccoli pistachio chocolate lettuce tomato lemon
          hamburger hotdog potato haroset rice papaya guava apple pear
          lamb pea arugula flounder shrimp scallop lobster popover snickers
          marzipan chicken turkey ham muffin sweetroll wonderbread baguette
          tuna bacon pepper cucumber kale okra wurst tofu yogurt onion
          endive scallion mutton cherry grapefruit cantelope melon orange)
    (pain boils sciatica angina prostatitis laceration abrasion hangover
          grief jealousy loneliness anger depression anxiety dread)
    (pleasure satiety lubricity rest achievement love stimulation learning
              curiosity understanding aesthetics excitement entertainment
              intoxication expectation triumph satisfaction empathy)))
    
(defun random-mystery-prob
             (&key name size edgeprob fuelprob fuelamt neighfac vehprob
                   cargoprob cargonum numgoals clumpprob) 
   (cond (random-prob-announce*
          (format t "Random prob: name = ~s size = ~s edgeprob = ~,2f 
                     fuelprob = ~,2f fuelamt = ~,2f neighfac = ~,2f 
                     vehprob = ~,2f cargoprob = ~,2f 
                     numgoals = ~s clumpprob =~,2f~%"
                    name size edgeprob 
                    fuelprob fuelamt neighfac 
                    vehprob cargoprob 
                    numgoals clumpprob)))
   (cond ((not (and name size edgeprob fuelprob fuelamt neighfac vehprob
                    cargoprob cargonum numgoals clumpprob) )
          (error "Some parameter of random-prob left unspecified ~s"
                 (mapcar #'car
                         (remove-if #'cadr
                                    `((name ,name)
                                      (size ,size)
                                      (edgeprob ,edgeprob)
                                      (fuelprob ,fuelprob)
                                      (fuelamt ,fuelamt)
                                      (neighfac ,neighfac)
                                      (vehprob ,vehprob)
                                      (cargoprob ,cargoprob)
                                      (cargonum ,cargonum)
                                      (numgoals ,numgoals)
                                      (clumpprob ,clumpprob)))))))
   (let ((ss (init-symstates mystery-sym-pool*)))
      (let ((nodes (random-nodes size edgeprob fuelprob fuelamt neighfac vehprob
                                 cargoprob cargonum ss)))
         (let ((vehicles
                  (mapcan #'(lambda (n)
                                (cond ((pnode-vehl n)
                                       (list (pnode-vehl n)))
                                      (t '())))
                          nodes))
               (cargo
                  (mapcan #'(lambda (n)
                               (copy-list (pnode-stuff n)))
                          nodes))
               (max-fuel
                  (let ((mf 0))
                     (dolist (n nodes)
                        (cond ((> (pnode-fuel n) mf)
                               (setq mf (pnode-fuel n)))))
                     mf))
               (max-space 0)
               (inits (nodes-predify nodes)))
           (cond (random-prob-announce*
                  (format t "Fuel distrib = ~s~%"
                          (mapcar #'pnode-fuel nodes))))
           (dolist (p inits)
             (cond ((eq (car p) 'harmony)
                    (setq max-space (max max-space (caddr p))))))
           (let ((planets (leibniz (+ max-space 1) 'planet ss))
                 (provinces (leibniz (+ max-fuel 1) 'province ss)))
              (setq inits
                    (nconc (prop-chain planets 'orbits)
                           (prop-chain provinces 'attacks)
                           (mapcar
                              #'(lambda (p)
                                   (cond ((eq (car p) 'harmony)
                                          `(harmony ,(cadr p)
                                                    ,(nth (caddr p)
                                                          planets)))
                                         ((eq (car p) 'locale)
                                          `(locale ,(cadr p)
                                                   ,(nth (caddr p)
                                                         provinces)))
                                         (t p)))
                              inits)))
              `(define (problem ,name)
                  (:domain mystery-typed)
                  (:objects ,@(mapcar #'pnode-sym nodes) - food
                            ,@vehicles - pleasure
                            ,@cargo - pain
                            ,@provinces - province
                            ,@planets - planet)
                  (:init ,@(list-scramble inits))
                  (:goal (and ,@(random-goals nodes numgoals clumpprob)))))))))

(defun random-nodes (size edgeprob fuelprob fuelamt neighfac vehprob
                     cargoprob cargonum ss)
  (let ((num-components (+ 1 (random 3)))
        (components '()))
     (do ((i 0 (+ i 1)))
         ((>= i num-components))
       (let ((num (random size)))
          (push (random-planar-graph num edgeprob ss)
                components)
          (setq size (floor size 2))))
     (dolist (cg components)
        (fix-links (pgraph-faces cg)))
     (components-link components)
     (let ((all-points
              (mapcan
                 #'(lambda (pg)
                      (copy-list (pgraph-nodes pg)))
                 components)))
        (sprinkle-fuel all-points fuelprob fuelamt neighfac)
        (sprinkle-vehicles all-points vehprob ss)
        (sprinkle-cargo all-points cargoprob cargonum ss)
        all-points)))

(defvar random-graph-dbg* nil)

(defun random-planar-graph (size edgeprob ss)
   (let ((graph (init-planar-graph ss)))
               (do ((i 0 (+ i 1))
                    (which))
                   ((>= i size)
                    graph)
                  (cond ((random-choice edgeprob)
                         (cond ((graph-add-edge graph)
                                (setq which 'edge))
                               (t
                                (graph-add-node graph ss)
                                (setq which 'node))))
                        (t
                         (graph-add-node graph ss)
                         (setq which 'node)))
                  (cond (random-graph-dbg*
                         (format t "Added ~a, now ~s~%"
                                 which
                                 (mapcar #'pface-nodes
                                         (pgraph-faces graph))))))))

(defun init-planar-graph (ss)
   (let ((max-y (random 100.0)))
      (let ((init-points
               (list (new-pnode 0.0 0.0 ss)
                     (new-pnode 100.0 0.0 ss)
                     (new-pnode 100.0 max-y ss)
                     (new-pnode 0.0 max-y ss))))
         (let ((face (make-pface :nodes init-points)))
;            (dolist (p init-points)
;               (setf (pnode-faces p) (list face)))
           (make-pgraph :nodes init-points
                        :faces (list face))))))

(defun graph-add-edge (graph)
   (let ((face (pick-on-criterion
                  (pgraph-faces graph)
                  #'face-size)))
      (let ((nodes (pface-nodes face)))
         (let ((cands
                     (mapcan #'(lambda (pt1)
                                  (mapcar #'(lambda (pt2)
                                               (list pt1 pt2))
                                          (cddr (member pt1 nodes))))
                             nodes)))
            (cond ((null cands) nil)
                  (t
                   (let ((chosen
                            (pick-on-criterion
                               cands
                               #'(lambda (pair)
                                    (node-pair-attractiveness
                                       (car pair) (cadr pair) face)))))
                      (let ((tail (member (car chosen) nodes)))
                         (let ((seg3 (member (cadr chosen) tail)))
                            (let ((seg1 (ldiff nodes (cdr tail)))
                                  (seg2 (ldiff tail (cdr seg3))))
                               (cond ((and (> (+ (length seg1) (length seg3))
                                              2)
                                           (> (length seg2)
                                              2))
                                      (setf (pgraph-faces graph)
                                            (cons (make-pface
                                                     :nodes (append seg1 seg3))
                                                  (cons (make-pface :nodes seg2)
                                                        (delete
                                                            face
                                                            (pgraph-faces graph)
                                                            :test #'eq))))
                                      t)
                                     (t nil))))))))))))

(defvar bad-graph* nil)

(defun graph-add-node (graph ss)
   (let ((face (pick-on-criterion
                  (pgraph-faces graph)
                  #'face-size)))
      (let ((pred (pick-on-criterion
                     (pface-nodes face)
                     #'(lambda (n) (link-length n face)))))
         (let ((succ (successor-in-face pred face)))
            (let ((new (new-pnode (/ (+ (pnode-x pred) (pnode-x succ))
                                     2)
                                  (/ (+ (pnode-y pred) (pnode-y succ))
                                     2)
                                  ss)))
               (dolist (old (pgraph-nodes graph))
                  (cond ((and (= (pnode-x old) (pnode-x new))
                              (= (pnode-y old) (pnode-y new)))
                         (setq bad-graph* graph)
                         (error "Two nodes in same place ~s" new))))
               (setf (pgraph-faces graph)
                     (mapcar
                        #'(lambda (fac)
                             (let ((ptail (member pred (pface-nodes fac)
                                                  :test #'eq))
                                   (stail (member succ (pface-nodes fac)
                                                  :test #'eq)))
                               (cond ((or (null ptail) (null stail))
                                      fac)
                                     ((or (eq (cdr ptail) stail)
                                          (and (eq stail (pface-nodes fac))
                                               (null (cdr ptail))))
                                      (make-pface
                                         :nodes
                                            (nconc (ldiff (pface-nodes fac)
                                                          stail)
                                                   (cons new stail))))
                                     ((or (eq (cdr stail) ptail)
                                          (and (eq ptail (pface-nodes fac))
                                               (null (cdr stail))))
                                      (make-pface
                                         :nodes
                                            (nconc (ldiff (pface-nodes fac)
                                                          ptail)
                                                   (cons new ptail))))
                                     (t
                                      (cerror "I'll take it unmodified"
                                              "Can't decipher face ~s~
                                              ~%ptail = ~s~
                                              ~%stail = ~s"
                                              (pface-nodes fac) ptail stail)))))
                        (pgraph-faces graph)))
               (setf (pgraph-nodes graph)
                     (cons new (pgraph-nodes graph))))))))

(defun fix-links (faces)
   (labels ()
      (dolist (fac faces)
         (let ((n1 (car (pface-nodes fac))))
            (do ((l (pface-nodes fac) (cdr l)))
                ((null (cdr l))
                 (pnodes-link (car l) n1))
              (pnodes-link (car l) (cadr l)))))))

(defvar cyclic-overall* 0.3)

(defun components-link (pgl)
   (labels ((pgraphs-link (g1 g2)
              (pnodes-link (randelt (pgraph-nodes g1))
                           (randelt (pgraph-nodes g2)))))
      (do ((l pgl (cdr l)))
          ((null (cdr l))
           (cond ((random-choice cyclic-overall*)
                  (pgraphs-link (car l) (car pgl)))))
        (pgraphs-link (car l) (cadr l)))))

(defun pnodes-link (n1 n2)
               (setf (pnode-neighbors n1)
                     (adjoin n2 (pnode-neighbors n1)
                             :test #'eq))
               (setf (pnode-neighbors n2)
                     (adjoin n1 (pnode-neighbors n2)
                             :test #'eq)))

(defun sprinkle-fuel (nodes fuelprob fuelamt neighborfactor)
   (labels ((propagate (n fuelamt)
               (let ((amt (random fuelamt)))
                  (setf (pnode-fuel n) (+ (pnode-fuel n) amt))
                  (let ((propamt (floor (* neighborfactor amt))))
                     (cond ((>= propamt 1)
                            (dolist (neigh (pnode-neighbors n))
                               (propagate neigh propamt))))))))
      (dolist (n nodes)
        (cond ((random-choice fuelprob)
               (propagate n fuelamt))))))

(defun sprinkle-vehicles (nodes vehprob ss)
   (let ((at-least-one nil))
      (dolist (n nodes)
         (cond ((random-choice vehprob)
                (setq at-least-one t)
                (setf (pnode-vehl n)
                      (new-sym 'pleasure ss)))))
      (cond ((not at-least-one)
             (let ((n (randelt nodes)))
                (setf (pnode-vehl n)
                      (new-sym 'pleasure ss)))))))

(defun sprinkle-cargo (nodes cargoprob cargonum ss)
   (dolist (n nodes)
      (cond ((random-choice cargoprob)
             (let ((num (+ 1 (random cargonum))))
                (dotimes (i num)
                   (let ((c (new-sym 'pain ss)))
                      (push c (pnode-stuff n))))))))
  (cond ((every #'(lambda (n)
                     (null (pnode-stuff n)))
                nodes)
         ; Have to have some cargo
         (sprinkle-cargo nodes 0.6 2 ss))))

(defun nodes-predify (nodes)
   (mapcan #'(lambda (n)
                (let ((sym (pnode-sym n)))
                   (nconc (cond ((pnode-vehl n)
                                 (list `(craves ,(pnode-vehl n) ,sym)
                                       `(harmony ,(pnode-vehl n)
                                                 ,(+ 1 (random 3)))))
                                (t '()))
                          (mapcar #'(lambda (s)
                                       `(craves ,s ,sym))
                                  (pnode-stuff n))
                          (mapcar #'(lambda (neigh)
                                       `(eats ,sym ,(pnode-sym neigh)))
                                  (pnode-neighbors n))
                          (list `(locale ,sym ,(pnode-fuel n))))))
           nodes))

(defun random-goals (nodes numgoals clumpprob)
   (let ((current-orig nil)
         (current-dest nil) 
         (goals '()))
      (dotimes (i numgoals)
         (let ((orig (cond ((and current-orig
                                 (random-choice clumpprob))
                            current-orig)
                           (t
                            (dotimes (i 1000
                                        (error "Can't find a node with stuff"))
                               (let ((n (randelt nodes)))
                                  (cond ((not (null (pnode-stuff n)))
                                         (return n))))))))
               (dest (cond ((and current-dest
                                 (random-choice clumpprob))
                            current-dest)
                           (t
                            (randelt nodes)))))
            (setq goals
                  (adjoin `(craves ,(randelt (pnode-stuff orig))
                                   ,(pnode-sym dest)) 
                          goals
                          :test #'(lambda (e1 e2)
                                     (eq (cadr e1) (cadr e2)))))
                          
            (setq current-orig orig)
            (setq current-dest dest)))
      goals))

(defun face-size (fac)
   (let ((lowx 100.0) (lowy 100.0)
         (highx 0.0) (highy 0.0))
      (dolist (n (pface-nodes fac))
         (let ((nx (pnode-x n))
               (ny (pnode-y n)))
            (cond ((< nx lowx)
                   (setq lowx nx)))
            (cond ((> nx highx)
                   (setq highx nx)))
            (cond ((< ny lowy)
                   (setq lowy ny)))
            (cond ((> ny highy)
                   (setq highy ny)))))
      (* (- highx lowx)
         (- highy lowy))))

(defun successor-in-face (n fac)
   (let ((nt (member n (pface-nodes fac) :test #'eq)))
      (cond ((cdr nt) (cadr nt))
            (t (car (pface-nodes fac))))))

; Euclidean length of link following n
(defun link-length (n face)
   (let ((ntl (member n (pface-nodes face) :test #'eq)))
      (cond ((null (cdr ntl))
             (euclid-dist n (car (pface-nodes face))))
            (t
             (euclid-dist n (cadr ntl))))))

; Two nodes are attractive for a new edge if they are closer together than
; the edge count between them would indicate, and if no node in the face already
; lies on the edge that would be built.
(defun node-pair-attractiveness (n1 n2 face)
   (cond ((every #'(lambda (n)
                      (or (eq n n1)
                          (eq n n2)
                          (not (lies-on-line n n1 n2))))
                 (pface-nodes face))
          (/ (node-dist n1 n2 face)
             (euclid-dist n1 n2)))
         (t 0)))

(defun lies-on-line (n n1 n2)
   (let ((x (pnode-x n))
         (y (pnode-y n))
         (x1 (pnode-x n1))
         (y1 (pnode-y n1))
         (x2 (pnode-x n2))
         (y2 (pnode-y n2)))
      (< (abs (- (* (- y2 y1)
                    (- x x1))
                 (* (- x2 x1)
                    (- y y1))))
         0.01)))


; Distance between them around the face
(defun node-dist (n1 n2 face)
   (let ((nodes (pface-nodes face)))
      (let ((n (length nodes)))
         (do ((nlst nodes (cdr nlst))
              (i 0 (+ i 1))
              (found-n1 nil)
              (found-n2 nil))
             ((null nlst)
              (error "Fumbled nodes"))
           (cond ((eq (car nlst) n1)
                  (cond (found-n2
                         (let ((count (- i found-n2)))
                            (return (min count (- n count)))))
                        (t
                         (setq found-n1 i))))
                 ((eq (car nlst) n2)
                  (cond (found-n1
                         (let ((count (- i found-n1)))
                            (return (min count (- n count)))))
                        (t
                         (setq found-n2 i)))))))))

(defun euclid-dist (n1 n2)
   (let ((delta-x (- (pnode-x n1) (pnode-x n2)))
         (delta-y (- (pnode-y n1) (pnode-y n2))))
      (sqrt (+ (* delta-x delta-x)
               (* delta-y delta-y)))))

(defun leibniz (num categ ss)
   (let ((res '()))
      (dotimes (i num)
         (push (new-sym categ ss)
               res))
      res))

(defun prop-chain (syms pred)
   (let ((res '()))
      (do ((sl syms (cdr sl)))
          ((null (cdr sl)))
         (push `(,pred ,(car sl) ,(cadr sl))
               res))
      res))
