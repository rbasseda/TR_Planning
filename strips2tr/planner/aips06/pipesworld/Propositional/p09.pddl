
(define (problem p09_net1_b14_g6_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b12 b9 b3 b13 b8 b2 b11 b5 - batch_atom
	a1 a2 a3 - area
	s12 s13 - pipe
	ta1_3_lco ta1_2_lco ta1_1_lco - tank_slot
	ta1_1_gasoleo - tank_slot
	ta1_2_rat_a ta1_1_rat_a - tank_slot
	ta1_2_oca1 ta1_1_oca1 - tank_slot
	ta2_3_lco ta2_2_lco ta2_1_lco - tank_slot
	ta2_1_gasoleo - tank_slot
	ta2_2_rat_a ta2_1_rat_a - tank_slot
	ta2_2_oca1 ta2_1_oca1 - tank_slot
	ta3_3_lco ta3_2_lco ta3_1_lco - tank_slot
	ta3_1_gasoleo - tank_slot
	ta3_2_rat_a ta3_1_rat_a - tank_slot
	ta3_2_oca1 ta3_1_oca1 - tank_slot
	

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
	

    ;; specify tank location
    	(tank_slot_product_location ta1_3_lco lco a1)
	(tank_slot_product_location ta1_2_lco lco a1)
	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_2_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta2_3_lco lco a2)
	(tank_slot_product_location ta2_2_lco lco a2)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_2_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta3_3_lco lco a3)
	(tank_slot_product_location ta3_2_lco lco a3)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_rat_a rat_a a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_2_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 oca1)
	(is_product b0 lco)
	(is_product b1 lco)
	(is_product b4 lco)
	(is_product b6 lco)
	(is_product b7 oca1)
	(is_product b12 rat_a)
	(is_product b9 rat_a)
	(is_product b3 lco)
	(is_product b13 rat_a)
	(is_product b8 rat_a)
	(is_product b2 gasoleo)
	(is_product b11 gasoleo)
	(is_product b5 oca1)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b10 a2)
	(occupied ta2_1_oca1)
	
	(on b0 a1)
	(occupied ta1_1_lco)
	
	(on b1 a2)
	(occupied ta2_1_lco)
	
	(on b4 a2)
	(occupied ta2_2_lco)
	
	(on b6 a2)
	(occupied ta2_3_lco)
	
	(on b12 a3)
	(occupied ta3_1_rat_a)
	
	(on b9 a2)
	(occupied ta2_1_rat_a)
	
	(on b3 a3)
	(occupied ta3_1_lco)
	
	(on b13 a2)
	(occupied ta2_2_rat_a)
	
	(on b8 a3)
	(occupied ta3_2_rat_a)
	
	(on b11 a2)
	(occupied ta2_1_gasoleo)
	
	(on b5 a2)
	(occupied ta2_2_oca1)
	
	(not_occupied ta1_2_lco)
	(not_occupied ta1_3_lco)
	(not_occupied ta1_1_gasoleo)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta1_2_rat_a)
	(not_occupied ta1_1_oca1)
	(not_occupied ta1_2_oca1)
	(not_occupied ta3_2_lco)
	(not_occupied ta3_3_lco)
	(not_occupied ta3_1_gasoleo)
	(not_occupied ta3_1_oca1)
	(not_occupied ta3_2_oca1)
	

    ;; batch_atoms initially located in pipes
    	(first b2 s12)
	(last b2 s12)
	(first b7 s13)
	(last b7 s13)
	
    ;; unitary pipeline segments
    		(unitary s12)
		(unitary s13)

  )
  (:goal (and
    	(on b10 a3)
	(on b4 a1)
	(on b6 a1)
	(on b12 a2)
	(on b8 a2)
	(on b5 a1)
			(normal s12)
		(normal s13)

  ))
)
