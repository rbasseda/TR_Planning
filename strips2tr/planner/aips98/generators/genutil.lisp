(in-package "PDDL")

(defvar rightcol* 60)

; Caution: the prob variables are actually s-expressions, not problems

(defun prob-stripsify (prob domname type-table extra-inits)
   (let ((obl (assoc ':objects (cddr prob)))
         (initl (assoc ':init (cddr prob)))
         (domx (assoc ':domain (cddr prob)))
         (goalx (assoc ':goal (cddr prob))))
      (cond ((and obl initl domx goalx)
             `(define (problem ,(intern
                                  (let ((*print-case* ':upcase))
				    (format nil "STRIPS-~a"
					    (cadr (cadr prob))))))
                 (:domain ,domname)
                 (:objects ,@(flush-types (cdr obl)))
                 (:init ,@(types-conv (cdr obl) type-table)
			,@extra-inits
                        ,@(cdr initl))
                 ,goalx))
            (t
             (error "Problem exp in bad form: ~s" prob)))))

(defun flush-types (obl)
   (cond ((null obl) '())
         ((eq (car obl) '-)
          (flush-types (cddr obl)))
         (t
          (cons (car obl) (flush-types (cdr obl))))))

(defun types-conv (obl type-table)
   (labels ((cdr-down (l)
               (cond ((null l) (values '() nil))
                     ((eq (car l) '-)
                      (multiple-value-bind (r ty)
                                           (cdr-down (cddr l))
                                           (declare (ignore ty))
                         (values r (cadr l))))
                     (t
                      (multiple-value-bind (r ty)
                                           (cdr-down (cdr l))
                         (cond ((and ty (not (eq ty 'object)))
				(let ((extras (assoc ty type-table)))
				   (let ((types
					    (cons ty
						  (cond (extras
							 (cdr extras))
							(t '())))))
                                      (values (nconc
					        (mapcar #'(lambda (ty)
							  `(,ty ,(car l)))
							types)
						r)
					      ty))))
                               (t
                                (values r ty))))))))
      (cdr-down obl)))

(declaim (special *print-case*))

; This prints an sexp defining a problem
(defun prob-print (prob srm)
   (cond ((is-problem-definition prob)
          (let ((name (cadadr prob))
                (dom (assoc ':domain (cddr prob)))
                (objs (assoc ':objects (cddr prob)))
                (inits (assoc ':init (cddr prob)))
                (goal (assoc ':goal (cddr prob)))
                (*print-pretty* t)
		(*print-case* ':downcase))
             (cond ((and name dom inits goal)
                    (format srm "~&(define (problem ~s)~
                                 ~%   (:domain ~s)~
                                 ~%   (:objects"
                            name (cadr dom))
                    (cond (objs
			   (objects-print (cdr objs) srm)))
                    (format srm ")~
                                 ~%   (:init ")
                    (props-print (cdr inits) 10 srm)
                    (format srm ")~
                                 ~%   (:goal ")
                    (cond ((eq (caadr goal) 'and)
                           (format srm "(and ")
                           (props-print (cdadr goal) 15 srm)
                           (format srm ")))"))
                          (t
                           (format srm "~s" (cadr goal))
                           (format srm "))"))))
                   (t
                    (error "Problem in bad format ~s " prob)))))
         (t
          (error "Meaningless problem spec ~s" prob))))

(defun objects-print (obs srm)
   (let ((obl obs)
         (num 0)
         (type nil)
         (sym nil)
         (aftertype nil))
      (loop
         (cond ((null obl) (return)))
         (cond ((eq (car obl) '-)
                (setq sym (cadr obl))
                (setq type t)
                (setq obl (cddr obl)))
               (t
                (setq sym (car obl))
                (setq type nil)
                (setq obl (cdr obl))))
         (setq num (+ num (length (symbol-name sym))
                          (cond (type 3) (t 0))))
         (cond ((or aftertype (> num (- rightcol* 12)))
                (format srm "~%~12T")
                (setq num 0)))
         (cond (type
                (format srm " - ~s" sym)
                (setq aftertype t))
               (t
                (format srm " ~s" sym)
                (setq aftertype nil))))))
                
(defun props-print (props col srm)
   (let ((propl props)
         (afterfirst nil)
         (fmt (format nil "~~%~~~sT" col)))
      (loop
         (cond ((null propl) (return)))
         (cond (afterfirst
                (format srm "~@?" fmt)))
         (format srm "~s" (car propl))
         (setq propl (cdr propl))
         (setq afterfirst t))))

; symstates records state of symbol-generation mechanism.
; car is a list of 3 numbers, low current high.
; cdr is a list of symstates

(defstruct (symstate (:type list))
   (categ nil :type symbol)
   (current '() :type list)
   (numbered -1 :type integer)
   (orig '() :type list))

(defun init-symstates (sym-pool)
   (cons (list 0 3 2)
         (mapcar #'(lambda (p)
                      (make-symstate
                         :categ (car p)
                         :orig (cdr p)))
                 sym-pool)))


(defun new-sym (categ symstates)
   (let ((ss (assoc categ (cdr symstates) :test #'eq)))
      (cond (ss
             (cond ((null (symstate-current ss))
                    (setf (symstate-current ss)
                          (list-scramble (symstate-orig ss)))
                    (setf (symstate-numbered ss)
                          (+ (symstate-numbered ss) 1))))
             (let ((new (car (symstate-current ss))))
                (setf (symstate-current ss)
                      (cdr (symstate-current ss)))
                (cond ((> (symstate-numbered ss) 0)
                       (intern (concatenate
                                        'string
                                        (symbol-name new)
                                        "-"
                                        (format nil "~s"
                                                (next-num symstates)))))
                      (t new))))
            (t
             (intern (concatenate
                         'string
                         (symbol-name categ)
                         "-"
                         (format nil "~s" (next-num symstates))))))))


                   
(defun next-num (symstates)
   (let ((low (caar symstates))
         (cur (- (cadar symstates) 1))
         (high (caddar symstates)))
      (cond ((<= cur low)
             (setf (caar symstates)
                   high)
             (setf cur (* 2 high))
             (setf (caddar symstates) cur)))
      (setf (cadar symstates) cur)
      cur))

(defun is-problem-definition (prob)
   (and (consp prob)
        (eq (car prob) 'define)
        (consp (cadr prob))
        (eq (caadr prob) 'problem)))

(defun random-choice (PROB)
   (cond ((<= prob 0.0) nil)
	 ((>= prob 1.0) t)
	 (T
	  (<= (random 1.0) prob))   ))

(defun list-scramble (l)
   (cond ((or (null l) (null (cdr l)))
          l)
         (t
          (labels ((everyother (l)
                      (cond ((null l) '())
                            (t
                             (cons (car l)
                                   (cond ((null (cdr l)) '())
                                         (t (everyother (cddr l))))))))
                   (random-merge (l1 l2)
                      (cond ((null l1) l2)
                            ((null l2) l1)
                            ((= (random 2) 0)
                             (cons (car l1)
                                   (random-merge (cdr l1) l2)))
                            (t
                             (cons (car l2)
                                   (random-merge l1 (cdr l2)))))))
            (random-merge
               (list-scramble (everyother l))
               (list-scramble (everyother (cdr l))))))))

(defun pick-on-criterion (l fcn)
   (let ((vals (mapcar fcn l)))
     (let ((r (* (random 1.0)
                 (apply #'+ vals))))
       (do ((tl l (cdr tl))
            (vl (cdr vals) (cond (vl (cdr vl)) (t '())))
            (acc (car vals)
                 (cond ((null vl) 1.0)
                       (t
                        (+ acc (car vl))))))
           ((< r acc)
            (car tl))))))

(defun test-pick (num range)
   (let ((res (make-array (list (+ range 1)) :initial-element 0))
	 (l '()))
      (do ((r range (- r 1)))
	  ((= r 0))
	(setq l (cons r l)))
      (do ((i 0 (+ i 1)))
	  ((>= i num))
	 (let ((j (pick-on-criterion l
				     #'(lambda (x) x))))
	   (setf (aref res j)
		 (+ (aref res j) 1))))
      res))

(defun randelt (lst)
   (let ((l (length lst)))
      (nth (random l) lst)))

(defun pp (x) 
   (let ((*print-pretty* t)
         (*print-length* nil)
         (*print-level* nil))
      (print x)
      (values)))

(defun nsymbols (str n)
   (cond ((= n 0) '())
         (t
          (cons (intern (format nil "~a~s" str n))
                (nsymbols str (- n 1))))))