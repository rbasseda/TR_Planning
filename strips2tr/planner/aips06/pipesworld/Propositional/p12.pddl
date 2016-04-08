
(define (problem p12_net2_b10_g4_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b0 b1 b4 b6 b7 b9 b3 b8 b2 b5 - batch_atom
	a1 a2 a3 - area
	s12 s13 - pipe
	ta1_1_lco - tank_slot
	ta1_4_gasoleo ta1_3_gasoleo ta1_2_gasoleo ta1_1_gasoleo - tank_slot
	ta1_1_rat_a - tank_slot
	ta2_1_lco - tank_slot
	ta2_4_gasoleo ta2_3_gasoleo ta2_2_gasoleo ta2_1_gasoleo - tank_slot
	ta2_1_rat_a - tank_slot
	ta3_1_lco - tank_slot
	ta3_4_gasoleo ta3_3_gasoleo ta3_2_gasoleo ta3_1_gasoleo - tank_slot
	ta3_1_rat_a - tank_slot
	

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
    	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_4_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_3_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_4_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_3_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_4_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_3_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b0 gasoleo)
	(is_product b1 rat_a)
	(is_product b4 gasoleo)
	(is_product b6 gasoleo)
	(is_product b7 gasoleo)
	(is_product b9 lco)
	(is_product b3 lco)
	(is_product b8 gasoleo)
	(is_product b2 rat_a)
	(is_product b5 gasoleo)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b0 a1)
	(occupied ta1_1_gasoleo)
	
	(on b4 a2)
	(occupied ta2_1_gasoleo)
	
	(on b3 a3)
	(occupied ta3_1_lco)
	
	(on b8 a3)
	(occupied ta3_1_gasoleo)
	
	(on b2 a3)
	(occupied ta3_1_rat_a)
	
	(on b5 a1)
	(occupied ta1_2_gasoleo)
	
	(not_occupied ta1_1_lco)
	(not_occupied ta1_3_gasoleo)
	(not_occupied ta1_4_gasoleo)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_2_gasoleo)
	(not_occupied ta2_3_gasoleo)
	(not_occupied ta2_4_gasoleo)
	(not_occupied ta2_1_rat_a)
	(not_occupied ta3_2_gasoleo)
	(not_occupied ta3_3_gasoleo)
	(not_occupied ta3_4_gasoleo)
	

    ;; batch_atoms initially located in pipes
    	(first b9 s12)
	(follow b1 b9)
	(last b1 s12)
	(first b7 s13)
	(follow b6 b7)
	(last b6 s13)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)

  )
  (:goal (and
    	(on b0 a2)
	(on b1 a2)
	(on b6 a2)
	(on b9 a3)
			(normal s12)
		(normal s13)

  ))
)
