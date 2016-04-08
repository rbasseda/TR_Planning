
(define (problem network5new_all_30_6_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b27 b22 b4 b28 b6 b15 b19 b29 b20 b13 b8 b2 b11 b24 b5 b0 b1 b25 b18 b7 b12 b9 b3 b26 b23 b16 - batch_atom
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
    	(is_product b10 oca1)
	(is_product b21 oca1)
	(is_product b17 rat_a)
	(is_product b14 gasoleo)
	(is_product b27 oc1b)
	(is_product b22 oc1b)
	(is_product b4 gasoleo)
	(is_product b28 lco)
	(is_product b6 gasoleo)
	(is_product b15 oc1b)
	(is_product b19 gasoleo)
	(is_product b29 oca1)
	(is_product b20 rat_a)
	(is_product b13 rat_a)
	(is_product b8 oca1)
	(is_product b2 rat_a)
	(is_product b11 lco)
	(is_product b24 lco)
	(is_product b5 lco)
	(is_product b0 rat_a)
	(is_product b1 gasoleo)
	(is_product b25 oca1)
	(is_product b18 gasoleo)
	(is_product b7 lco)
	(is_product b12 oca1)
	(is_product b9 rat_a)
	(is_product b3 gasoleo)
	(is_product b26 rat_a)
	(is_product b23 lco)
	(is_product b16 oc1b)
	

    ;; batch_atoms initially located in areas
    	(on b21 a3)
	(on b17 a2)
	(on b14 a2)
	(on b27 a2)
	(on b22 a5)
	(on b4 a5)
	(on b28 a5)
	(on b6 a3)
	(on b29 a1)
	(on b11 a3)
	(on b24 a5)
	(on b0 a5)
	(on b1 a4)
	(on b25 a1)
	(on b18 a4)
	(on b12 a1)
	(on b23 a5)
	(on b16 a4)
	

    ;; batch_atoms initially located in pipes
    	(first b7 s12)
	(follow b9 b7)
	(last b9 s12)
	(first b8 s13)
	(follow b3 b8)
	(last b3 s13)
	(first b5 s34)
	(last b5 s34)
	(first b19 s23)
	(follow b13 b19)
	(follow b10 b13)
	(last b10 s23)
	(first b26 s15)
	(follow b2 b26)
	(follow b20 b2)
	(follow b15 b20)
	(last b15 s15)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)
		(not_unitary s15)

  )
  (:goal (and
    	(on b17 a3)
	(on b27 a4)
	(on b6 a4)
	(on b20 a2)
	(on b11 a1)
	(on b18 a3)
	
  ))
)
