
(define (problem p34_net4_b16_g6_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b14 b4 b6 b15 b13 b8 b2 b11 b5 b0 b1 b7 b9 b12 b3 - batch_atom
	a1 a2 a3 a4 - area
	s12 s13 s34 s23 - pipe
	ta1_2_lco ta1_1_lco - tank_slot
	ta1_2_gasoleo ta1_1_gasoleo - tank_slot
	ta1_2_rat_a ta1_1_rat_a - tank_slot
	ta1_3_oca1 ta1_2_oca1 ta1_1_oca1 - tank_slot
	ta1_1_oc1b - tank_slot
	ta2_2_lco ta2_1_lco - tank_slot
	ta2_2_gasoleo ta2_1_gasoleo - tank_slot
	ta2_2_rat_a ta2_1_rat_a - tank_slot
	ta2_3_oca1 ta2_2_oca1 ta2_1_oca1 - tank_slot
	ta2_1_oc1b - tank_slot
	ta3_2_lco ta3_1_lco - tank_slot
	ta3_2_gasoleo ta3_1_gasoleo - tank_slot
	ta3_2_rat_a ta3_1_rat_a - tank_slot
	ta3_3_oca1 ta3_2_oca1 ta3_1_oca1 - tank_slot
	ta3_1_oc1b - tank_slot
	ta4_2_lco ta4_1_lco - tank_slot
	ta4_2_gasoleo ta4_1_gasoleo - tank_slot
	ta4_2_rat_a ta4_1_rat_a - tank_slot
	ta4_3_oca1 ta4_2_oca1 ta4_1_oca1 - tank_slot
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
    	(tank_slot_product_location ta1_2_lco lco a1)
	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_2_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_3_oca1 oca1 a1)
	(tank_slot_product_location ta1_2_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_2_lco lco a2)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_2_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_3_oca1 oca1 a2)
	(tank_slot_product_location ta2_2_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_2_lco lco a3)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_2_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_rat_a rat_a a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_3_oca1 oca1 a3)
	(tank_slot_product_location ta3_2_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_2_lco lco a4)
	(tank_slot_product_location ta4_1_lco lco a4)
	(tank_slot_product_location ta4_2_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_2_rat_a rat_a a4)
	(tank_slot_product_location ta4_1_rat_a rat_a a4)
	(tank_slot_product_location ta4_3_oca1 oca1 a4)
	(tank_slot_product_location ta4_2_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 oca1)
	(is_product b14 oc1b)
	(is_product b4 lco)
	(is_product b6 rat_a)
	(is_product b15 rat_a)
	(is_product b13 oca1)
	(is_product b8 oca1)
	(is_product b2 lco)
	(is_product b11 gasoleo)
	(is_product b5 oca1)
	(is_product b0 gasoleo)
	(is_product b1 rat_a)
	(is_product b7 gasoleo)
	(is_product b9 lco)
	(is_product b12 gasoleo)
	(is_product b3 oca1)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b4 a1)
	(occupied ta1_1_lco)
	
	(on b6 a3)
	(occupied ta3_1_rat_a)
	
	(on b15 a3)
	(occupied ta3_2_rat_a)
	
	(on b2 a4)
	(occupied ta4_1_lco)
	
	(on b11 a4)
	(occupied ta4_1_gasoleo)
	
	(on b5 a3)
	(occupied ta3_1_oca1)
	
	(on b7 a2)
	(occupied ta2_1_gasoleo)
	
	(on b12 a4)
	(occupied ta4_2_gasoleo)
	
	(not_occupied ta1_2_lco)
	(not_occupied ta1_1_gasoleo)
	(not_occupied ta1_2_gasoleo)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta1_2_rat_a)
	(not_occupied ta1_1_oca1)
	(not_occupied ta1_2_oca1)
	(not_occupied ta1_3_oca1)
	(not_occupied ta1_1_oc1b)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_2_lco)
	(not_occupied ta2_2_gasoleo)
	(not_occupied ta2_1_rat_a)
	(not_occupied ta2_2_rat_a)
	(not_occupied ta2_1_oca1)
	(not_occupied ta2_2_oca1)
	(not_occupied ta2_3_oca1)
	(not_occupied ta2_1_oc1b)
	(not_occupied ta3_1_lco)
	(not_occupied ta3_2_lco)
	(not_occupied ta3_1_gasoleo)
	(not_occupied ta3_2_gasoleo)
	(not_occupied ta3_2_oca1)
	(not_occupied ta3_3_oca1)
	(not_occupied ta3_1_oc1b)
	(not_occupied ta4_2_lco)
	(not_occupied ta4_1_rat_a)
	(not_occupied ta4_2_rat_a)
	(not_occupied ta4_1_oca1)
	(not_occupied ta4_2_oca1)
	(not_occupied ta4_3_oca1)
	(not_occupied ta4_1_oc1b)
	

    ;; batch_atoms initially located in pipes
    	(first b14 s12)
	(follow b10 b14)
	(last b10 s12)
	(first b8 s13)
	(follow b13 b8)
	(last b13 s13)
	(first b9 s34)
	(last b9 s34)
	(first b0 s23)
	(follow b3 b0)
	(follow b1 b3)
	(last b1 s23)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)

  )
  (:goal (and
    	(on b4 a4)
	(on b6 a4)
	(on b15 a2)
	(on b2 a1)
	(on b0 a1)
	(on b1 a1)
			(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)

  ))
)
