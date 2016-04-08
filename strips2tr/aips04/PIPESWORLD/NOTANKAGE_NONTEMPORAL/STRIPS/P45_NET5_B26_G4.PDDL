
(define (problem network5new_all_26_4_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b22 b4 b6 b15 b19 b20 b13 b8 b2 b11 b24 b5 b0 b1 b25 b18 b7 b12 b9 b3 b23 b16 - batch_atom
	a1 a2 a3 a4 a5 - area
	s12 s13 s34 s23 s15 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)
		(normal s15)

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
	(connect a1 a5 s15)
	

    ;; batch_atoms products
    	(is_product b10 rat_a)
	(is_product b21 rat_a)
	(is_product b17 gasoleo)
	(is_product b14 oca1)
	(is_product b22 oc1b)
	(is_product b4 lco)
	(is_product b6 gasoleo)
	(is_product b15 rat_a)
	(is_product b19 gasoleo)
	(is_product b20 lco)
	(is_product b13 gasoleo)
	(is_product b8 lco)
	(is_product b2 gasoleo)
	(is_product b11 rat_a)
	(is_product b24 oca1)
	(is_product b5 rat_a)
	(is_product b0 lco)
	(is_product b1 lco)
	(is_product b25 lco)
	(is_product b18 oca1)
	(is_product b7 rat_a)
	(is_product b12 lco)
	(is_product b9 lco)
	(is_product b3 oca1)
	(is_product b23 oc1b)
	(is_product b16 oc1b)
	

    ;; batch_atoms initially located in areas
    	(on b10 a3)
	(on b21 a2)
	(on b17 a5)
	(on b4 a2)
	(on b19 a4)
	(on b8 a1)
	(on b11 a5)
	(on b5 a2)
	(on b0 a3)
	(on b1 a2)
	(on b25 a3)
	(on b9 a5)
	(on b23 a1)
	(on b16 a1)
	

    ;; batch_atoms initially located in pipes
    	(first b2 s12)
	(follow b6 b2)
	(last b6 s12)
	(first b15 s13)
	(follow b12 b15)
	(last b12 s13)
	(first b22 s34)
	(last b22 s34)
	(first b7 s23)
	(follow b18 b7)
	(follow b20 b18)
	(last b20 s23)
	(first b24 s15)
	(follow b13 b24)
	(follow b14 b13)
	(follow b3 b14)
	(last b3 s15)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)
		(not_unitary s15)

  )
  (:goal (and
    	(on b17 a4)
	(on b20 a2)
	(on b8 a3)
	(on b12 a5)
	
  ))
)
