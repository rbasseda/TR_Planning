(in-package "PDDL")

(declaim (special *print-case*))

(defun all-gen ()
   (format t "Movie ...")
   (movie-probgen "M:/prog/pddl/generators/movie-probs.pddl"
                  "MOVIE-X" 0 30 5 1)
   (format t "~%Gripper...")
   (gripper-probgen "M:/prog/pddl/generators/gripper-probs.pddl"
                    "GRIPPER-X" 0 20 2 1)
   (format t "~%Logistics...")
   (logistics-probgen "M:/prog/pddl/generators/logistics-probs.pddl"
                      "LOG-X" 0 30 8 2)
   (format t "~%Mystery...")
   (mystery-probgen "M:/prog/pddl/generators/mystery-probs.pddl"
                    "MYSTY-X" 0 30 10 0.5)
   (format t "~%Assembly...")
   (assembly-probgen "M:/prog/pddl/generators/assembly-probs.pddl"
                     "ASSEM-X" 0 30 20 2))

(defun movie-probgen (filename name-pref name-zero num size inc)
   (probgen filename name-pref name-zero num size inc
      #'(lambda (name size)
           (setq size (ceiling size))
           `(define (problem ,name)
               (:domain movie-dom)
               (:objects ,@(nsymbols "C" size) - chips
                         ,@(nsymbols "D" size) - dip
                         ,@(nsymbols "P" size) - pop
                         ,@(nsymbols "Z" size) - cheese
                         ,@(nsymbols "K" size) - crackers)
               (:init
; (not (movie-rewound)) 
;                      (not (counter-at-two-hours)) (not (counter-at-zero))
		)
               (:goal (and (movie-rewound) (counter-at-zero)
                           (have-chips) (have-dip) (have-pop) 
                           (have-cheese) (have-crackers)))))))


(defun gripper-probgen (filename name-pref name-zero num size inc)
   (probgen filename name-pref name-zero num size inc
      #'(lambda (name size)
           (setq size (* 2 (ceiling size)))
           ; odd-numbered sizes are not interesting (?)
           (let ((balls (nsymbols "BALL" size)))
              `(define (problem ,name)
                  (:domain gripper-typed)
                  (:objects roomA roomB - room
                            ,@balls - ball)
                  (:init (at-robby roomA)
                         (free left)
                         (free right)
                         ,@(mapcar #'(lambda (b)
                                        `(at ,b roomA))
                                   balls))
                  (:goal (and ,@(mapcar #'(lambda (b)
                                             `(at ,b roomB))
                                        balls))))))))

(defun logistics-probgen (filename name-pref name-zero num size inc)
   (probgen filename name-pref name-zero num size inc
      #'(lambda (name size)
           (setq size (ceiling size))
           (logistics-prob name
                           (+ 3 (random size))
                           (+ 3 (random size))
                           (+ 1 (random (ceiling size 3)))
                           (+ 1 (random (* 2 size)))   ; trucks
                           (+ 2 (random (ceiling size 4)))
                           (+ 3 (random size))))))

(defun mystery-probgen (filename name-pref name-zero num size inc)
   (probgen filename name-pref name-zero num size inc
      #'(lambda (name size)
              (random-mystery-prob
                           :name name
                           :size (floor size)
                           :edgeprob (+ 0.3 (random 0.3))
                           :fuelprob (+ 0.9 (random 0.1))
                           :fuelamt
                               (+ 3 (random (floor (* 3 (log (/ (- size 1) 2))))))
                           :neighfac (+ 0.3 (random 0.6))
                           :vehprob (+ 0.1 (random 0.6))
                           :cargoprob (+ (max 0.1 (- 1.0 (* 0.1 size)))
                                         (random 1.0))
                           :cargonum (+ 1 (random 5))
                           :numgoals (max 1 (random (floor size 3)))
                           :clumpprob (+ 0.2 (random 0.8))))))

(defun assembly-probgen (filename name-pref name-zero num size inc)
   (probgen filename name-pref name-zero num size inc
      #'(lambda (name size)
              (random-assembly-prob
                           name
                           (floor size)
                           (ceiling (log size 4))
                           0.8))))

; size and inc may be floats.  generator must anticipate that possibility.
(defun probgen (filename name-pref name-zero num size inc
                generator)
   (let ((out-file (pathname filename))
         (*print-case* ':downcase))
     (with-open-file (outsrm out-file
                             :direction ':output
                             :if-does-not-exist ':create
                             :if-exists ':supersede)
        (dotimes (k num)
           (format t (cond (random-graph-dbg* "~% ** ~s ** ~%")
                           (t "~s "))
                     (+ k 1))
           (prob-print
              (funcall generator (prob-sym name-pref (+ name-zero k 1))
                                 size)
              outsrm)
           (format outsrm "~%~%")
           (setq size (+ size inc))))))

(defun prob-file-stripsify (infile outfile domname type-table extra-inits)
   (with-open-file (insrm infile
                          :direction ':input)
      (with-open-file (outsrm outfile
                              :direction ':output)
         (let ((r nil))
            (loop
               (setq r (read insrm nil nil))
               (cond ((not r) (return))
                     ((is-problem-definition r)
                      (setq r (prob-stripsify r domname type-table extra-inits))
                      (prob-print r outsrm)
                      (format outsrm "~%~%"))))))))

(defun prob-file-split (filename target num &optional (probfile-digits 2))
   (setq target (pathname target))
   (let ((fk num) (r nil))
      ;(format t "Format string: ~s" prob-fmt-string)
      (with-open-file (insrm filename
                             :direction ':input)
         (loop 
            (setq r (read insrm nil nil))
            (cond ((not r)
                   (return))
                  ((is-problem-definition r)
                   (setq fk (+ fk 1))
                   (let ((outname (make-pathname
                                              :name (probfilestring
						       fk probfile-digits)
                                              :type "pddl"
                                              :defaults target)))
                      (format t "~s~%" outname)
                      (with-open-file (outsrm outname
                                           :direction ':output
                                           :if-does-not-exist ':create
                                           :if-exists ':supersede)
                             (prob-print r outsrm)))))))))

(defun prob-sym (pref i)
   (intern (format nil "~a-~s" pref i)))

; bug in allegro's format handler
(defun probfilestring (fk probfile-digits)
   #-:allegro
     (let ((prob-fmt-string (format nil "prob~~~s,0D" probfile-digits)))
        (format nil prob-fmt-string fk))
   #+:allegro
     (let ((zeroes "0000"))
        (concatenate 'string
	            "prob"
		    (subseq zeroes 0 
			    (cond ((< fk 10)
				   (- probfile-digits 1))
				  ((< fk 100)
				   (- probfile-digits 2))
				  (t
				   (- probfile-digits 3))))
		    (format nil "~D" fk))))
