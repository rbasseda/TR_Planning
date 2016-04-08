
(define (problem network2new_all_14_4_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b12 b9 b3 b13 b8 b2 b11 b5 - batch_atom
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
    	(is_product b10 rat_a)
	(is_product b0 rat_a)
	(is_product b1 oca1)
	(is_product b4 oca1)
	(is_product b6 lco)
	(is_product b7 lco)
	(is_product b12 rat_a)
	(is_product b9 oc1b)
	(is_product b3 rat_a)
	(is_product b13 rat_a)
	(is_product b8 rat_a)
	(is_product b2 oca1)
	(is_product b11 oc1b)
	(is_product b5 rat_a)
	

    ;; batch_atoms initially located in areas
    	(on b0 a2)
	(on b4 a3)
	(on b6 a3)
	(on b9 a1)
	(on b3 a2)
	(on b13 a3)
	(on b8 a1)
	(on b2 a1)
	(on b11 a2)
	(on b5 a2)
	

    ;; batch_atoms initially located in pipes
    	(first b10 s12)
	(follow b1 b10)
	(last b1 s12)
	(first b12 s13)
	(follow b7 b12)
	(last b7 s13)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)

  )
  (:goal (and
    	(on b7 a1)
	(on b12 a1)
	(on b3 a3)
	(on b8 a2)
	
  ))
)
