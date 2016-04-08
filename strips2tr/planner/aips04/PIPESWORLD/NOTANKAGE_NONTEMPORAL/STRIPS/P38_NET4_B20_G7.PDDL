
(define (problem network4new_all_20_7_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b17 b14 b4 b6 b15 b19 b13 b8 b2 b11 b5 b0 b1 b18 b7 b12 b9 b3 b16 - batch_atom
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
    	(is_product b10 oc1b)
	(is_product b17 gasoleo)
	(is_product b14 oc1b)
	(is_product b4 rat_a)
	(is_product b6 oc1b)
	(is_product b15 gasoleo)
	(is_product b19 lco)
	(is_product b13 lco)
	(is_product b8 gasoleo)
	(is_product b2 lco)
	(is_product b11 oca1)
	(is_product b5 oc1b)
	(is_product b0 lco)
	(is_product b1 rat_a)
	(is_product b18 lco)
	(is_product b7 rat_a)
	(is_product b12 oc1b)
	(is_product b9 rat_a)
	(is_product b3 rat_a)
	(is_product b16 oca1)
	

    ;; batch_atoms initially located in areas
    	(on b17 a3)
	(on b14 a2)
	(on b6 a2)
	(on b15 a3)
	(on b13 a3)
	(on b11 a3)
	(on b0 a4)
	(on b7 a3)
	(on b12 a2)
	(on b9 a2)
	(on b3 a4)
	(on b16 a4)
	

    ;; batch_atoms initially located in pipes
    	(first b18 s12)
	(follow b8 b18)
	(last b8 s12)
	(first b4 s13)
	(follow b5 b4)
	(last b5 s13)
	(first b10 s34)
	(last b10 s34)
	(first b2 s23)
	(follow b19 b2)
	(follow b1 b19)
	(last b1 s23)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)

  )
  (:goal (and
    	(on b10 a3)
	(on b17 a4)
	(on b14 a1)
	(on b6 a3)
	(on b13 a1)
	(on b2 a3)
	(on b5 a3)
	
  ))
)
