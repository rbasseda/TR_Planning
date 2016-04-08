
(define (problem p30_net3_b20_g8_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b17 b14 b4 b6 b15 b19 b13 b8 b2 b11 b5 b0 b1 b18 b7 b12 b9 b3 b16 - batch_atom
	a1 a2 a3 a4 - area
	s12 s13 s34 - pipe
	ta1_2_lco ta1_1_lco - tank_slot
	ta1_3_gasoleo ta1_2_gasoleo ta1_1_gasoleo - tank_slot
	ta1_6_rat_a ta1_5_rat_a ta1_4_rat_a ta1_3_rat_a ta1_2_rat_a ta1_1_rat_a - tank_slot
	ta1_3_oca1 ta1_2_oca1 ta1_1_oca1 - tank_slot
	ta1_1_oc1b - tank_slot
	ta2_2_lco ta2_1_lco - tank_slot
	ta2_3_gasoleo ta2_2_gasoleo ta2_1_gasoleo - tank_slot
	ta2_6_rat_a ta2_5_rat_a ta2_4_rat_a ta2_3_rat_a ta2_2_rat_a ta2_1_rat_a - tank_slot
	ta2_3_oca1 ta2_2_oca1 ta2_1_oca1 - tank_slot
	ta2_1_oc1b - tank_slot
	ta3_2_lco ta3_1_lco - tank_slot
	ta3_3_gasoleo ta3_2_gasoleo ta3_1_gasoleo - tank_slot
	ta3_6_rat_a ta3_5_rat_a ta3_4_rat_a ta3_3_rat_a ta3_2_rat_a ta3_1_rat_a - tank_slot
	ta3_3_oca1 ta3_2_oca1 ta3_1_oca1 - tank_slot
	ta3_1_oc1b - tank_slot
	ta4_2_lco ta4_1_lco - tank_slot
	ta4_3_gasoleo ta4_2_gasoleo ta4_1_gasoleo - tank_slot
	ta4_6_rat_a ta4_5_rat_a ta4_4_rat_a ta4_3_rat_a ta4_2_rat_a ta4_1_rat_a - tank_slot
	ta4_3_oca1 ta4_2_oca1 ta4_1_oca1 - tank_slot
	ta4_1_oc1b - tank_slot
	

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
    	(tank_slot_product_location ta1_2_lco lco a1)
	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_3_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_6_rat_a rat_a a1)
	(tank_slot_product_location ta1_5_rat_a rat_a a1)
	(tank_slot_product_location ta1_4_rat_a rat_a a1)
	(tank_slot_product_location ta1_3_rat_a rat_a a1)
	(tank_slot_product_location ta1_2_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_3_oca1 oca1 a1)
	(tank_slot_product_location ta1_2_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_2_lco lco a2)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_3_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_6_rat_a rat_a a2)
	(tank_slot_product_location ta2_5_rat_a rat_a a2)
	(tank_slot_product_location ta2_4_rat_a rat_a a2)
	(tank_slot_product_location ta2_3_rat_a rat_a a2)
	(tank_slot_product_location ta2_2_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_3_oca1 oca1 a2)
	(tank_slot_product_location ta2_2_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_2_lco lco a3)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_3_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_6_rat_a rat_a a3)
	(tank_slot_product_location ta3_5_rat_a rat_a a3)
	(tank_slot_product_location ta3_4_rat_a rat_a a3)
	(tank_slot_product_location ta3_3_rat_a rat_a a3)
	(tank_slot_product_location ta3_2_rat_a rat_a a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_3_oca1 oca1 a3)
	(tank_slot_product_location ta3_2_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_2_lco lco a4)
	(tank_slot_product_location ta4_1_lco lco a4)
	(tank_slot_product_location ta4_3_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_2_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_6_rat_a rat_a a4)
	(tank_slot_product_location ta4_5_rat_a rat_a a4)
	(tank_slot_product_location ta4_4_rat_a rat_a a4)
	(tank_slot_product_location ta4_3_rat_a rat_a a4)
	(tank_slot_product_location ta4_2_rat_a rat_a a4)
	(tank_slot_product_location ta4_1_rat_a rat_a a4)
	(tank_slot_product_location ta4_3_oca1 oca1 a4)
	(tank_slot_product_location ta4_2_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 rat_a)
	(is_product b17 rat_a)
	(is_product b14 gasoleo)
	(is_product b4 rat_a)
	(is_product b6 lco)
	(is_product b15 gasoleo)
	(is_product b19 oc1b)
	(is_product b13 oca1)
	(is_product b8 rat_a)
	(is_product b2 oca1)
	(is_product b11 rat_a)
	(is_product b5 lco)
	(is_product b0 gasoleo)
	(is_product b1 rat_a)
	(is_product b18 rat_a)
	(is_product b7 rat_a)
	(is_product b12 oca1)
	(is_product b9 lco)
	(is_product b3 oca1)
	(is_product b16 gasoleo)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b17 a2)
	(occupied ta2_1_rat_a)
	
	(on b14 a3)
	(occupied ta3_1_gasoleo)
	
	(on b4 a3)
	(occupied ta3_1_rat_a)
	
	(on b15 a2)
	(occupied ta2_1_gasoleo)
	
	(on b19 a2)
	(occupied ta2_1_oc1b)
	
	(on b13 a4)
	(occupied ta4_1_oca1)
	
	(on b8 a1)
	(occupied ta1_1_rat_a)
	
	(on b2 a1)
	(occupied ta1_1_oca1)
	
	(on b11 a2)
	(occupied ta2_2_rat_a)
	
	(on b5 a1)
	(occupied ta1_1_lco)
	
	(on b1 a3)
	(occupied ta3_2_rat_a)
	
	(on b7 a3)
	(occupied ta3_3_rat_a)
	
	(on b12 a1)
	(occupied ta1_2_oca1)
	
	(on b3 a3)
	(occupied ta3_1_oca1)
	
	(on b16 a3)
	(occupied ta3_2_gasoleo)
	
	(not_occupied ta1_2_lco)
	(not_occupied ta1_1_gasoleo)
	(not_occupied ta1_2_gasoleo)
	(not_occupied ta1_3_gasoleo)
	(not_occupied ta1_2_rat_a)
	(not_occupied ta1_3_rat_a)
	(not_occupied ta1_4_rat_a)
	(not_occupied ta1_5_rat_a)
	(not_occupied ta1_6_rat_a)
	(not_occupied ta1_3_oca1)
	(not_occupied ta1_1_oc1b)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_2_lco)
	(not_occupied ta2_2_gasoleo)
	(not_occupied ta2_3_gasoleo)
	(not_occupied ta2_3_rat_a)
	(not_occupied ta2_4_rat_a)
	(not_occupied ta2_5_rat_a)
	(not_occupied ta2_6_rat_a)
	(not_occupied ta2_1_oca1)
	(not_occupied ta2_2_oca1)
	(not_occupied ta2_3_oca1)
	(not_occupied ta3_1_lco)
	(not_occupied ta3_2_lco)
	(not_occupied ta3_3_gasoleo)
	(not_occupied ta3_4_rat_a)
	(not_occupied ta3_5_rat_a)
	(not_occupied ta3_6_rat_a)
	(not_occupied ta3_2_oca1)
	(not_occupied ta3_3_oca1)
	(not_occupied ta3_1_oc1b)
	(not_occupied ta4_1_lco)
	(not_occupied ta4_2_lco)
	(not_occupied ta4_1_gasoleo)
	(not_occupied ta4_2_gasoleo)
	(not_occupied ta4_3_gasoleo)
	(not_occupied ta4_1_rat_a)
	(not_occupied ta4_2_rat_a)
	(not_occupied ta4_3_rat_a)
	(not_occupied ta4_4_rat_a)
	(not_occupied ta4_5_rat_a)
	(not_occupied ta4_6_rat_a)
	(not_occupied ta4_2_oca1)
	(not_occupied ta4_3_oca1)
	(not_occupied ta4_1_oc1b)
	

    ;; batch_atoms initially located in pipes
    	(first b6 s12)
	(follow b0 b6)
	(last b0 s12)
	(first b18 s13)
	(follow b10 b18)
	(last b10 s13)
	(first b9 s34)
	(last b9 s34)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)

  )
  (:goal (and
    	(on b10 a3)
	(on b4 a1)
	(on b6 a3)
	(on b13 a1)
	(on b2 a2)
	(on b11 a1)
	(on b18 a2)
	(on b12 a4)
			(normal s12)
		(normal s13)
		(normal s34)

  ))
)
