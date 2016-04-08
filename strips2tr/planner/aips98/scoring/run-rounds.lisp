(in-package "PDDL")

(defvar aipscomp-directory*
        "C:/WINNT/Profiles/mcdermott/research/aipscomp98/aipscomp98/")

(defvar domain-subdirectory*
        "domains/")

(defvar round1-subdirectory*
        "round1/")

(defvar results1-subdirectory*
        "round1/results/")

(defvar round1-domains*
        '("assembly-adl.pddl"
	  "gripper-adl.pddl"
	  "gripper-strips.pddl"
	  "logistics-adl.pddl"
	  "logistics-strips.pddl"
	  "movie-adl.pddl"
	  "movie-strips.pddl"
	  "mprime-adl.pddl"
	  "mprime-strips.pddl"
	  "mystery-adl.pddl"
	  "mystery-strips.pddl"))

(defvar round1-adl-probs*
    '(("assembly/" 30 assem-x)
      ("gripper/adl/" 20 gripper-x)
      ("logistics/adl/" 30 log-x)
      ("movie/adl/" 30 movie-x)
      ("mprime/adl/" 30 mprime-x)
      ("mystery/adl/" 30 mysty-x))
    )

(defvar round1-strips-probs*
    '(("gripper/strips/" 20 gripper-x)
      ("logistics/strips/" 30 log-x)
      ("movie/strips/" 30 movie-x)
      ("mprime/strips/" 30 mprime-x)
      ("mystery/strips/" 30 mysty-x)))

(defvar round1-adl-result-files*
        '("ipp-adl.round1" "sgp-adl.round1"))

(defvar round1-strips-result-files*
        '("blackbox-strips.round1"
	  "hsp-strips.round1"
	  "ipp-strips.round1"
	  "stan-strips.round1"))

(defvar round1-known-solvable* 
        '(logistics-adl movie-dom gripper-typed assembly
          logistics-strips movie-strips gripper-strips))

(defvar round2-subdirectory*
        "round2/")

(defvar results2-subdirectory*
        "round2/results/")

(defvar round2-domains*
        '("grid-strips.pddl"
	  "logistics-strips.pddl"
	  "mprime-strips.pddl"))

(defvar round2-probs*
    '(("grid/" 5 grid-y)
      ("logistics/" 5 log-y)
      ("mprime/" 5 mprime-y)))

(defvar round2-result-files*
        '("blackbox-strips.round2"
	  "hsp-strips.round2"
	  "ipp-strips.round2"
	  "stan-strips.round2"))

(defvar corrected-round2-result-files*
        '("blackbox-strips.round2"
	  "hsp-strips.round2"
	  "ipp-strips-corrected.round2"
	  "stan-strips.round2"))

(defun init-round1 ()
   (format t "Loading all domains~%")
   (read-domains
      (mapcar #'(lambda (d)
		   (string-concat aipscomp-directory*
				  domain-subdirectory*
				  d))
	      round1-domains*))
   (format t "~%Defining all problems~%~%")
   (read-domain-probs
      (mapcar #'(lambda (p)
		   (list (string-concat aipscomp-directory*
					round1-subdirectory*
					(car p))
			 (cadr p)))
	      (append round1-adl-probs* round1-strips-probs*))))

(defun run-adl-round1 (outputfile)
   (round1-score (probnames "" round1-adl-probs*)
		 (mapcar #'(lambda (fn)
			     (string-concat aipscomp-directory*
					    results1-subdirectory*
					    fn))
			 round1-adl-result-files*)
		 '()
		 outputfile))

(defun run-strips-round1 (outputfile)
   (round1-score (probnames "STRIPS-" round1-strips-probs*)
		 (mapcar #'(lambda (fn)
			     (string-concat aipscomp-directory*
					    results1-subdirectory*
					    fn))
			 round1-strips-result-files*)
		 '()
		 outputfile))

(defun init-round2 ()
   (format t "Loading all domains~%")
   (read-domains
      (mapcar #'(lambda (d)
		   (string-concat aipscomp-directory*
				  domain-subdirectory*
				  d))
	      round2-domains*))
   (format t "~%Defining all problems~%~%")
   (read-domain-probs
      (mapcar #'(lambda (p)
		   (list (string-concat aipscomp-directory*
					round2-subdirectory*
					(car p))
			 (cadr p)))
	      round2-probs*)))

(defun run-round2 (outputfile)
   (round2-score (probnames "STRIPS-" round2-probs*)
		 (mapcar #'(lambda (fn)
			     (string-concat aipscomp-directory*
					    results2-subdirectory*
					    fn))
			 round2-result-files*)
		 '()
		 outputfile))

(DEFVAR ROUND2-KNOWN-SOLVABLE* '(LOGISTICS-STRIPS))

(defun run-uniform-adl-round1 (score-file)
   (run-uniform "" round1-adl-probs* results1-subdirectory*
              round1-adl-result-files* round1-known-solvable* score-file))

(defun run-uniform-strips-round1 (score-file)
   (run-uniform "STRIPS-" round1-strips-probs* results1-subdirectory*
              round1-strips-result-files* round1-known-solvable* score-file))

(defun run-uniform-round2 (score-file)
   (run-uniform "STRIPS-" round2-probs* results2-subdirectory*
              corrected-round2-result-files* round2-known-solvable* score-file))

(DECLAIM (SPECIAL *PRINT-LENGTH* *PRINT-PRETTY*))

(DEFUN ROUND1-SCORE (PROBNAMES RESULT-FILES ADVICE-FILES SCORE-FILE)
  (WITH-OPEN-FILE (OUTSRM SCORE-FILE
                          :DIRECTION ':OUTPUT
                          :IF-EXISTS ':SUPERSEDE)
     (multiple-value-bind (meaningful-results ignored-results
                           planner-scores probs-per-domain)
                          (read-and-group-results probnames result-files
                                                  round1-known-solvable* outsrm)
        (LET ((ADVICES (READ-ADVICE ADVICE-FILES))
              (probnum 0)
              (PROB-TIMES (COLLECT-PROB-TIMES MEANINGFUL-RESULTS)))
;advices is list ((plnr (dom a numprobs (p1 a) (p2 a)) (dom' a' ...))
;                 (plnr' ...)
;                 ...)
           (let ((TOTAL-TIME (FLOAT (ADD-CADRS PROB-TIMES))))
             (DOLIST (PROB PROBNAMES)
               (LET ((PROBRES (ASSOC PROB MEANINGFUL-RESULTS)))
                 (COND (PROBRES
		        (SETQ PROBNUM (+ PROBNUM 1))
                        (LET ((TOT-PROB-TIME (CADR (ASSOC PROB PROB-TIMES))))
                          (DOLIST (PR (CDR PROBRES))
                            (SETF (PROBLEM-REC-ADVICE PR)
                                  (CALC-ADVICE PR ADVICES PROBS-PER-DOMAIN)))
                          (ROUND1-DISPLAY-AND-PRINT-SCORES
                                        PROBNUM PROBRES
                                        (/ TOT-PROB-TIME TOTAL-TIME)
                                        PLANNER-SCORES OUTSRM)))))))
          (SETQ PLANNER-SCORES
                (SORT PLANNER-SCORES
                      #'(LAMBDA (P1 P2)
			   (> (PLANNER-REC-SCORE (CADR P1))
			      (PLANNER-REC-SCORE (CADR P2))))))
          (FORMAT OUTSRM "~%~%TOTAL SCORES: ~%~%")
	  (FORMAT OUTSRM "Planner ~20TScore~30TProblems Solved~45TWon~%~%")
          (DOLIST (PS PLANNER-SCORES)
	     (LET ((PR (CADR PS)))
                (FORMAT OUTSRM "~3T~S~18T~7,2F~40T~3D~45T~3D~%"
			       (PLANNER-REC-NAME PR)
			       (PLANNER-REC-SCORE PR)
			       (PLANNER-REC-SOLVED PR)
			       (PLANNER-REC-FASTEST PR))))
          (note-worked-on planner-scores probnames ignored-results 0 outsrm)))))

(DEFUN ROUND1-DISPLAY-AND-PRINT-SCORES
                      (PROBNUM PROBRES WEIGHT PLANNER-SCORES OUTSRM)
  (LET ((SORTED-RESULTS-FOR-PROB
           (SORT (CDR PROBRES) #'OFFICIAL-RANKING-ALGORITHM))
        (NUM-CONTESTANTS (LENGTH PLANNER-SCORES)))
     (FORMAT OUTSRM "~S ~4T~S Weight ~,5F~%~
                     ~3TRank~8TPlanner~25TCorr~30TAdv~38TTime~44TLength~52TScore~%"
             PROBNUM (CAR PROBRES) WEIGHT)
     (DO ((RANK 0 (+ RANK 1))
          (PRL SORTED-RESULTS-FOR-PROB (CDR PRL)))
         ((NULL PRL))
        (LET ((SCORE (COND ((PROBLEM-REC-CORRECT (CAR PRL))
                            (* 100.0 WEIGHT (- NUM-CONTESTANTS RANK)))
                           (T 0.0)))
              (plr (FIND-PLANNER-REC (PROBLEM-REC-PLANNER (CAR PRL))
				     PLANNER-SCORES)))
           (SETF (PLANNER-REC-SCORE plr)
		 (+ (PLANNER-REC-SCORE plr) SCORE))
	   (COND ((PROBLEM-REC-CORRECT (CAR PRL))
		  (SETF (PLANNER-REC-SOLVED plr)
			(+ (PLANNER-REC-SOLVED plr)
			   1))))
           (FORMAT OUTSRM
                   "   ~3T~S~8T~S~25T~A~30T~3D~35T~7D~44T~4D~50T~8,2F~%"
                   RANK (planner-rec-name plr)
                   (COND ((PROBLEM-REC-CORRECT (CAR PRL))
                          "*")
                         (T "_"))
                   (PROBLEM-REC-ADVICE (CAR PRL))
                   (PROBLEM-REC-TIME (CAR PRL))
                   (COND ((EQ (PROBLEM-REC-SOLN (CAR PRL))
                              'NO-SOLUTION)
                          -1)
                         (T
                          (LENGTH (PROBLEM-REC-SOLN (CAR PRL)))))
                   SCORE)))
     (LET ((BEST (PROBLEM-REC-PLANNER (CAR SORTED-RESULTS-FOR-PROB))))
	(LET ((plr (FIND-PLANNER-REC BEST PLANNER-SCORES)))
	   (SETF (PLANNER-REC-FASTEST plr)
		 (+ (PLANNER-REC-FASTEST plr)
		    1))))
     (FORMAT OUTSRM "~%")))

(defun round2-score (PROBNAMES RESULT-FILES ADVICE-FILES SCORE-FILE)
  (WITH-OPEN-FILE (OUTSRM SCORE-FILE
                          :DIRECTION ':OUTPUT
                          :IF-EXISTS ':SUPERSEDE)
     (multiple-value-bind (meaningful-results ignored-results
                           planner-scores probs-per-domain)
                          (read-and-group-results probnames result-files
                                                  round2-known-solvable* outsrm)
        (let ((advices (READ-ADVICE ADVICE-FILES))
              (probnum 0))
          (DOLIST (PROB PROBNAMES)
            (LET ((PROBRES (ASSOC PROB MEANINGFUL-RESULTS)))
               (COND (PROBRES
		      (SETQ PROBNUM (+ PROBNUM 1))
		      (DOLIST (PR (CDR PROBRES))
                          (SETF (PROBLEM-REC-ADVICE PR)
                                (CALC-ADVICE PR ADVICES PROBS-PER-DOMAIN)))
		      (ROUND2-DISPLAY-AND-TOTAL-SCORES
                                        PROBNUM PROBRES
                                        PLANNER-SCORES OUTSRM)))))
	  ;(format t "dump: ~S~%" planner-scores)
          (FORMAT OUTSRM "~%~%TOTAL SCORES: ~%~%")
	  (FORMAT OUTSRM "Planner ~19TAv Time~30TProblems Solved~45TFastest~55TShortest~%~%")
          (DOLIST (PS PLANNER-SCORES)
		(FORMAT OUTSRM "~3T~S~18T~7D~40T~3D~50T~3D~57T~3D~%"
                            (CAR PS)
			    (COND (COUNT-TIME-FOR-NON-SOLVERS*
				   (FLOOR (planner-rec-time (CADR PS))
					  (LENGTH MEANINGFUL-RESULTS)))
				  ((= (planner-rec-solved (cadr ps))
				      0)
				   0)
				  (T
				   (FLOOR (planner-rec-time (CADR PS))
					  (planner-rec-solved (cadr ps)))))
			    (planner-rec-solved (cadr ps))
			    (planner-rec-fastest (cadr ps))
			    (planner-rec-shortest (cadr ps))))
          (note-worked-on planner-scores probnames ignored-results 0 outsrm)))))

(defvar count-time-for-non-solvers* nil)

(DEFUN ROUND2-DISPLAY-AND-TOTAL-SCORES (PROBNUM PROBRES PLANNER-SCORES OUTSRM)
  (MULTIPLE-VALUE-BIND (GOOD BAD)
		       (DIVIDE-BY-WHO-SOLVED (CDR PROBRES)
					     PLANNER-SCORES)
	 (LET ((SORTED-RESULTS-FOR-PROB
		  (APPEND GOOD BAD))
	       ;(NUM-CONTESTANTS (LENGTH PLANNER-SCORES))
	       )
	    (FORMAT OUTSRM "~S ~4T~S ~%~
                    ~3TRank~8TPlanner~21TSolved~30TAdv~38TTime~44TLength~%"
		    PROBNUM (CAR PROBRES))
	    (DO ((RANK 0 (+ RANK 1))
		 (PRL SORTED-RESULTS-FOR-PROB (CDR PRL)))
		((NULL PRL))
	       (LET ((time (COND ((PROBLEM-REC-CORRECT (CAR PRL))
				   (PROBLEM-REC-TIME (CAR PRL)))
				  (count-time-for-non-solvers*
				   (CEILING (* 1.1 (PROBLEM-REC-TIME
						      (CAR (LAST GOOD))))))
				  (T 0)))
		     (pr (find-planner-rec (PROBLEM-REC-PLANNER (CAR PRL))
					  PLANNER-SCORES)))
		    (setf (planner-rec-time pr)
		          (+ (planner-rec-time pr)
			     time))
		    (COND ((PROBLEM-REC-CORRECT (CAR PRL))
			   (setf (planner-rec-solved pr)
			         (+ (planner-rec-solved pr)
				    1))))
		    (cond ((or (problem-rec-correct (car prl))
			       count-time-for-non-solvers*)
			   (FORMAT OUTSRM
				   "   ~3T~S~8T~S~25T~A~30T~3D~35T~7D~44T~4D~%"
				   RANK (planner-rec-name pr)
				   (COND ((PROBLEM-REC-CORRECT (CAR PRL))
					  "*")
					 (T "_"))
				   (PROBLEM-REC-ADVICE (CAR PRL))
				   (PROBLEM-REC-TIME (CAR PRL))
				   (COND ((EQ (PROBLEM-REC-SOLN (CAR PRL))
					      'NO-SOLUTION)
					  -1)
					 (T
					  (LENGTH (PROBLEM-REC-SOLN (CAR PRL))))))))))
	    (LET ((plr (find-planner-rec
		        (PROBLEM-REC-PLANNER (CAR SORTED-RESULTS-FOR-PROB))
			planner-scores)))
	       (setf (planner-rec-fastest plr)
		 (+ (planner-rec-fastest plr)
		    1)))
	    (cond ((every #'(lambda (pr)
			      (not (eq (problem-rec-soln pr)
				       'no-solution)))
			  good)
		   (let ((least-length
			    (reduce #'(lambda (m pr)
					  (min m (length (problem-rec-soln
							     pr))))
				    good
				    :initial-value 10000)))
		      (dolist (pr good)
			 (cond ((= (length (problem-rec-soln pr))
				   least-length)
				(let ((plr (find-planner-rec
						    (problem-rec-planner pr)
						    planner-scores)))
				   (setf (planner-rec-shortest plr)
				         (+ (planner-rec-shortest plr)
					    1)))))))))
	    (FORMAT OUTSRM "~%"))))

(DEFUN divide-by-who-solved (probrecs planner-scores)
  (let ((good '()) (bad '()))
     (dolist (pr probrecs)
        (cond ((problem-rec-correct pr)
	       (push pr good))))
     (cond ((null good)
	    (error "No good solutions in ~s" probrecs)))
     (setq good (sort good #'official-ranking-algorithm))
     (cond (count-time-for-non-solvers*
            (let ((worstgood (car (last good))))
               (dolist (ps planner-scores)
                  (cond ((not (some #'(lambda (g)
                                         (eq (problem-rec-planner g)
                                             (car ps)))
                                    good))
                         (dolist (br probrecs
                                     (push (make-problem-rec
                                            :prob (problem-rec-prob worstgood)
                                            :planner (car ps)
                                            :soln 'no-solution
                                            :correct nil
                                            :time (badtime worstgood))
                                           bad))
                            (cond ((eq (problem-rec-planner br)
                                       (car ps))
                                   (setf (problem-rec-time br)
                                         (badtime worstgood))
                                   (push br bad)
                                   (return)))))))))
           (t
            (setq bad (remove-if #'problem-rec-correct probrecs))))
       ;	(format t "Prob ~s Worstgood = ~s badtime = ~s~%"
       ;		(problem-rec-prob (car probrecs))
       ;		(problem-rec-time worstgood)
       ;		(badtime worstgood))
     (values good bad)))


; Rank two planners for same problem.  Returns T if PR1 is better than PR2.
(DEFUN TIME-RANKING-ALGORITHM (PR1 PR2)
   (LET ((CORRECT1 (PROBLEM-REC-CORRECT PR1))
         (CORRECT2 (PROBLEM-REC-CORRECT PR2)))
      (COND ((EQ (NOT CORRECT1) (NOT CORRECT2))
	     (< (PROBLEM-REC-TIME PR1)
		(PROBLEM-REC-TIME PR2)))
	    (T
             CORRECT1))))

(defun badtime (pr) 
   (cond (count-time-for-non-solvers*
	  (ceiling (* 1.1 (problem-rec-time pr))))
	 (t 0)))

(defun run-uniform (prob-pref prob-list results-subdir result-file-names
                  known-solvable score-file)
   (let ((probnames (probnames prob-pref prob-list))
         (result-files 
            (mapcar #'(lambda (fn)
                         (string-concat aipscomp-directory*
                                        results-subdir
                                        fn))
                    result-file-names)))
     (WITH-OPEN-FILE (OUTSRM SCORE-FILE
                          :DIRECTION ':OUTPUT
                          :IF-EXISTS ':SUPERSEDE)
        (multiple-value-bind (meaningful-results ignored-results
                              planner-scores probs-per-domain)
                             (read-and-group-results probnames result-files
                                                     known-solvable outsrm)
           (let ((advices '())
                 (probnum 0)
                 (numties 0)
                 (PROB-TIMES (COLLECT-PROB-TIMES MEANINGFUL-RESULTS)))
             (let ((TOTAL-TIME (FLOAT (ADD-CADRS PROB-TIMES))))
                (DOLIST (PROB PROBNAMES)
                  (LET ((PROBRES (ASSOC PROB MEANINGFUL-RESULTS)))
                     (COND (PROBRES
                            (SETQ PROBNUM (+ PROBNUM 1))
                            (LET ((TOT-PROB-TIME (CADR (ASSOC PROB PROB-TIMES))))
                              (DOLIST (PR (CDR PROBRES))
                                (SETF (PROBLEM-REC-ADVICE PR)
                                      (CALC-ADVICE PR ADVICES PROBS-PER-DOMAIN)))
                              (setq numties
                                    (+ numties
                                       (uniform-display-and-total-scores
                                          probnum probres
                                          (/ TOT-PROB-TIME TOTAL-TIME)
                                          planner-scores outsrm)))))))))
             (FORMAT OUTSRM "~%~%TOTAL SCORES: ~%~%")
	     (FORMAT OUTSRM "Planner ~19TAv Time~30TProblems Solved~45TFastest~55TShortest~69TOverall~%~%")
             (setq planner-scores
                   (sort planner-scores
                         #'string-lessp
                         :key #'(lambda (ps)
                                   (symbol-name (car ps)))))
             (DOLIST (PS PLANNER-SCORES)
                   (FORMAT OUTSRM "~3T~S~18T~7D~40T~3D~50T~3D~57T~3D~68T~8,2F~%"
                               (CAR PS)
                               (COND (COUNT-TIME-FOR-NON-SOLVERS*
                                      (FLOOR (planner-rec-time (CADR PS))
                                             (LENGTH MEANINGFUL-RESULTS)))
                                     ((= (planner-rec-solved (cadr ps))
                                         0)
                                      0)
                                     (T
                                      (FLOOR (planner-rec-time (CADR PS))
                                             (planner-rec-solved (cadr ps)))))
                               (planner-rec-solved (cadr ps))
                               (planner-rec-fastest (cadr ps))
                               (planner-rec-shortest (cadr ps))
                               (planner-rec-score (cadr ps))))
             (cond ((> numties 0)
                    (format outsrm "~33TTied for fastest ~3D times~%"
                            numties)))
             (note-worked-on planner-scores probnames ignored-results numties
                             outsrm))))))

; Returns number tied for fastest (actually, 1 less than that; i.e., 0 if unique
; fastest).           
(defun uniform-display-and-total-scores (PROBNUM PROBRES weight PLANNER-SCORES OUTSRM)
  (MULTIPLE-VALUE-BIND (GOOD BAD)
		       (DIVIDE-BY-WHO-SOLVED (CDR PROBRES)
					     PLANNER-SCORES)
	 (LET ((SORTED-RESULTS-FOR-PROB
		  (APPEND GOOD BAD))
	       (NUM-CONTESTANTS (LENGTH PLANNER-SCORES))
               (probties 0))
            (FORMAT OUTSRM "~S ~4T~S Weight ~,5F~%~
                            ~3TRank~8TPlanner~22TSolved~33TTime~44TLength~54TAdj Time~68TScore~%"
                    PROBNUM (CAR PROBRES) WEIGHT)
            (DO ((RANK 0 (+ RANK 1))
                 (ACTUALRANK 0)
                 (PRL SORTED-RESULTS-FOR-PROB (CDR PRL))
                 (prev-atime 0.0))
                ((NULL PRL))
               (LET ((PR (CAR PRL)))
                  (LET ((SOLVED-IT (AND (PROBLEM-REC-CORRECT PR)
                                        (NOT (EQ (PROBLEM-REC-SOLN PR)
                                                 'NO-SOLUTION))))
                        (plr (FIND-PLANNER-REC (PROBLEM-REC-PLANNER PR)
                                               PLANNER-SCORES))
                        (atime (adjusted-time pr)))
                    (cond ((> rank 0)
                           (cond ((> atime prev-atime)
                                  (setq actualrank rank)))))
                    (setq prev-atime atime)
                    (MULTIPLE-VALUE-BIND (SCORE TIME)
                                         (cond (solved-it
                                                (values 
                                                   (* 100.0 WEIGHT
                                                      (- NUM-CONTESTANTS
                                                         actualrank))
                                                   (PROBLEM-REC-TIME PR)))
                                               (t
                                                0.0 0))
;                      (format outsrm "Planner ~s rank ~s actualrank ~s solved ~s~%"
;                                            (problem-rec-planner pr)
;                                            rank actualrank solved-it)

                      (COND (SOLVED-IT
                             (cond ((= actualrank 0)
                                    (setf (planner-rec-fastest plr)
                                          (+ (planner-rec-fastest plr)
                                             1))

                                    (cond ((> rank 0)
                                           (setq probties (+ probties 1))))))
                             (SETF (PLANNER-REC-SCORE plr)
                                   (+ (PLANNER-REC-SCORE plr)
                                      SCORE))
                             (setf (planner-rec-time plr)
                                   (+ (planner-rec-time plr)
                                      time))
                             (SETF (PLANNER-REC-SOLVED plr)
                                   (+ (PLANNER-REC-SOLVED plr)
                                      1))))
                      (FORMAT OUTSRM
                              "   ~3T~S~8T~S~25T~A~30T~7D~44T~4D~55T~8D~64T~8,2F~%"
                              actualrank (planner-rec-name plr)
                              (COND (solved-it
                                     "*")
                                    (T "_"))
                              ;(PROBLEM-REC-ADVICE PR)
                              (PROBLEM-REC-TIME PR)
                              (COND ((EQ (PROBLEM-REC-SOLN PR)
                                         'NO-SOLUTION)
                                     -1)
                                    (T
                                     (LENGTH (PROBLEM-REC-SOLN (CAR PRL)))))
                              (FLOOR ATIME)
                              SCORE)))))
	    (cond ((every #'(lambda (pr)
			      (not (eq (problem-rec-soln pr)
				       'no-solution)))
			  good)
		   (let ((least-length
			    (reduce #'(lambda (m pr)
					  (min m (length (problem-rec-soln
							     pr))))
				    good
				    :initial-value 10000)))
		      (dolist (pr good)
			 (cond ((= (length (problem-rec-soln pr))
				   least-length)
				(let ((plr (find-planner-rec
						    (problem-rec-planner pr)
						    planner-scores)))
				   (setf (planner-rec-shortest plr)
				         (+ (planner-rec-shortest plr)
					    1)))))))))
            (format outsrm "~%")
            probties)))
