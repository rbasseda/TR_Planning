(IN-PACKAGE "PDDL")

(DEFSTRUCT (PROBLEM-REC
              (:PRINT-FUNCTION
                  (LAMBDA (PR SRM LEV)
                          (DECLARE (IGNORE LEV))
                     (FORMAT SRM "#<probrec ~S ~S ~A ~A /~S>"
                                 (PROBLEM-NAME (PROBLEM-REC-PROB PR))
                                 (PROBLEM-REC-PLANNER PR)
                                 (COND ((EQ (PROBLEM-REC-SOLN PR)
                                            'NO-SOLUTION)
                                        '"@")
                                       (T
                                        '"()"))
                                 (COND ((PROBLEM-REC-CORRECT PR)
                                        '"!")
                                       (T
                                        '"?"))
                                 (PROBLEM-REC-ADVICE PR)))))
    PROB PLANNER SOLN TIME CORRECT (ADVICE 0))

(defstruct (planner-rec
	      (:print-function
	          (lambda (pr srm lev)
		          (declare (ignore lev))
		     (format srm "#<planrec ~s>"
			     (planner-rec-name pr)))))
   name
   (score 0.0 :type float)
   (time 0 :type integer)
   (solved 0 :type integer)
   (fastest 0 :type integer)
   (shortest 0 :type integer))

(declaim (special when-to-dump*))

(defun read-domains (doms)
   (let ((when-to-dump* 'never))
      (dolist (dom doms)
	 (let ((r (pddl-file-syncheck dom)))
	    (cond ((not (equal r '(flagged 0 expressions)))
		   (format t "Domain ~a results ~s~%"
			   dom r))
		  (t
		   (format t "Domain ~a okay~%" dom)))))))

; dpl is list ((dir num) (dir num) ...)
; where num is number of prob files in dir.
(defun read-domain-probs (dpl)
   (dolist (dp dpl)
      (read-probs (car dp) (cadr dp))))

(defun read-probs (dir num)
   (let ((when-to-dump* 'never))
      (dotimes (i num)
	 (let ((r 
		(pddl-file-syncheck
		 (concatenate 'string
		              dir 
			      (probfilestring (+ i 1) 2)
			      ".pddl"))))
	    (cond ((not (equal r '(flagged 0 expressions)))
		   (format t "prob ~s result ~s~%" (+ i 1) r)))))))

(declaim (special *print-pretty* *print-length*))

(defun read-and-group-results (probnames result-files known-solvable outsrm)
   (LET ((RAW-RESULTS (READ-RESULTS PROBNAMES RESULT-FILES))
         RESULTS
         (*print-pretty* t)
         (*print-length* nil))
      (SETQ RESULTS
            (MAPCAN #'(LAMBDA (L)
                         (MAPCAR #'(LAMBDA (X)
                                      (CONVERT-TO-PROBLEM-REC X (CAR L)))
                                 (CDR L)))
                    RAW-RESULTS))
      (SETQ RESULTS (COLLECT-PROBS RESULTS))
      (SETQ LAST-RESULTS* RESULTS)
      (LET ((MEANINGFUL-RESULTS '())
	    (IGNORED-RESULTS '())
            (PLANNERS (MAPCAR #'CAR RAW-RESULTS)))
        (DOLIST (PROBRES RESULTS)
          (COND ((CHECK-IF-ANY-SOLVED PROBRES known-solvable)
                 (PUSH PROBRES MEANINGFUL-RESULTS))
	        (T
	         (PUSH (CAR PROBRES) IGNORED-RESULTS))))
        (DOLIST (P PROBNAMES)
	  (COND ((AND (NOT (ASSOC P MEANINGFUL-RESULTS))
		      (NOT (MEMBER P IGNORED-RESULTS)))
	         (PUSH P IGNORED-RESULTS))))
        (LET ((PROBS-PER-DOMAIN (COUNT-PROBS-PER-DOMAIN RESULTS))
              (PLANNER-SCORES (MAPCAR #'(LAMBDA (P)
					  (LIST P
					        (make-planner-rec
					         :name p)))
                                      PLANNERS)))
          (NOTE-OMISSIONS MEANINGFUL-RESULTS IGNORED-RESULTS
			  PROBNAMES PLANNERS OUTSRM)
          (values meaningful-results ignored-results
                  planner-scores probs-per-domain)))))

(DEFUN NOTE-OMISSIONS (MEANINGFUL-RESULTS IGNORED-RESULTS
		       PROBNAMES PLANNERS OUTSRM)
   (LET ((OMITTED
            (MAPCAR #'(LAMBDA (PL)
                         (CONS PL PROBNAMES))
                    PLANNERS)))
      (DOLIST (PRL MEANINGFUL-RESULTS)
         (DOLIST (PR (CDR PRL))
            (LET ((R (ASSOC (PROBLEM-REC-PLANNER PR)
                            OMITTED)))
               (SETF (CDR R)
                     (REMOVE (PROBLEM-NAME (PROBLEM-REC-PROB PR))
                             (CDR R))))))
      (COND ((SOME #'(LAMBDA (M)
                        (NOT (NULL (CDR M))))
                   OMITTED)
             (FORMAT OUTSRM "Not all planners worked on every problem~%")
	     (COND ((NULL IGNORED-RESULTS)
		    (FORMAT OUTSRM "For every problem, some planner worked on it~%"))
		   (T
		    (FORMAT OUTSRM "No planner worked on the following problems:~%    ~S~%"
			    IGNORED-RESULTS)))
             (DOLIST (M OMITTED)
                (COND ((NULL (CDR M))
                       (FORMAT OUTSRM "~s worked on every problem~%"
                               (CAR M)))
                      (T
                       (FORMAT OUTSRM "~S omitted ~s~%"
                               (CAR M) (CDR M))))))
            (T
	     (COND ((NOT (NULL IGNORED-RESULTS))
		    (CERROR "I'll proceed anyway"
			    "Discrepancy concerning ignored problems ~S"
			    IGNORED-RESULTS)))
             (FORMAT OUTSRM "Every planner worked on every problem~%")))
      (FORMAT OUTSRM "~%")))
               
(DEFVAR COUNT-NO-SOLUTIONS* NIL)

(DEFUN CHECK-IF-ANY-SOLVED (PROBRES KNOWN-SOLVABLE)
  (COND ((OR (SOME #'(LAMBDA (PR) (AND (PROBLEM-REC-CORRECT PR)
				       (NOT (EQ (PROBLEM-REC-SOLN PR)
						'NO-SOLUTION))))
		   (CDR PROBRES))
	     (MEMBER (CAR PROBRES) KNOWN-SOLVABLE)
	     (MEMBER (FIND-DOMAIN-NAME
		        (PROBLEM-DOMAIN
                           (GET-GLOBAL-PDDL-SYMBOL (CAR PROBRES))))
		     KNOWN-SOLVABLE))
         ; Zap any that failed to find it
	 (DOLIST (PR (CDR PROBRES))
	    (COND ((EQ (PROBLEM-REC-SOLN PR)
		       'NO-SOLUTION)
		   (FORMAT T "Planner ~S concluded erroneously that there ~
                              was no solution for ~S~%"
			   (PROBLEM-REC-PLANNER PR)
			   (PROBLEM-NAME (PROBLEM-REC-PROB PR)))
		   (SETF (PROBLEM-REC-CORRECT PR)
			 NIL))))))
  (COND ((SOME #'PROBLEM-REC-CORRECT (CDR PROBRES))
	 (COND ((AND (NOT COUNT-NO-SOLUTIONS*)
		     (EVERY #'(LAMBDA (PR)
				 (EQ (PROBLEM-REC-SOLN PR) 'NO-SOLUTION))
			    (CDR PROBRES)))
		NIL)
	       (T T)))
        (T
         (FORMAT T "No correct answer for problem ~s; ignoring ~%"
                 (CAR PROBRES))
         NIL)))

(defvar use-median-times* t)

(DEFUN COLLECT-PROB-TIMES (RESULTS)
;   (format t "Before collect, results = ~s~%" results)
   (let ((r
   (MAPCAR #'(LAMBDA (PR)
                (LIST (CAR PR)
		      (SAFE-LOG
			 (COND (USE-MEDIAN-TIMES*
				(MEDIAN-TIME (CDR PR)))
			       (T
				(/ (REDUCE #'(LAMBDA (TOT PR)
						(+ TOT (PROBLEM-REC-TIME PR)))
					   (CDR PR)
					   :INITIAL-VALUE 0)
				   (LENGTH (CDR PR))))))))
           RESULTS)))
;   (format t "...After collect, results = ~s~%" results)
	 r))

(defun note-worked-on (planner-scores probnames ignored-results numties outsrm)
	  (LET ((WORKED-ON (REDUCE #'(LAMBDA (TOT P)
					(+ TOT (PLANNER-REC-FASTEST (CADR P))))
				   PLANNER-SCORES
				   :INITIAL-VALUE (- numties))))
	     (FORMAT OUTSRM "~% Solved ~D problems" WORKED-ON)
	     (LET ((DISCREP (- (LENGTH PROBNAMES)
			       (+ (LENGTH IGNORED-RESULTS)
				  WORKED-ON))))
	       (COND ((> DISCREP 0)
		      (FORMAT OUTSRM "   ~S PROBLEMS UNACCOUNTED FOR~%"
			      DISCREP))
		     ((< DISCREP 0)
		      (FORMAT OUTSRM "   ~S PROBLEMS TOO MANY~%"
			      (- discrep)))))))

(DEFUN MEDIAN-TIME (PRL)
   (LET ((SPRL (SORT (COPY-LIST PRL)
		     #'(LAMBDA (PR1 PR2) (< (PROBLEM-REC-TIME PR1)
                                                (PROBLEM-REC-TIME PR2))))))
      (PROBLEM-REC-TIME
          (ELT SPRL (FLOOR (LENGTH SPRL) 2)))))
                     
(defun find-planner-rec (pl planner-scores)
    (LET ((P (ASSOC pl PLANNER-SCORES)))
	 (COND ((NOT P)
		(ERROR "Fumbled ~S in ~S" pl PLANNER-SCORES)))
	 (cadr p)))

; X is a list (name soln time).  Convert to problem rec.
(DEFUN CONVERT-TO-PROBLEM-REC (X PLANNER)
   (MAKE-PROBLEM-REC
       :PROB (GET-GLOBAL-PDDL-SYMBOL (CAR X))
       :PLANNER PLANNER
       :SOLN (CADR X)
       :TIME (CADDR X)
       :CORRECT
          (OR (EQ (CADR X) 'NO-SOLUTION)
              (VERBOSE-SOLUTION-CHECK (CADR X) (CAR X) PLANNER))))

(DEFUN VERBOSE-SOLUTION-CHECK (CAND PROBNAME PLANNER)
   (FORMAT T "Checking ~S on ~S~%"
           PLANNER PROBNAME)
   (LET ((A (SOLUTION-CHECK CAND '() PROBNAME)))
      (COND (A
             (FORMAT T "Solution is good~%"))
	    (T
	     (FORMAT T "Solution is bad~%")))
      A))

; Group records into alist ((prob1 -recs1-) (prob2 -recs2-) ...)
; The keys are prob names
(DEFUN COLLECT-PROBS (PRL)
   (LET ((RESULT '()))
      (DOLIST (PR PRL)
         (LET ((PROBNAME (PROBLEM-NAME (PROBLEM-REC-PROB PR))))
            (LET ((P (ASSOC PROBNAME RESULT)))
               (COND ((NOT P)
                      (SETQ P (LIST PROBNAME))
                      (PUSH P RESULT)))
               (PUSH PR (CDR P)))))
      RESULT))

(DEFUN COUNT-PROBS-PER-DOMAIN (RESULTS)
   (LET ((COUNT-TAB '()))
      (DOLIST (PX RESULTS)
         (DOLIST (X (CDR PX))
            (LET ((DOMNAME (FIND-DOMAIN-NAME
                              (PROBLEM-DOMAIN (PROBLEM-REC-PROB X)))))
               (LET ((P (ASSOC DOMNAME COUNT-TAB)))
                  (COND ((NOT P)
                         (SETQ P (LIST DOMNAME))
                         (PUSH P COUNT-TAB)))
                  (SETF (CDR P) (ADJOIN (PROBLEM-REC-PROB X)
                                        (CDR P)))))))
      (MAPCAR #'(LAMBDA (P)
                   (LIST (CAR P) (LENGTH (CDR P))))
              COUNT-TAB)))

(DEFUN READ-RESULTS (PROBNAMES FILES)
   (LET ((RESULTS '()))
      (DOLIST (FILE FILES)
         (WITH-OPEN-FILE (INSRM FILE :DIRECTION ':INPUT)
            (LET ((PLANNER-NAME (READ INSRM NIL NIL))
                  NAME 
                  (THIS-PLANNER-RES '()))
              (COND ((NOT PLANNER-NAME)
                     (FORMAT T "Can't read planner name in ~S; ignoring~%"
                             FILE))
                    (T
                     (BLOCK READ-A-FILE
                        (LOOP
                           (SETQ NAME (READ INSRM NIL NIL))
                           
                           (COND ((NOT NAME)
                                  (RETURN-FROM READ-A-FILE)))
                           (LET ((P (MEMBER NAME PROBNAMES)))
                             (COND (P
                                    (MULTIPLE-VALUE-BIND (SOLN TIME)
                                                         (READ-SOLN-AND-TIME
                                                           NAME INSRM FILE)
                                       (COND ((NOT TIME)
                                              (FORMAT T "File ~S ends prematurely~%")
                                              (RETURN-FROM READ-A-FILE))
                                             (T
                                              (PUSH (LIST NAME SOLN TIME)
                                                    THIS-PLANNER-RES)))))
                                   (T
                                    (FORMAT T "File ~S: Nonproblem name ~S~%"
                                              FILE NAME)
                                    (MULTIPLE-VALUE-BIND (SOLN TIME)
                                                         (READ-SOLN-AND-TIME
                                                            NAME INSRM FILE)
                                                         (DECLARE (IGNORE SOLN))
                                       (COND ((NOT TIME)
                                              (RETURN-FROM READ-A-FILE)))))))))
                     (PUSH (CONS PLANNER-NAME THIS-PLANNER-RES)
                           RESULTS))))))
      RESULTS))

(DEFUN READ-SOLN-AND-TIME (NAME INSRM FILE)
   (LET ((CH (PEEK-CHAR T INSRM NIL NIL)))
     (COND ((NULL CH)
            (FORMAT T
                    "File ~S ends prematurely during ~S~%"
                    FILE NAME)
            (VALUES NIL NIL))
           (T
            (LET (SOLN TIME)
              (COND ((EQL CH #\( )
                     (SETQ SOLN (READ INSRM NIL NIL)))
                    (T
                     (READ-LINE INSRM NIL NIL)
                     (SETQ SOLN 'NO-SOLUTION)))
              (SETQ TIME (READ INSRM NIL NIL))
              (COND ((NOT (INTEGERP TIME))
                     (FORMAT T
                             "File ~S, prob ~S has noninteger time [~S]~%"
                             FILE NAME TIME)
                     (VALUES SOLN NIL))
                    (T
                     (VALUES SOLN TIME))))))))

(DEFUN READ-ADVICE (FILES)
   (LET ((ADVICES '()))
      (DOLIST (FILE FILES)
         (WITH-OPEN-FILE (INSRM FILE :DIRECTION ':INPUT)
            (LET ((PLANNER-NAME (READ INSRM NIL NIL))
                  NAME A
                  (THIS-PLANNER-ADVICE '())
                  DOMNAME DOMAIN-ADVICE
                  (DOMAIN-PROBS-ADVICE '()))

               (COND ((NOT PLANNER-NAME)
                      (FORMAT T "Can't read planner name in ~S; ignoring~%"
                              FILE))
                     (T
                      ; Rest of file is list of alternating names & integers
                      (LOOP
                         (SETQ NAME (READ INSRM NIL NIL))
                         (COND ((NOT NAME)
                                (RETURN)))
                         (SETQ A (READ INSRM NIL NIL))
                         (COND ((AND (SYMBOLP NAME) (INTEGERP A))
                                (LET ((X (GET-GLOBAL-PDDL-SYMBOL NAME)))
                                   (COND ((DOMAIN-P X)
                                          (COND (DOMNAME
                                                 (PUSH (CONS DOMNAME
                                                             (CONS DOMAIN-ADVICE
                                                                   DOMAIN-PROBS-ADVICE))
                                                       THIS-PLANNER-ADVICE)))
                                          (SETQ DOMNAME NAME)
                                          (SETQ DOMAIN-ADVICE A))
                                         ((PROBLEM-P X)
                                          (PUSH (LIST NAME A)
                                                DOMAIN-PROBS-ADVICE))
                                         (T
                                          (FORMAT T "File ~S: Meaningless symbol ~S~%"
                                                    FILE NAME)))))
                               (T
                                (FORMAT T "File ~S: Gibberish ~s ~s~%"
                                        FILE NAME A))))
                      (COND (DOMNAME
                             (PUSH (CONS DOMNAME
                                         (CONS DOMAIN-ADVICE
                                               DOMAIN-PROBS-ADVICE))
                                   THIS-PLANNER-ADVICE)))
                      (PUSH (CONS PLANNER-NAME
                                  THIS-PLANNER-ADVICE)
                            ADVICES))))))
      ADVICES))

(DEFUN CALC-ADVICE (PR ADVICES PROBS-PER-DOMAIN)
   (LET ((P (ASSOC (PROBLEM-REC-PLANNER PR)
                   ADVICES)))
      (COND ((NOT P) 0.0)
            (T
             (LET ((DOMNAME (FIND-DOMAIN-NAME
                                  (PROBLEM-DOMAIN (PROBLEM-REC-PROB PR)))))
                (LET ((DP (ASSOC DOMNAME (CDR P))))
                   (COND ((NOT DP) 0.0)
                         (T
                          (LET ((PP (ASSOC (PROBLEM-NAME (PROBLEM-REC-PROB PR))
                                           (CDDR DP))))
                             (+ (COND ((NOT PP)
                                       0.0)
                                      (T (CADR PP)))
                                (/ (FLOAT (CADR DP))
                                   (CADR (ASSOC DOMNAME PROBS-PER-DOMAIN)))))))))))))

; Rank two planners for same problem.  Returns T if PR1 is better than PR2.
(DEFUN OFFICIAL-RANKING-ALGORITHM (PR1 PR2)
   (LET ((CORRECT1 (PROBLEM-REC-CORRECT PR1))
         (CORRECT2 (PROBLEM-REC-CORRECT PR2)))
      (COND ((EQ (NOT CORRECT1) (NOT CORRECT2))
             (COND ((= (PROBLEM-REC-ADVICE PR1) (PROBLEM-REC-ADVICE PR2))
                    (COND (CORRECT1
                           (< (ADJUSTED-TIME PR1)
                              (ADJUSTED-TIME PR2)))
                          (T
                           (< (PROBLEM-REC-TIME PR1) (PROBLEM-REC-TIME PR2)))))
                   (T
                    (< (PROBLEM-REC-ADVICE PR1) (PROBLEM-REC-ADVICE PR2)))))
            (T
             CORRECT1))))

(DEFVAR TIME-EXP* 0.5)

(DEFUN ADJUSTED-TIME (PR)
   (COND ((EQ (PROBLEM-REC-SOLN PR) 'NO-SOLUTION)
	  (PROBLEM-REC-TIME PR))
	 (T
	  (* (PROBLEM-REC-TIME PR)
	     (EXPT (MAX 1 (LENGTH (PROBLEM-REC-SOLN PR)))
		   TIME-EXP*)))))

(DEFUN FIND-DOMAIN-NAME (DOM)
   (COND ((SYMBOLP (DOMAIN-NAME DOM))
          (DOMAIN-NAME DOM))
         ((NOT (NULL (DOMAIN-PARENTS DOM)))
          (FIND-DOMAIN-NAME (CAR (DOMAIN-PARENTS DOM))))
         (T
          (ERROR "Can't find name of domain ~s" DOM))))

(DEFUN SAFE-LOG (X)
   (COND ((= X 0) 1)
	 (T (LOG X 10))))

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


(defun probnames (pref pl)
   (mapcan #'(lambda (p)
	        (mapcar #'(lambda (i)
			    (intern (format nil "~A~S-~S"
                                       pref
				       (caddr p)
				       i)))
			(series (cadr p))))
	   pl))

(defun string-concat (&rest sl)
   (apply 'concatenate 'string sl))

(DEFUN ADD-CADRS (L)
   (DO ((TL L (CDR TL))
	(SUM 0 (+ SUM (CADAR TL))))
       ((NULL TL) SUM)))

