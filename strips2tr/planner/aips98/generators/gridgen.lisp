(in-package "PDDL")

(defvar *shapes* '(triangle diamond square circle))
(defvar *r_lock* 10)

(defun gen-grid-probs 
    (probs scale_min scale_max &optional (filename "grid.pddl"))
  (with-open-file (ofile filename :direction :output 
		   :if-exists :rename-and-delete
		   :if-does-not-exist :create)
    (dotimes (i scale_max)
      (let ((n (+ i scale_min)))
	(dotimes (p probs)
	  (gen-grid p n (- (floor (sqrt n)) 1)
		    *r_lock* n (1+ (random n)) ofile))))))
  
;;; p - problem number for name of the problem
;;; n - size of grid
;;; nl - number of lock loops
;;; lp - locking probability 0-100
;;; keys - number of keys 
;;; g-keys - number of keys to be moved 
;;; 0 <= g-keys <= keys + (length *shapes*)

(defun gen-grid (p n nl lp keys g-keys ofile)
  (let (shapes)
    (setf *print-case* :downcase)

    (format ofile "~%(define (problem grid~A_~A)" p n)
    (format ofile "~% (:domain grid)")
    (format ofile "~% (:objects")
    (dotimes (i n)
      (dotimes (j n)
	(format ofile " node~A-~A" i j)))
    (dolist (s *shapes*)
      (format ofile " ~S" s))
    (dotimes (i (+ keys (length *shapes*)))
	(format ofile " key~A" i))
    (format ofile ")~%")

    (format ofile "~% (:init ")

    (format ofile "~%   (arm-empty)")

    (dotimes (i n)
      (dotimes (j n)
	(format ofile "~%   (place node~A-~A)" i j)))

    (format ofile "~%")
    
    (dolist (s *shapes*)
      (format ofile "~%   (shape ~S)" s))

    (format ofile "~%")
    
    (dotimes (i n)
      (dotimes (j n)
	(if (< (1+ i) n)
	    (format ofile "~%   (conn node~A-~A node~A-~A)" i j (1+ i) j))
	(if (>= (1- i) 0)
	    (format ofile "~%   (conn node~A-~A node~A-~A)" i j (1- i) j))
	(if (< (1+ j) n)
	    (format ofile "~%   (conn node~A-~A node~A-~A)" i j i (1+ j)))
	(if (>= (1- j) 0)
	    (format ofile "~%   (conn node~A-~A node~A-~A)" i j i (1- j)))))

    (format ofile "~%")

    (let* ((loops (random-lock-loops nl (ceiling n 2) n))
	   (locks (remove-duplicates 
		   (mapcan #'copy-list loops))))
      (dolist (loop loops)
	(let ((shape (nth (random (length *shapes*)) *shapes*)))
	  (dolist (node loop)
	    (format ofile "~%   (locked ~S)" node)
	    (format ofile "~%   (lock-shape ~S ~S)" node shape))))
      
      (dotimes (i n)
	(dotimes (j n)
	  (unless (member (pt-to-symbol (list i j)) locks)
	    (let ((r (random 100)))	      
	      (cond
	       ((< r lp)
		(format ofile "~%   (locked node~A-~A)" i j)
		(format ofile "~%   (lock-shape node~A-~A ~S)" 
			i j (nth (random (length *shapes*)) *shapes*)))
	       (t
		(format ofile "~%   (open node~A-~A)" i j))))))))

    (setf shapes (shuffle *shapes*))
    (let ((i 0))
      (dolist (s shapes)
	(format ofile "~%   (key key~A)" i)
	(format ofile "~%   (key-shape key~A ~S)" i s)
	(format ofile "~%   (at key~A node~A-~A)" i (random n) (random n))
	(incf i)))
    
    (format ofile "~%")
    
    (dotimes (i keys)
      (let ((k (+ i (length *shapes*))))
	(format ofile "~%   (key key~A)" k)
	(format ofile "~%   (key-shape key~A ~S)" 
		k (nth (random (length *shapes*)) *shapes*))
	(format ofile "~%   (at key~A node~A-~A)" k (random n) (random n))))

    (format ofile "~%   (at-robot node~A-~A)" (random n) (random n))

    (format ofile ")")
    
    (format ofile "~%")
    
    (format ofile "~% (:goal (and")

    (let ((keys-used nil)
	  (total-keys (+ keys (length *shapes*))))
      (dotimes (i g-keys)
	(let ((k (random total-keys)))
	  (unless (member k keys-used)
	    (format ofile "~%   (at key~A node~A-~A)" k (random n) (random n))
	    (push k keys-used)))))
    
    (format ofile ")))~% ~%")))

(defun shuffle (l)
  (let ((res l))
    (dotimes (i (length l))
      (let ((nelt (random (length l))))
	(setf res (cons (nth nelt res)
			(remove (nth nelt res) res)))))
    res))



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
   (intern (format nil "NODE~s-~s" (pt-x pt) (pt-y pt))))

(defun list-rotate (l r)
   (append (subseq l r)
	   (subseq l 0 r)))
