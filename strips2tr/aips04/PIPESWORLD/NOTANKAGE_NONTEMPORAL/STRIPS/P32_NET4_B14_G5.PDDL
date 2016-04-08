
(define (problem network4new_all_14_5_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b12 b9 b3 b13 b8 b2 b11 b5 - batch_atom
	a1 a2 a3 a4 - area
	s12 s13 s34 s23 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)

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
	(connect a3 a4 s34)
	(connect a2 a3 s23)
	

    ;; batch_atoms products
    	(is_product b10 oca1)
	(is_product b0 oca1)
	(is_product b1 gasoleo)
	(is_product b4 oc1b)
	(is_product b6 gasoleo)
	(is_product b7 oc1b)
	(is_product b12 gasoleo)
	(is_product b9 oc1b)
	(is_product b3 gasoleo)
	(is_product b13 lco)
	(is_product b8 lco)
	(is_product b2 rat_a)
	(is_product b11 gasoleo)
	(is_product b5 rat_a)
	

    ;; batch_atoms initially located in areas
    	(on b0 a4)
	(on b1 a1)
	(on b4 a1)
	(on b6 a3)
	(on b12 a2)
	(on b8 a1)
	

    ;; batch_atoms initially located in pipes
    	(first b5 s12)
	(follow b7 b5)
	(last b7 s12)
	(first b10 s13)
	(follow b9 b10)
	(last b9 s13)
	(first b3 s34)
	(last b3 s34)
	(first b2 s23)
	(follow b13 b2)
	(follow b11 b13)
	(last b11 s23)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)

  )
  (:goal (and
    	(on b1 a2)
	(on b4 a4)
	(on b13 a4)
	(on b2 a3)
	(on b11 a1)
	
  ))
)
