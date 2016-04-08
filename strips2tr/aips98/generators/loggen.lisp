(in-package "PDDL")

(defun logistics-prob (name npackages ncities nplanes ntrucks
                       locs-per-city ngoals)
   (setq ntrucks (max ntrucks ncities))
   (let ((cities (nsymbols "CITY" ncities))
         (planes (nsymbols "PLANE" nplanes))
         (trucks (nsymbols "TRUCK" ntrucks))
         (packages (nsymbols "PACKAGE" npackages)))
      (let ((city-locs (mapcar #'(lambda (c)
                                   (cons c
                                         (let ((str (format nil "~s-" c)))
                                            (nsymbols (string-upcase str)
                                                      locs-per-city))))
                               cities))
	    (city-trucks (subseq trucks 0 ncities))
	    (random-trucks (subseq trucks ncities)))
         ;(format t "city locs = ~s~%" city-locs)
         (let ((nonairports (mapcan #'(lambda (x) (copy-list (cddr x)))
                                    city-locs))
               (airports (mapcar #'cadr city-locs)))
            (let ((all-locs (append nonairports airports)))
              `(define (problem ,name)
                  (:domain logistics-adl)
                  (:objects ,@(nsymbols "PACKAGE" npackages) - obj
                            ,@cities - city
                            ,@trucks - truck
                            ,@planes - airplane
                            ,@nonairports - location
                            ,@airports - airport)
                  (:init ,@(mapcan #'(lambda (c)
                                       (mapcar #'(lambda (loc)
                                                    `(in-city ,loc ,(car c)))
                                               (cdr c)))
                                   city-locs)
                         ,@(mapcar #'(lambda (p)
                                        `(at ,p ,(randelt airports)))
                                   planes)
			 ,@(mapcar #'(lambda (tr cl)
				        `(at ,tr ,(cond ((null (cddr cl))
							 (cadr cl))
							(t
							 (randelt (cddr cl))))))
				   city-trucks city-locs)
                         ,@(mapcar #'(lambda (p)
                                        `(at ,p ,(randelt all-locs)))
                                   (append random-trucks packages)))
                  (:goal (and ,@(mapcar #'(lambda (p)
                                             `(at ,p ,(randelt all-locs)))
                                        (cond ((or (> ngoals (length packages))
                                                   (< ngoals 1))
                                               packages)
                                              (t
                                               (subseq packages 0 ngoals))))))))))))

