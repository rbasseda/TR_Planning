
(define (problem p31_net4_b14_g3_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b12 b9 b3 b13 b8 b2 b11 b5 - batch_atom
	a1 a2 a3 a4 - area
	s12 s13 s34 s23 - pipe
	ta1_1_lco - tank_slot
	ta1_1_gasoleo - tank_slot
	ta1_1_oc1b - tank_slot
	ta2_1_gasoleo - tank_slot
	ta2_1_oc1b - tank_slot
	ta3_1_gasoleo - tank_slot
	ta3_1_oc1b - tank_slot
	ta4_1_gasoleo - tank_slot
	ta4_1_oca1 - tank_slot
	ta4_1_oc1b - tank_slot
	

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
	

    ;; specify tank location
    	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

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
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b0 a4)
	(occupied ta4_1_oca1)
	
	(on b1 a1)
	(occupied ta1_1_gasoleo)
	
	(on b4 a1)
	(occupied ta1_1_oc1b)
	
	(on b6 a3)
	(occupied ta3_1_gasoleo)
	
	(on b12 a2)
	(occupied ta2_1_gasoleo)
	
	(on b8 a1)
	(occupied ta1_1_lco)
	
	(not_occupied ta2_1_oc1b)
	(not_occupied ta3_1_oc1b)
	(not_occupied ta4_1_gasoleo)
	(not_occupied ta4_1_oc1b)
	

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
	(on b11 a1)
			(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)

  ))
)