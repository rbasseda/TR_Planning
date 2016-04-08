
(define (problem p41_net5_b22_g2_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b4 b6 b15 b19 b20 b13 b8 b2 b11 b5 b0 b1 b18 b7 b9 b12 b3 b16 - batch_atom
	a1 a2 a3 a4 a5 - area
	s12 s13 s34 s23 s15 - pipe
	ta1_1_lco - tank_slot
	ta1_1_gasoleo - tank_slot
	ta1_1_rat_a - tank_slot
	ta1_1_oca1 - tank_slot
	ta1_1_oc1b - tank_slot
	ta2_1_lco - tank_slot
	ta2_1_gasoleo - tank_slot
	ta2_1_rat_a - tank_slot
	ta2_1_oca1 - tank_slot
	ta2_1_oc1b - tank_slot
	ta3_1_lco - tank_slot
	ta3_1_gasoleo - tank_slot
	ta3_1_rat_a - tank_slot
	ta3_3_oca1 ta3_2_oca1 ta3_1_oca1 - tank_slot
	ta3_1_oc1b - tank_slot
	ta4_1_lco - tank_slot
	ta4_1_gasoleo - tank_slot
	ta4_1_rat_a - tank_slot
	ta4_1_oca1 - tank_slot
	ta4_1_oc1b - tank_slot
	ta5_1_lco - tank_slot
	ta5_1_gasoleo - tank_slot
	ta5_1_rat_a - tank_slot
	ta5_1_oca1 - tank_slot
	ta5_1_oc1b - tank_slot
	

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
	

    ;; specify tank location
    	(tank_slot_product_location ta1_1_lco lco a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_3_oca1 oca1 a3)
	(tank_slot_product_location ta3_2_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_1_lco lco a4)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_rat_a rat_a a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	(tank_slot_product_location ta5_1_lco lco a5)
	(tank_slot_product_location ta5_1_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_1_rat_a rat_a a5)
	(tank_slot_product_location ta5_1_oca1 oca1 a5)
	(tank_slot_product_location ta5_1_oc1b oc1b a5)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 gasoleo)
	(is_product b21 rat_a)
	(is_product b17 oca1)
	(is_product b14 lco)
	(is_product b4 oc1b)
	(is_product b6 gasoleo)
	(is_product b15 gasoleo)
	(is_product b19 lco)
	(is_product b20 oca1)
	(is_product b13 gasoleo)
	(is_product b8 rat_a)
	(is_product b2 lco)
	(is_product b11 gasoleo)
	(is_product b5 oca1)
	(is_product b0 rat_a)
	(is_product b1 gasoleo)
	(is_product b18 oca1)
	(is_product b7 oca1)
	(is_product b9 oc1b)
	(is_product b12 gasoleo)
	(is_product b3 oc1b)
	(is_product b16 oca1)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b10 a1)
	(occupied ta1_1_gasoleo)
	
	(on b17 a4)
	(occupied ta4_1_oca1)
	
	(on b4 a5)
	(occupied ta5_1_oc1b)
	
	(on b15 a4)
	(occupied ta4_1_gasoleo)
	
	(on b19 a5)
	(occupied ta5_1_lco)
	
	(on b20 a3)
	(occupied ta3_1_oca1)
	
	(on b2 a4)
	(occupied ta4_1_lco)
	
	(on b5 a3)
	(occupied ta3_2_oca1)
	
	(on b0 a4)
	(occupied ta4_1_rat_a)
	
	(on b18 a3)
	(occupied ta3_3_oca1)
	
	(not_occupied ta1_1_lco)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta1_1_oca1)
	(not_occupied ta1_1_oc1b)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_1_gasoleo)
	(not_occupied ta2_1_rat_a)
	(not_occupied ta2_1_oca1)
	(not_occupied ta2_1_oc1b)
	(not_occupied ta3_1_lco)
	(not_occupied ta3_1_gasoleo)
	(not_occupied ta3_1_rat_a)
	(not_occupied ta3_1_oc1b)
	(not_occupied ta4_1_oc1b)
	(not_occupied ta5_1_gasoleo)
	(not_occupied ta5_1_rat_a)
	(not_occupied ta5_1_oca1)
	

    ;; batch_atoms initially located in pipes
    	(first b21 s12)
	(follow b11 b21)
	(last b11 s12)
	(first b13 s13)
	(follow b8 b13)
	(last b8 s13)
	(first b1 s34)
	(last b1 s34)
	(first b6 s23)
	(follow b9 b6)
	(follow b16 b9)
	(last b16 s23)
	(first b14 s15)
	(follow b12 b14)
	(follow b7 b12)
	(follow b3 b7)
	(last b3 s15)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)
		(not_unitary s15)

  )
  (:goal (and
    	(on b10 a3)
	(on b12 a1)
			(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)
		(normal s15)

  ))
)
