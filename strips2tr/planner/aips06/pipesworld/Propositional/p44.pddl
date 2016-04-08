
(define (problem p44_net5_b24_g5_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b22 b4 b6 b15 b19 b20 b13 b8 b2 b11 b5 b0 b1 b18 b7 b12 b9 b3 b23 b16 - batch_atom
	a1 a2 a3 a4 a5 - area
	s12 s13 s34 s23 s15 - pipe
	ta1_1_lco - tank_slot
	ta1_7_gasoleo ta1_6_gasoleo ta1_5_gasoleo ta1_4_gasoleo ta1_3_gasoleo ta1_2_gasoleo ta1_1_gasoleo - tank_slot
	ta1_2_rat_a ta1_1_rat_a - tank_slot
	ta1_3_oca1 ta1_2_oca1 ta1_1_oca1 - tank_slot
	ta1_6_oc1b ta1_5_oc1b ta1_4_oc1b ta1_3_oc1b ta1_2_oc1b ta1_1_oc1b - tank_slot
	ta2_1_lco - tank_slot
	ta2_7_gasoleo ta2_6_gasoleo ta2_5_gasoleo ta2_4_gasoleo ta2_3_gasoleo ta2_2_gasoleo ta2_1_gasoleo - tank_slot
	ta2_2_rat_a ta2_1_rat_a - tank_slot
	ta2_3_oca1 ta2_2_oca1 ta2_1_oca1 - tank_slot
	ta2_6_oc1b ta2_5_oc1b ta2_4_oc1b ta2_3_oc1b ta2_2_oc1b ta2_1_oc1b - tank_slot
	ta3_1_lco - tank_slot
	ta3_7_gasoleo ta3_6_gasoleo ta3_5_gasoleo ta3_4_gasoleo ta3_3_gasoleo ta3_2_gasoleo ta3_1_gasoleo - tank_slot
	ta3_2_rat_a ta3_1_rat_a - tank_slot
	ta3_3_oca1 ta3_2_oca1 ta3_1_oca1 - tank_slot
	ta3_6_oc1b ta3_5_oc1b ta3_4_oc1b ta3_3_oc1b ta3_2_oc1b ta3_1_oc1b - tank_slot
	ta4_1_lco - tank_slot
	ta4_7_gasoleo ta4_6_gasoleo ta4_5_gasoleo ta4_4_gasoleo ta4_3_gasoleo ta4_2_gasoleo ta4_1_gasoleo - tank_slot
	ta4_2_rat_a ta4_1_rat_a - tank_slot
	ta4_3_oca1 ta4_2_oca1 ta4_1_oca1 - tank_slot
	ta4_6_oc1b ta4_5_oc1b ta4_4_oc1b ta4_3_oc1b ta4_2_oc1b ta4_1_oc1b - tank_slot
	ta5_1_lco - tank_slot
	ta5_7_gasoleo ta5_6_gasoleo ta5_5_gasoleo ta5_4_gasoleo ta5_3_gasoleo ta5_2_gasoleo ta5_1_gasoleo - tank_slot
	ta5_2_rat_a ta5_1_rat_a - tank_slot
	ta5_3_oca1 ta5_2_oca1 ta5_1_oca1 - tank_slot
	ta5_6_oc1b ta5_5_oc1b ta5_4_oc1b ta5_3_oc1b ta5_2_oc1b ta5_1_oc1b - tank_slot
	

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
	(tank_slot_product_location ta1_7_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_6_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_5_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_4_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_3_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_1_gasoleo gasoleo a1)
	(tank_slot_product_location ta1_2_rat_a rat_a a1)
	(tank_slot_product_location ta1_1_rat_a rat_a a1)
	(tank_slot_product_location ta1_3_oca1 oca1 a1)
	(tank_slot_product_location ta1_2_oca1 oca1 a1)
	(tank_slot_product_location ta1_1_oca1 oca1 a1)
	(tank_slot_product_location ta1_6_oc1b oc1b a1)
	(tank_slot_product_location ta1_5_oc1b oc1b a1)
	(tank_slot_product_location ta1_4_oc1b oc1b a1)
	(tank_slot_product_location ta1_3_oc1b oc1b a1)
	(tank_slot_product_location ta1_2_oc1b oc1b a1)
	(tank_slot_product_location ta1_1_oc1b oc1b a1)
	(tank_slot_product_location ta2_1_lco lco a2)
	(tank_slot_product_location ta2_7_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_6_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_5_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_4_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_3_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_1_gasoleo gasoleo a2)
	(tank_slot_product_location ta2_2_rat_a rat_a a2)
	(tank_slot_product_location ta2_1_rat_a rat_a a2)
	(tank_slot_product_location ta2_3_oca1 oca1 a2)
	(tank_slot_product_location ta2_2_oca1 oca1 a2)
	(tank_slot_product_location ta2_1_oca1 oca1 a2)
	(tank_slot_product_location ta2_6_oc1b oc1b a2)
	(tank_slot_product_location ta2_5_oc1b oc1b a2)
	(tank_slot_product_location ta2_4_oc1b oc1b a2)
	(tank_slot_product_location ta2_3_oc1b oc1b a2)
	(tank_slot_product_location ta2_2_oc1b oc1b a2)
	(tank_slot_product_location ta2_1_oc1b oc1b a2)
	(tank_slot_product_location ta3_1_lco lco a3)
	(tank_slot_product_location ta3_7_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_6_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_5_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_4_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_3_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_1_gasoleo gasoleo a3)
	(tank_slot_product_location ta3_2_rat_a rat_a a3)
	(tank_slot_product_location ta3_1_rat_a rat_a a3)
	(tank_slot_product_location ta3_3_oca1 oca1 a3)
	(tank_slot_product_location ta3_2_oca1 oca1 a3)
	(tank_slot_product_location ta3_1_oca1 oca1 a3)
	(tank_slot_product_location ta3_6_oc1b oc1b a3)
	(tank_slot_product_location ta3_5_oc1b oc1b a3)
	(tank_slot_product_location ta3_4_oc1b oc1b a3)
	(tank_slot_product_location ta3_3_oc1b oc1b a3)
	(tank_slot_product_location ta3_2_oc1b oc1b a3)
	(tank_slot_product_location ta3_1_oc1b oc1b a3)
	(tank_slot_product_location ta4_1_lco lco a4)
	(tank_slot_product_location ta4_7_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_6_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_5_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_4_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_3_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_2_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_1_gasoleo gasoleo a4)
	(tank_slot_product_location ta4_2_rat_a rat_a a4)
	(tank_slot_product_location ta4_1_rat_a rat_a a4)
	(tank_slot_product_location ta4_3_oca1 oca1 a4)
	(tank_slot_product_location ta4_2_oca1 oca1 a4)
	(tank_slot_product_location ta4_1_oca1 oca1 a4)
	(tank_slot_product_location ta4_6_oc1b oc1b a4)
	(tank_slot_product_location ta4_5_oc1b oc1b a4)
	(tank_slot_product_location ta4_4_oc1b oc1b a4)
	(tank_slot_product_location ta4_3_oc1b oc1b a4)
	(tank_slot_product_location ta4_2_oc1b oc1b a4)
	(tank_slot_product_location ta4_1_oc1b oc1b a4)
	(tank_slot_product_location ta5_1_lco lco a5)
	(tank_slot_product_location ta5_7_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_6_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_5_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_4_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_3_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_2_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_1_gasoleo gasoleo a5)
	(tank_slot_product_location ta5_2_rat_a rat_a a5)
	(tank_slot_product_location ta5_1_rat_a rat_a a5)
	(tank_slot_product_location ta5_3_oca1 oca1 a5)
	(tank_slot_product_location ta5_2_oca1 oca1 a5)
	(tank_slot_product_location ta5_1_oca1 oca1 a5)
	(tank_slot_product_location ta5_6_oc1b oc1b a5)
	(tank_slot_product_location ta5_5_oc1b oc1b a5)
	(tank_slot_product_location ta5_4_oc1b oc1b a5)
	(tank_slot_product_location ta5_3_oc1b oc1b a5)
	(tank_slot_product_location ta5_2_oc1b oc1b a5)
	(tank_slot_product_location ta5_1_oc1b oc1b a5)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch_atoms products
    	(is_product b10 oc1b)
	(is_product b21 oca1)
	(is_product b17 rat_a)
	(is_product b14 gasoleo)
	(is_product b22 oc1b)
	(is_product b4 rat_a)
	(is_product b6 oc1b)
	(is_product b15 oca1)
	(is_product b19 gasoleo)
	(is_product b20 oca1)
	(is_product b13 lco)
	(is_product b8 oc1b)
	(is_product b2 gasoleo)
	(is_product b11 gasoleo)
	(is_product b5 gasoleo)
	(is_product b0 gasoleo)
	(is_product b1 gasoleo)
	(is_product b18 oca1)
	(is_product b7 gasoleo)
	(is_product b12 rat_a)
	(is_product b9 oc1b)
	(is_product b3 oc1b)
	(is_product b23 oc1b)
	(is_product b16 gasoleo)
	

    ;; specify tank current volume
    	

    ;; batch_atoms initially located in areas
    	(on b17 a3)
	(occupied ta3_1_rat_a)
	
	(on b15 a3)
	(occupied ta3_1_oca1)
	
	(on b19 a3)
	(occupied ta3_1_gasoleo)
	
	(on b20 a1)
	(occupied ta1_1_oca1)
	
	(on b13 a1)
	(occupied ta1_1_lco)
	
	(on b2 a5)
	(occupied ta5_1_gasoleo)
	
	(on b11 a5)
	(occupied ta5_2_gasoleo)
	
	(on b5 a2)
	(occupied ta2_1_gasoleo)
	
	(on b0 a4)
	(occupied ta4_1_gasoleo)
	
	(on b18 a2)
	(occupied ta2_1_oca1)
	
	(on b7 a3)
	(occupied ta3_2_gasoleo)
	
	(on b23 a2)
	(occupied ta2_1_oc1b)
	
	(not_occupied ta1_1_gasoleo)
	(not_occupied ta1_2_gasoleo)
	(not_occupied ta1_3_gasoleo)
	(not_occupied ta1_4_gasoleo)
	(not_occupied ta1_5_gasoleo)
	(not_occupied ta1_6_gasoleo)
	(not_occupied ta1_7_gasoleo)
	(not_occupied ta1_1_rat_a)
	(not_occupied ta1_2_rat_a)
	(not_occupied ta1_2_oca1)
	(not_occupied ta1_3_oca1)
	(not_occupied ta1_1_oc1b)
	(not_occupied ta1_2_oc1b)
	(not_occupied ta1_3_oc1b)
	(not_occupied ta1_4_oc1b)
	(not_occupied ta1_5_oc1b)
	(not_occupied ta1_6_oc1b)
	(not_occupied ta2_1_lco)
	(not_occupied ta2_2_gasoleo)
	(not_occupied ta2_3_gasoleo)
	(not_occupied ta2_4_gasoleo)
	(not_occupied ta2_5_gasoleo)
	(not_occupied ta2_6_gasoleo)
	(not_occupied ta2_7_gasoleo)
	(not_occupied ta2_1_rat_a)
	(not_occupied ta2_2_rat_a)
	(not_occupied ta2_2_oca1)
	(not_occupied ta2_3_oca1)
	(not_occupied ta2_2_oc1b)
	(not_occupied ta2_3_oc1b)
	(not_occupied ta2_4_oc1b)
	(not_occupied ta2_5_oc1b)
	(not_occupied ta2_6_oc1b)
	(not_occupied ta3_1_lco)
	(not_occupied ta3_3_gasoleo)
	(not_occupied ta3_4_gasoleo)
	(not_occupied ta3_5_gasoleo)
	(not_occupied ta3_6_gasoleo)
	(not_occupied ta3_7_gasoleo)
	(not_occupied ta3_2_rat_a)
	(not_occupied ta3_2_oca1)
	(not_occupied ta3_3_oca1)
	(not_occupied ta3_1_oc1b)
	(not_occupied ta3_2_oc1b)
	(not_occupied ta3_3_oc1b)
	(not_occupied ta3_4_oc1b)
	(not_occupied ta3_5_oc1b)
	(not_occupied ta3_6_oc1b)
	(not_occupied ta4_1_lco)
	(not_occupied ta4_2_gasoleo)
	(not_occupied ta4_3_gasoleo)
	(not_occupied ta4_4_gasoleo)
	(not_occupied ta4_5_gasoleo)
	(not_occupied ta4_6_gasoleo)
	(not_occupied ta4_7_gasoleo)
	(not_occupied ta4_1_rat_a)
	(not_occupied ta4_2_rat_a)
	(not_occupied ta4_1_oca1)
	(not_occupied ta4_2_oca1)
	(not_occupied ta4_3_oca1)
	(not_occupied ta4_1_oc1b)
	(not_occupied ta4_2_oc1b)
	(not_occupied ta4_3_oc1b)
	(not_occupied ta4_4_oc1b)
	(not_occupied ta4_5_oc1b)
	(not_occupied ta4_6_oc1b)
	(not_occupied ta5_1_lco)
	(not_occupied ta5_3_gasoleo)
	(not_occupied ta5_4_gasoleo)
	(not_occupied ta5_5_gasoleo)
	(not_occupied ta5_6_gasoleo)
	(not_occupied ta5_7_gasoleo)
	(not_occupied ta5_1_rat_a)
	(not_occupied ta5_2_rat_a)
	(not_occupied ta5_1_oca1)
	(not_occupied ta5_2_oca1)
	(not_occupied ta5_3_oca1)
	(not_occupied ta5_1_oc1b)
	(not_occupied ta5_2_oc1b)
	(not_occupied ta5_3_oc1b)
	(not_occupied ta5_4_oc1b)
	(not_occupied ta5_5_oc1b)
	(not_occupied ta5_6_oc1b)
	

    ;; batch_atoms initially located in pipes
    	(first b8 s12)
	(follow b16 b8)
	(last b16 s12)
	(first b4 s13)
	(follow b12 b4)
	(last b12 s13)
	(first b21 s34)
	(last b21 s34)
	(first b10 s23)
	(follow b22 b10)
	(follow b9 b22)
	(last b9 s23)
	(first b1 s15)
	(follow b3 b1)
	(follow b14 b3)
	(follow b6 b14)
	(last b6 s15)
	
    ;; unitary pipeline segments
    		(not_unitary s12)
		(not_unitary s13)
		(unitary s34)
		(not_unitary s23)
		(not_unitary s15)

  )
  (:goal (and
    	(on b22 a2)
	(on b13 a4)
	(on b8 a2)
	(on b11 a4)
	(on b3 a2)
			(normal s12)
		(normal s13)
		(normal s34)
		(normal s23)
		(normal s15)

  ))
)
