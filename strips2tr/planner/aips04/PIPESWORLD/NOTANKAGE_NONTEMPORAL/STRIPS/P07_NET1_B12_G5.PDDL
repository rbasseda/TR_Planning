
(define (problem network1new_all_12_5_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b9 b3 b8 b2 b11 b5 - batch_atom
	a1 a2 a3 - area
	s12 s13 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal s12)
		(normal s13)

    ;; interfaces restrictions
    	(may_interface lco lco)
	(may_interface gasoleo gasoleo)
	(may_interface rat_a rat_a)
	(may_interface oca1 oca1)
	(may_interface oc1b oc1b)
	(may_interface lco gasoleo)
	(may_interface gasoleo lco)
	(may_interface lco oca1)
	(may_interface oca1 lco)
	(may_interface lco oc1b)
	(may_interface oc1b lco)
	(may_interface lco rat_a)
	(may_interface rat_a lco)
	(may_interface gasoleo rat_a)
	(may_interface rat_a gasoleo)
	(may_interface gasoleo oca1)
	(may_interface oca1 gasoleo)
	(may_interface gasoleo oc1b)
	(may_interface oc1b gasoleo)
	(may_interface oca1 oc1b)
	(may_interface oc1b oca1)
	

    ;; network topology definition
    	(connect a1 a2 s12)
	(connect a1 a3 s13)
	

    ;; batch_atoms products
    	(is_product b10 gasoleo)
	(is_product b0 lco)
	(is_product b1 oc1b)
	(is_product b4 lco)
	(is_product b6 lco)
	(is_product b7 rat_a)
	(is_product b9 lco)
	(is_product b3 gasoleo)
	(is_product b8 oc1b)
	(is_product b2 rat_a)
	(is_product b11 gasoleo)
	(is_product b5 rat_a)
	

    ;; batch_atoms initially located in areas
    	(on b10 a1)
	(on b0 a1)
	(on b4 a2)
	(on b6 a3)
	(on b7 a3)
	(on b9 a2)
	(on b3 a3)
	(on b2 a2)
	(on b11 a3)
	(on b5 a2)
	

    ;; batch_atoms initially located in pipes
    	(first b8 s12)
	(last b8 s12)
	(first b1 s13)
	(last b1 s13)
	
    ;; unitary pipeline segments
    		(unitary s12)
		(unitary s13)

  )
  (:goal (and
    	(on b1 a2)
	(on b4 a1)
	(on b7 a1)
	(on b9 a1)
	(on b11 a1)
	
  ))
)
