
(define (problem p22-net3-b12-g4)
  (:domain pipesworld_strips)

  (:objects
   B10 B0 B1 B4 B6 B7 B9 B3 B8 B2 B11 B5 - batch-atom
   A1 A2 A3 A4 - area
   S12 S13 S34 - pipe)

  (:init
   ;; speed of pipe segments
   (= (speed S12) 2)
   (= (speed S13) 2)
   (= (speed S34) 1)
   ;; All pipelines segments are in normal state
   (normal S12)
   (normal S13)
   (normal S34)
   ;; Interfaces restrictions
   (may-interface lco lco)
   (may-interface gasoleo gasoleo)
   (may-interface rat-a rat-a)
   (may-interface oca1 oca1)
   (may-interface oc1b oc1b)
   (may-interface lco gasoleo)
   (may-interface gasoleo lco)
   (may-interface lco oca1)
   (may-interface oca1 lco)
   (may-interface lco oc1b)
   (may-interface oc1b lco)
   (may-interface lco rat-a)
   (may-interface rat-a lco)
   (may-interface gasoleo rat-a)
   (may-interface rat-a gasoleo)
   (may-interface gasoleo oca1)
   (may-interface oca1 gasoleo)
   (may-interface gasoleo oc1b)
   (may-interface oc1b gasoleo)
   (may-interface oca1 oc1b)
   (may-interface oc1b oca1)
   ;; Network topology definition
   (connect A1 A2 S12)
   (connect A1 A3 S13)
   (connect A3 A4 S34)
   ;; Batch-atoms products
   (is-product B10 oc1b)
   (is-product B0 lco)
   (is-product B1 gasoleo)
   (is-product B4 rat-a)
   (is-product B6 rat-a)
   (is-product B7 lco)
   (is-product B9 gasoleo)
   (is-product B3 gasoleo)
   (is-product B8 oca1)
   (is-product B2 rat-a)
   (is-product B11 gasoleo)
   (is-product B5 oc1b)
   ;; Batch-atoms initially located in areas
   (on B10 A4)
   (on B1 A1)
   (on B6 A1)
   (on B3 A4)
   (on B8 A4)
   (on B2 A2)
   (on B11 A2)
   ;; Batch-atoms initially located in pipes
   (first B5 S12)
   (follow B0 B5)
   (last B0 S12)
   (first B7 S13)
   (follow B9 B7)
   (last B9 S13)
   (first B4 S34)
   (last B4 S34)
   ;; Unitary pipeline segments
   (not-unitary S12)
   (not-unitary S13)
   (unitary S34)
   )

  (:goal (and (on B6 A2)
	      (on B3 A3)
	      (on B2 A4)
	      (on B11 A1)))

 (:constraints (and (preference d1 (within 16.0365 (on b11 a1)))
		    (preference d2 (within 16.0365 (on b3 a3)))
		    (preference d3 (within 16.0365 (on b6 a2)))
		    (preference d4 (within 5 (on b3 a3)))
		    (preference d5 (within 5 (on b6 a2)))))

 (:metric maximize
  (+ (* 13.8 (- 1 (is-violated d1)))
     (+ (* 6.9 (- 1 (is-violated d2)))
	(+ (* 7.6 (- 1 (is-violated d3)))
	   (+ (* 5.9 (- 1 (is-violated d4)))
	      (* 5.2 (- 1 (is-violated d5)))
	      )))))
  )
