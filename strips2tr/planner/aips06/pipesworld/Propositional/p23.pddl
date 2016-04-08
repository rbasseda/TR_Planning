
(define (problem p23_net3_b14_g3_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b0 b1 b4 b6 b7 b12 b9 b3 b13 b8 b2 b11 b5 - batch_atom
	a1 a2 a3 a4 - area
	s12 s13 s34 - pipe
	ta1_1_lco - tank_slot
	ta1_3_gasoleo ta1_2_gasoleo ta1_1_gasoleo - tank_slot
	ta1_1_rat_a - tank_slot
	ta1_1_oca1 - tank_slot
	ta1_3_oc1b ta1_2_oc1b ta1_1_oc1b - tank_slot
	ta2_1_lco - tank_slot
	ta2_3_gasoleo ta2_2_gasoleo ta2_1_gasoleo - tank_slot
	ta2_1_rat_a - tank_slot
	ta2_1_oca1 - tank_slot
	ta2_3_oc1b ta2_2_oc1b ta2_1_oc1b - tank_slot
	ta3_1_lco - tank_slot
	ta3_3_gasoleo ta3_2_gasoleo ta3_1_gasoleo - tank_slot
	ta3_1_rat_a - tank_slot
	ta3_1_oca1 - tank_slot
	ta3_3_oc1b ta3_2_oc1b ta3_1_oc1b - tank_slot
	ta4_1_lco - tank_slot
	ta4_3_gasoleo ta4_2_gasoleo ta4_1_gasoleo - tank_slot
	ta4_1_rat_a - tank_slot
	ta4_1_oca1 - tank_slot
	ta4_3_oc1b ta4_2_oc1b ta4_1_oc1b - tank_slot
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal s12)
		(normal s13)
		(normal s34)

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
	

    ;; specify tank location
    	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_3_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta1_3_oc1b oc1b a1)
	(tank_slot_product_location ta1_2_oc1b oc1b a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_3_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta2_3_oc1b oc1b a2)
	(tank_slot_product_location ta2_2_oc1b oc1b a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_3_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	(tank_slot_product_location ta3_3_oc1b oc1b a3)
	(tank_slot_product_location ta3_2_oc1b oc1b a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_1_lco lco a4)
	(tank_slot_product_location ta4_3_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_2_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_rat_a rat_a a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_3_oc1b oc1b a4)
	(tank_slot_product_location ta4_2_oc1b oc1b a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 oc1b)
	(is_product b0 gasoleo)
	(is_product b1 oc1b)
	(is_product b4 gasoleo)
	(is_product b6 oca1)
	(is_product b7 rat_a)
	(is_product b12 oca1)
	(is_product b9 oc1b)
	(is_product b3 gasoleo)
	(is_product b13 lco)
	(is_product b8 oc1b)
	(is_product b2 gasoleo)
	(is_product b11 oc1b)
	(is_product b5 gasoleo)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b10 a4)
	(occupied ta4_1_oc1b)
	
	(on b0 a2)
	(occupied ta2_1_gasoleo)
	
	(on b4 a3)
	(occupied ta3_1_gasoleo)
	
	(on b6 a2)
	(occupied ta2_1_oca1)
	
	(on b7 a4)
	(occupied ta4_1_rat_a)
	
	(on b9 a1)
	(occupied ta1_1_oc1b)
	
	(on b13 a4)
	(occupied ta4_1_lco)
	
	(on b8 a1)
	(occupied ta1_2_oc1b)
	
	(on b11 a3)
	(occupied ta3_1_oc1b)
	
	(not_occupied ta1_1_lco)
	(not_occupied ta1_1_gasoleo)
	(not_occupied ta1_2_gasoleo)
	(not_occupied ta1_3_gasoleo)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta1_1_oca1)
	(not_occupied ta1_3_oc1b)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_2_gasoleo)
	(not_occupied ta2_3_gasoleo)
	(not_occupied ta2_1_rat_a)
	(not_occupied ta2_1_oc1b)
	(not_occupied ta2_2_oc1b)
	(not_occupied ta2_3_oc1b)
	(not_occupied ta3_1_lco)
	(not_occupied ta3_2_gasoleo)
	(not_occupied ta3_3_gasoleo)
	(not_occupied ta3_1_rat_a)
	(not_occupied ta3_1_oca1)
	(not_occupied ta3_2_oc1b)
	(not_occupied ta3_3_oc1b)
	(not_occupied ta4_1_gasoleo)
	(not_occupied ta4_2_gasoleo)
	(not_occupied ta4_3_gasoleo)
	(not_occupied ta4_1_oca1)
	(not_occupied ta4_2_oc1b)
	(not_occupied ta4_3_oc1b)
	

    ;; batch_atoms initially located in pipes
    	(first b5 s12)
	(follow b2 b5)
	(last b2 s12)
	(first b1 s13)
	(follow b3 b1)
	(last b3 s13)
	(first b12 s34)
	(last b12 s34)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)

  )
  (:goal (and
    	(on b7 a3)
	(on b12 a2)
	(on b11 a4)
			(normal s12)
		(normal s13)
		(normal s34)

  ))
)
