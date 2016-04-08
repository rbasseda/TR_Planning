
(define (problem network4new_all_18_4_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b17 b14 b4 b6 b15 b13 b8 b2 b11 b5 b0 b1 b7 b12 b9 b3 b16 - batch_atom
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
    	(is_product b10 rat_a)
	(is_product b17 oc1b)
	(is_product b14 gasoleo)
	(is_product b4 rat_a)
	(is_product b6 lco)
	(is_product b15 gasoleo)
	(is_product b13 oca1)
	(is_product b8 gasoleo)
	(is_product b2 oc1b)
	(is_product b11 oca1)
	(is_product b5 lco)
	(is_product b0 rat_a)
	(is_product b1 oc1b)
	(is_product b7 lco)
	(is_product b12 lco)
	(is_product b9 gasoleo)
	(is_product b3 lco)
	(is_product b16 oc1b)
	

    ;; batch_atoms initially located in areas
    	(on b4 a3)
	(on b6 a3)
	(on b15 a2)
	(on b13 a4)
	(on b2 a1)
	(on b0 a1)
	(on b1 a1)
	(on b9 a1)
	(on b3 a3)
	(on b16 a2)
	

    ;; batch_atoms initially located in pipes
    	(first b17 s12)
	(follow b8 b17)
	(last b8 s12)
	(first b7 s13)
	(follow b12 b7)
	(last b12 s13)
	(first b11 s34)
	(last b11 s34)
	(first b5 s23)
	(follow b10 b5)
	(follow b14 b10)
	(last b14 s23)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)

  )
  (:goal (and
    	(on b2 a4)
	(on b1 a3)
	(on b7 a1)
	(on b16 a3)
	
  ))
)
