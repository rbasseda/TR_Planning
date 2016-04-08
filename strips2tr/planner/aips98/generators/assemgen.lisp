(in-package "PDDL")

(defstruct (po-node
              (:print-function
                  (lambda (pon srm lev)
                          (declare (ignore lev))
                     (format srm "#<PO-node ~s>"
                                 (po-node-name pon)))))
   (name nil)
   (resources '())
   (predecessors '())
   (successors '())
   (subs '())
   (transient nil)  ; if non-nil, points to node that must be put in before
                    ; this one can be removed
   (standin nil) ; points to the node that this really is.
   (mark 0 :type integer)) 
              
(defvar assembly-sym-pool*
        '((assembly frob whatsis gimcrack hoozawhatsie contraption
                    thingumbob device kludge hack fastener mount
                    bracket unit connector plug socket tube
                    foobar doodad coil sprocket widget valve wire)
          (resource charger hammock scaffold hammer tweezers pliers
                    scalpel clamp file voltmeter scope)))

(defvar min-partition* 3)
(defvar max-partition* 10)
(defvar last-po-tree* nil)

(defun random-assembly-prob (name size numresources transient-prob)
   (let ((ss (init-symstates assembly-sym-pool*)))
      (let ((resources (random-resources numresources ss)))
         (let ((po-tree (random-po-tree
                           0 size min-partition* max-partition*
                           transient-prob resources ss)))
            (setq last-po-tree* po-tree)
            (let ((allnodes (collect-po-nodes po-tree)))
               `(define (problem ,name)
                   (:domain assembly)
                   (:objects ,@(mapcar #'po-node-name allnodes) - assembly
                             ,@resources - resource)
                   (:init ,@(node-availabilities allnodes)
			  ,@(resource-availabilities resources)
                          ,@(resource-requirements allnodes)
                          ,@(part-relationships allnodes)
                          ,@(partial-order allnodes))
                   (:goal (complete ,(po-node-name po-tree)))))))))

(defun node-availabilities (nodes)
   (mapcan #'(lambda (n)
                (cond ((null (po-node-subs n))
                       (list `(available ,(po-node-name n))))
                      (t '())))
           nodes))

(defun resource-availabilities (resources)
   (mapcar #'(lambda (r)
	        `(available ,r))
           resources))

(defun resource-requirements (nodes)
   (mapcan #'(lambda (n)
                (cond ((po-node-standin n) '())
                      (t
                       (mapcar #'(lambda (r)
                                    `(requires ,(po-node-name n)
                                               ,r))
                               (po-node-resources n)))))
           nodes))
           
(defun part-relationships (nodes)
   (mapcan #'(lambda (n)
                (cond ((po-node-standin n)
                       '())
                      (t
                       (mapcan #'(lambda (sub)
                                    (sub-part-relationships sub n))
                               (po-node-subs n)))))
           nodes))

(defun sub-part-relationships (sub n)
   (cond ((po-node-standin sub)
          (list `(part-of ,(po-node-name
                            (po-node-standin sub))
                          ,(po-node-name n))))
         (t
          (list `(,(cond ((po-node-transient sub)
                          'transient-part)
                         (t
                          'part-of))
                  ,(po-node-name sub)
                  ,(po-node-name n))))))

(defun partial-order (nodes)
   (mapcan #'(lambda (sup)
                (cond ((po-node-standin sup) '())
                      (t
                       (let ((supname (po-node-name sup)))
                          (mapcan #'(lambda (sub)
                                       (part-orders sub supname))
                                  (po-node-subs sup))))))
           nodes))
                 
(defun part-orders (sub supname)
   (let ((rn (make-real sub)))
      (let ((subname (po-node-name rn)))
         (nconc (mapcar #'(lambda (s) 
                            `(assemble-order ,subname
                                             ,(po-node-name (make-real s))
                                             ,supname))
                        (po-node-successors rn))
                (cond ((po-node-transient sub)
                       (list `(remove-order
                                 ,(po-node-name (po-node-transient sub))
                                 ,subname
                                 ,supname)))
                      (t '()))))))

(defun random-resources (maxres ss)
   (let ((num-resources (+ 1 (random maxres)))
         (resl '()))
      (dotimes (i num-resources)
         (push (new-sym 'resource ss)
               resl))
      resl))

(defun random-po-tree (depth size minpart maxpart transient-prob
                       resources ss)
   (let ((top (make-po-node :name (new-sym 'assembly ss))))
      (cond ((not (= size 1))
             (setq size (- size 1))
             (let ((part (random-partition size minpart maxpart)))
                (setq part
                      (cond ((= (length part) 1)
                             (n-copies (car part) 1))
                            (t
                             (mapcan #'(lambda (i)
                                          (cond ((< i minpart)
                                                 (n-copies i 1))
                                                (t (list i))))
                                     part))))
                (cond ((and (> depth 0)
                            (not (null resources))
                            (random-choice 0.95))
                       (let ((res (randelt resources)))
                          (cond ((not res)
                                 (error "null res")))
                          (setf (po-node-resources top) (list res))
                          (setq resources (cdr resources)))))
                (let ((numsubs (length part))
                      (subs '()))
                   ; that's a layer of part hierarchy, now fix p.o. & decide
                   ; transients
                  (dolist (p part)
                     (let ((sub (random-po-tree
                                     (+ depth 1) p minpart maxpart
                                     transient-prob resources ss)))
                        (push sub subs)))
                  (setf (po-node-subs top) subs)
                  (randomly-order subs 0 (- numsubs 1))
                  (install-transients top transient-prob)))))
      top))

(defun install-transients (sup transient-prob)
   (loop
      (cond ((random-choice transient-prob)
             (let ((candidate-feeders
                      (remove-if #'could-not-have-new-transient
                                 (po-node-subs sup))))
                (cond ((null candidate-feeders)
                       ;(format t "no candidate feeders~%")
                       (return)))
                (let ((feeder (randelt candidate-feeders)))
                   (let ((candidate-users
                            (remove-if #'could-not-have-new-transient
                                       (relatively-unordered feeder
                                                             (po-node-subs sup)))))
                      (cond ((null candidate-users)
                             ;(format t "no candidate users~%")
                             (return)))
                      (let ((user (randelt candidate-users)))
                         (cond ((not (setup-transient feeder user))
                                (return))))))))
            (t (return)))))

(defun setup-transient (feeder user)
   (let ((feeder-subs (remove-if #'involved-in-transient
                                 (po-node-subs feeder)))
         (user-subs (remove-if #'involved-in-transient
                               (po-node-subs user)))
         standin dependers depender invis)
      (loop
         (cond ((or (null feeder-subs)
                    (null user-subs))
                ;(format t "no way to set up transient~%")
                (setq standin nil)
                (return)))
         (setq standin (randelt feeder-subs))
         (setq dependers (non-preceders standin feeder-subs))
         (cond ((not (null dependers))
                (setq depender (randelt dependers))
                (return)))
         (setq feeder-subs (remove standin feeder-subs)))
      (cond (standin
             (setq invis (randelt (po-node-subs user)))
             (push depender
                   (po-node-successors standin))
             (push standin
                   (po-node-predecessors depender))
             (setf (po-node-transient standin)
                   depender)
             (setf (po-node-standin invis) standin)
             t)
            (t  nil))))

(defun involved-in-transient (n)
  (or (po-node-transient n)
      (po-node-standin n)))

(defun could-not-have-new-transient (sub)
   (or (< (length (po-node-subs sub)) 2)
       (every #'(lambda (subsub)
                   (or (po-node-standin subsub)
                       (po-node-transient subsub)))
              (po-node-subs sub))))
               
(defun has-no-subs (node)
  (null (po-node-subs node)))

(defun randomly-order (po-nodes min-links max-links)
   (let ((numlinks (+ min-links (random (+ 1 (- max-links min-links))))))
      (dotimes (i numlinks)
         (let ((n (randelt po-nodes)))
            (let ((cands (relatively-unordered n po-nodes)))
               (cond (cands
                      (let ((c (randelt cands)))
                         (push c (po-node-successors n))
                         (push n (po-node-predecessors c))))))))))

(defun collect-po-nodes (node)
   (cond ((po-node-standin node) '())
         (t
          (cons node
                (mapcan #'collect-po-nodes (po-node-subs node))))))

; if a node has non-nil standin pointer, then its name never appears; it's always
; replaced by the name of the real node.
; actually, its entire subgraph is discarded.  it just becomes a placeholder
; c'est la vie.
(defun make-real (n)
   (let ((rn (po-node-standin n)))
      (or rn n)))

(defvar po-node-mark* 0)

(defun non-preceders (node nodes)
   (setq po-node-mark* (+ po-node-mark* 1))
   (setf (po-node-mark node) po-node-mark*)
   (mark-nodes-that-must-precede node po-node-mark*)
   (remove-if #'(lambda (n) (= (po-node-mark n)
                               po-node-mark*))
              nodes))

(defun non-followers (node nodes)
   (setq po-node-mark* (+ po-node-mark* 1))
   (setf (po-node-mark node) po-node-mark*)
   (mark-nodes-that-must-follow node po-node-mark*)
   (remove-if #'(lambda (n) (= (po-node-mark n)
                               po-node-mark*))
              nodes))

(defun relatively-unordered (node nodes)
   (setq po-node-mark* (+ po-node-mark* 1))
   (setf (po-node-mark node) po-node-mark*)
   (mark-nodes-that-must-precede node po-node-mark*)
   (mark-nodes-that-must-follow node po-node-mark*)
   (remove-if #'(lambda (n) (= (po-node-mark n)
                               po-node-mark*))
              nodes))

(defun mark-nodes-that-must-precede (n mark)
   (dolist (p (po-node-predecessors n))
      (setf (po-node-mark p) mark)
      (mark-nodes-that-must-precede p mark)))

(defun mark-nodes-that-must-follow (n mark)
   (dolist (s (po-node-successors n))
      (setf (po-node-mark s) mark)
      (mark-nodes-that-must-follow s mark)))

(defun po-tree-show (tr &optional (ind 0))
   (let ((tab-string (format nil "~~~st" ind)))
      (format t tab-string)
      (cond ((po-node-standin tr)
             (format t "[=~s]~%" (po-node-name (po-node-standin tr))))
            (t
             (format t "~s " (po-node-name tr))
             (cond ((po-node-transient tr)
                    (format t "/ ~s / -- " (po-node-name (po-node-transient tr))))
                   (t 
                    (format t "-- ")))
             (dolist (succ (po-node-successors tr))
                (format t "~s " (po-node-name succ)))
             (format t "~%")
             (dolist (sub (po-node-subs tr))
                (po-tree-show sub (+ ind 2)))))))

(defun find-node (name tr)
   (cond ((eq (po-node-name tr) name)
          (list tr))
         (t
          (let ((n nil))
             (dolist (sub (po-node-subs tr) nil)
                (setq n (find-node name sub))
                (cond (n
                       (return (cons tr n)))))))))

; produce a list of numbers that add up to n, none of them less than minp
; or greater than maxp.  i have no idea what the distribution is
(defun random-partition (n minp maxp)
   (cond ((<= n minp) (list n))
         ((or (> n maxp)
              (random-choice (/ (- n minp) (- (+ maxp 1.0) minp))))
          (let ((p1 (+ minp (min (random (max 1 (floor (* 3 (- n minp))
						       4)))
                                 (- maxp (* 2 minp))))))
             (cons p1 (random-partition (- n p1) minp maxp))))
         (t (list n))))
             
(defun random-subset (l size)
  (cond ((= size 0) '())
        (t
         (let ((x (randelt l)))
            (cons x
                  (random-subset (remove x l :test #'eq :count 1)
                                 (- size 1)))))))

(defun n-copies (n x)
   (cond ((= n 0) '())
         (t (cons x (n-copies (- n 1) x)))))