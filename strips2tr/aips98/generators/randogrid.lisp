;(in-package "PDDL")

(defstruct (pt (:type list)
	       (:constructor pt (x y)))
   x y)

; Internally assume coords 0,0 to N-1,N-1, where N=gridsize
(defun random-lock-loops (numloops loopsize gridsize)
   (let ((res '()))
      (dotimes (i numloops)
         (push (mapcar #'pt-to-symbol
		       (random-lock-loop loopsize gridsize))
	       res))
      res))

(defun random-lock-loop (loopsize gridsize)
  (let ((lowerleftx (random (- gridsize 1)))
	(lowerlefty (random (- gridsize 1))))
    (let ((ll (list (pt lowerleftx lowerlefty)
		    (pt (+ lowerleftx 1)
			lowerlefty)
		    (pt (+ lowerleftx 1)
			(+ lowerlefty 1))
		    (pt lowerleftx
			(+ lowerlefty 1)))))
      (let ((size (+ 1 (random loopsize))))
	 (do ((i 0 (+ i 1)) (try))
	     ((= i size) ll)
	   (setq try (loop-enlarge ll (- size i) gridsize))
	   (cond ((not try)   ; fills whole grid
		  (return ll)))
	   (setq ll try))))))
							
(defstruct (dir
	      (:print-function
	         (lambda (d srm lev)
		         (declare (ignore lev))
		    (format srm "#<~s>" (dir-name d)))))
  name fcn)

(defvar south* (make-dir :name 'down
			:fcn #'(lambda (p)
				 (pt (pt-x p)
				     (- (pt-y p) 1)))))

(defvar north* (make-dir :name 'up
		      :fcn #'(lambda (p)
			       (pt (pt-x p)
				   (+ (pt-y p) 1)))))

(defvar east* (make-dir :name 'right
			 :fcn #'(lambda (p)
				  (pt (+ (pt-x p) 1)
				      (pt-y p)))))

(defvar west* (make-dir :name 'left
			:fcn #'(lambda (p)
				 (pt (- (pt-x p) 1)
				     (pt-y p)))))

(defun pt-move (p d)
  (let ((mpt (funcall (dir-fcn d) p)))
     (cond ((or (< (pt-x mpt) 0)
		(< (pt-y mpt) 0))
	    (error "Bad point ~s ~s ~s" p d mpt)))
     mpt))

(defun rotate-right (d)
   (cond ((eq d north*) east*)
	 ((eq d west*) north*)
	 ((eq d south*) west*)
	 ((eq d east*) south*)
	 (t nil)))

(defun rotate-left (d)
   (cond ((eq d north*) west*)
	 ((eq d east*) north*)
	 ((eq d south*) east*)
	 ((eq d west*) south*)
	 (t nil)))

(defun loop-enlarge (ll numleft gridsize)
   (multiple-value-bind (dirs concavs legals)
                        (loop-analyze ll gridsize)
      (cond ((null legals)
	     nil)
	    (t
	     (setq concavs (mapcar #'(lambda (c l)
					(and l c))
				   concavs legals))
	     (let ((p (cond ((> (count-ts concavs)
				numleft)
			     (random-shift-to-t concavs))
			    (t
			     (random-shift-to-t legals)))))
		(loop-grow (list-rotate ll p)
			   (list-rotate dirs p)))))))

(defun loop-analyze (ll gridsize)
   (let ((dirs '()))
      (do ((tll (cons (car ll) (reverse ll))
		(cdr tll)))
	  ((null (cdr tll)))
	 (push (seg-dir (cadr tll) (car tll))
	       dirs))
      (let ((pred-dirs (append (last dirs)
			       (butlast dirs)))
	    (succ-dirs (append (cdr dirs)
			       (list (car dirs)))))
         (values dirs
		 (mapcar #'(lambda (d s)
			      (eq (rotate-right d) s))
			 dirs
			 succ-dirs)
		 (mapcar #'(lambda (p d pt)
			      (and (not (eq (rotate-right p) d))
				   (cond ((eq d north*)
					  (< (pt-x pt) (- gridsize 1)))
					 ((eq d south*)
					  (> (pt-x pt) 0))
					 ((eq d west*)
					  (< (pt-y pt) (- gridsize 1)))
					 ((eq d east*)
					  (> (pt-y pt) 0)))))
			 pred-dirs
			 dirs
			 ll)))))

(defun loop-grow (ll dirs)
   (let ((pt1-grow (pt-move (car ll) 
			    (rotate-right (car dirs)))))
      (let ((down1 (member pt1-grow (cdr ll)
			   :test #'equal)))
	 (cond (down1
		(pick-counterclock
		   (cons (car ll) down1)
		   (ldiff ll (cdr down1))))
	       (t
		(let ((pt2-grow (pt-move pt1-grow (car dirs))))
		   (let ((down2 (member pt2-grow (cddr ll)
					:test #'equal)))
		      (cond (down2
			     (pick-counterclock
			        (cons (car ll)
				      (cons pt1-grow down2))
				(append (ldiff ll (cdr down2))
					(list pt1-grow))))
			    ((equal (pt-move pt2-grow
					     (rotate-left (car dirs)))
				    (cadr ll))
			     (cons (car ll)
				   (cons pt1-grow
					 (cons pt2-grow (cdr ll)))))
			    (t
			     (error "Fumbled ~s" ll))))))))))
			     
(defun pick-counterclock (ll1 ll2)
   (let ((cc1 (is-counterclock ll1))
	 (cc2 (is-counterclock ll2)))
      (cond ((and cc1 cc2)
	     (error "Two counterclocks: ~s and ~s" ll1 ll2))
	    ((not (or cc1 cc2))
	     (error "Neither counterclock: ~s and ~s" ll1 ll2))
	    (cc1 ll1)
	    (t ll2))))

(defun is-counterclock (ll)
   (let ((dirs (mapcar #'seg-dir
		       (append ll (list (car ll)))
		       (append (cdr ll) (list (car ll) (cadr ll))))))
      (do ((tdl (cons (car (last dirs))
		      dirs)
		(cdr tdl))
	   (left 0))
	  ((null (cdr tdl))
	   (= left 4))
	 (cond ((eq (rotate-left (car tdl))
		    (cadr tdl))
		(setq left (+ left 1)))
	       ((eq (rotate-right (car tdl))
		    (cadr tdl))
		(setq left (- left 1)))))))

(defun seg-dir (pt1 pt2)
  (let ((x1 (pt-x pt1))
	(y1 (pt-y pt1))
	(x2 (pt-x pt2))
	(y2 (pt-y pt2)))
    (cond ((= y1 y2)
	   (cond ((> x2 x1)
		  east*)
		 ((< x2 x1)
		  west*)
		 (t
		  (error "Impossible seg: ~s - ~s" pt1 pt2))))
	  ((= x1 x2)
	   (cond ((> y2 y1)
		  north*)
		 ((< y2 y1)
		  south*)
		 (t
		  (error "Impossible seg: ~s - ~s" pt1 pt2))))
	  (t
	   (error "Impossible seg: ~s - ~s" pt1 pt2)))))

(defun random-shift-to-t (l)
   (let ()
      (do ((tl l (cdr tl))
	   (i 0 (+ i 1))
	   (k (random (count-ts l))
	      (cond ((car tl) (- k 1))
		    (t k))))
	  ((and (car tl) (= k 0))
	   i))))

(defun count-ts (l)
   (reduce #'(lambda (tot x)
	        (cond (x (+ tot 1))
		      (t tot)))
	   l :initial-value 0))

(defun pt-to-symbol (pt)
   (intern (format nil "NODE~s_~s" (pt-x pt) (pt-y pt))))

(defun list-rotate (l r)
   (append (subseq l r)
	   (subseq l 0 r)))

(defun random-choice (PROB)
   (cond ((<= prob 0.0) nil)
	 ((>= prob 1.0) t)
	 (T
	  (<= (random 1.0) prob))   ))



