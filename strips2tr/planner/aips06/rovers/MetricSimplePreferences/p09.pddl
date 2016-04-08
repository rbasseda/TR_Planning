
(define (problem roverprob19841-5)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover0store - store waypoint0 - waypoint waypoint1 -
         waypoint waypoint2 - waypoint waypoint3 - waypoint waypoint4 -
         waypoint waypoint5 - waypoint waypoint6 - waypoint waypoint7 -
         waypoint waypoint8 - waypoint waypoint9 - waypoint waypoint10 -
         waypoint waypoint11 - waypoint waypoint12 - waypoint waypoint13 -
         waypoint waypoint14 - waypoint camera0 - camera camera1 - camera
         camera2 - camera objective0 - objective objective1 - objective
         objective2 - objective objective3 - objective objective4 - objective
         objective5 - objective objective6 - objective objective7 - objective
         objective8 - objective objective9 - objective objective10 - objective
         objective11 - objective objective12 - objective objective13 -
         objective objective14 - objective)
        (:init (visible waypoint0 waypoint7) (visible waypoint7 waypoint0)
         (visible waypoint0 waypoint14) (visible waypoint14 waypoint0)
         (visible waypoint1 waypoint5) (visible waypoint5 waypoint1)
         (visible waypoint1 waypoint8) (visible waypoint8 waypoint1)
         (visible waypoint1 waypoint9) (visible waypoint9 waypoint1)
         (visible waypoint1 waypoint10) (visible waypoint10 waypoint1)
         (visible waypoint1 waypoint13) (visible waypoint13 waypoint1)
         (visible waypoint2 waypoint1) (visible waypoint1 waypoint2)
         (visible waypoint2 waypoint6) (visible waypoint6 waypoint2)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (visible waypoint3 waypoint4) (visible waypoint4 waypoint3)
         (visible waypoint3 waypoint14) (visible waypoint14 waypoint3)
         (visible waypoint4 waypoint1) (visible waypoint1 waypoint4)
         (visible waypoint4 waypoint14) (visible waypoint14 waypoint4)
         (visible waypoint5 waypoint7) (visible waypoint7 waypoint5)
         (visible waypoint5 waypoint10) (visible waypoint10 waypoint5)
         (visible waypoint5 waypoint11) (visible waypoint11 waypoint5)
         (visible waypoint6 waypoint5) (visible waypoint5 waypoint6)
         (visible waypoint6 waypoint7) (visible waypoint7 waypoint6)
         (visible waypoint6 waypoint9) (visible waypoint9 waypoint6)
         (visible waypoint6 waypoint10) (visible waypoint10 waypoint6)
         (visible waypoint6 waypoint11) (visible waypoint11 waypoint6)
         (visible waypoint6 waypoint13) (visible waypoint13 waypoint6)
         (visible waypoint6 waypoint14) (visible waypoint14 waypoint6)
         (visible waypoint7 waypoint2) (visible waypoint2 waypoint7)
         (visible waypoint7 waypoint3) (visible waypoint3 waypoint7)
         (visible waypoint7 waypoint8) (visible waypoint8 waypoint7)
         (visible waypoint7 waypoint10) (visible waypoint10 waypoint7)
         (visible waypoint7 waypoint14) (visible waypoint14 waypoint7)
         (visible waypoint8 waypoint2) (visible waypoint2 waypoint8)
         (visible waypoint8 waypoint4) (visible waypoint4 waypoint8)
         (visible waypoint8 waypoint5) (visible waypoint5 waypoint8)
         (visible waypoint9 waypoint2) (visible waypoint2 waypoint9)
         (visible waypoint9 waypoint4) (visible waypoint4 waypoint9)
         (visible waypoint9 waypoint5) (visible waypoint5 waypoint9)
         (visible waypoint9 waypoint14) (visible waypoint14 waypoint9)
         (visible waypoint10 waypoint4) (visible waypoint4 waypoint10)
         (visible waypoint10 waypoint12) (visible waypoint12 waypoint10)
         (visible waypoint11 waypoint1) (visible waypoint1 waypoint11)
         (visible waypoint11 waypoint3) (visible waypoint3 waypoint11)
         (visible waypoint11 waypoint7) (visible waypoint7 waypoint11)
         (visible waypoint11 waypoint9) (visible waypoint9 waypoint11)
         (visible waypoint11 waypoint10) (visible waypoint10 waypoint11)
         (visible waypoint11 waypoint12) (visible waypoint12 waypoint11)
         (visible waypoint12 waypoint2) (visible waypoint2 waypoint12)
         (visible waypoint12 waypoint5) (visible waypoint5 waypoint12)
         (visible waypoint12 waypoint6) (visible waypoint6 waypoint12)
         (visible waypoint12 waypoint8) (visible waypoint8 waypoint12)
         (visible waypoint13 waypoint8) (visible waypoint8 waypoint13)
         (visible waypoint13 waypoint9) (visible waypoint9 waypoint13)
         (visible waypoint14 waypoint8) (visible waypoint8 waypoint14)
         (at_rock_sample waypoint0) (at_soil_sample waypoint1)
         (at_rock_sample waypoint1) (at_soil_sample waypoint3)
         (at_rock_sample waypoint3) (at_soil_sample waypoint4)
         (at_rock_sample waypoint4) (at_soil_sample waypoint5)
         (at_rock_sample waypoint5) (at_rock_sample waypoint6)
         (at_soil_sample waypoint7) (at_rock_sample waypoint7)
         (at_soil_sample waypoint8) (at_rock_sample waypoint9)
         (at_soil_sample waypoint10) (at_rock_sample waypoint10)
         (at_soil_sample waypoint11) (at_rock_sample waypoint11)
         (at_soil_sample waypoint12) (at_soil_sample waypoint14)
         (at_lander general waypoint3) (channel_free general)
         (at rover0 waypoint9) (available rover0) (store_of rover0store rover0)
         (empty rover0store) (equipped_for_soil_analysis rover0)
         (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint9 waypoint1)
         (can_traverse rover0 waypoint1 waypoint9)
         (can_traverse rover0 waypoint9 waypoint2)
         (can_traverse rover0 waypoint2 waypoint9)
         (can_traverse rover0 waypoint9 waypoint4)
         (can_traverse rover0 waypoint4 waypoint9)
         (can_traverse rover0 waypoint9 waypoint5)
         (can_traverse rover0 waypoint5 waypoint9)
         (can_traverse rover0 waypoint9 waypoint6)
         (can_traverse rover0 waypoint6 waypoint9)
         (can_traverse rover0 waypoint9 waypoint11)
         (can_traverse rover0 waypoint11 waypoint9)
         (can_traverse rover0 waypoint1 waypoint3)
         (can_traverse rover0 waypoint3 waypoint1)
         (can_traverse rover0 waypoint1 waypoint10)
         (can_traverse rover0 waypoint10 waypoint1)
         (can_traverse rover0 waypoint1 waypoint13)
         (can_traverse rover0 waypoint13 waypoint1)
         (can_traverse rover0 waypoint2 waypoint7)
         (can_traverse rover0 waypoint7 waypoint2)
         (can_traverse rover0 waypoint2 waypoint12)
         (can_traverse rover0 waypoint12 waypoint2)
         (can_traverse rover0 waypoint4 waypoint14)
         (can_traverse rover0 waypoint14 waypoint4)
         (can_traverse rover0 waypoint5 waypoint8)
         (can_traverse rover0 waypoint8 waypoint5) (on_board camera0 rover0)
         (calibration_target camera0 objective10) (supports camera0 colour)
         (supports camera0 high_res) (supports camera0 low_res)
         (on_board camera1 rover0) (calibration_target camera1 objective5)
         (supports camera1 colour) (supports camera1 high_res)
         (on_board camera2 rover0) (calibration_target camera2 objective4)
         (supports camera2 high_res) (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective0 waypoint4)
         (visible_from objective0 waypoint5)
         (visible_from objective0 waypoint6)
         (visible_from objective0 waypoint7)
         (visible_from objective0 waypoint8)
         (visible_from objective0 waypoint9)
         (visible_from objective0 waypoint10)
         (visible_from objective0 waypoint11)
         (visible_from objective0 waypoint12)
         (visible_from objective0 waypoint13)
         (visible_from objective0 waypoint14)
         (visible_from objective1 waypoint0)
         (visible_from objective1 waypoint1)
         (visible_from objective1 waypoint2)
         (visible_from objective2 waypoint0)
         (visible_from objective2 waypoint1)
         (visible_from objective2 waypoint2)
         (visible_from objective2 waypoint3)
         (visible_from objective2 waypoint4)
         (visible_from objective3 waypoint0)
         (visible_from objective3 waypoint1)
         (visible_from objective3 waypoint2)
         (visible_from objective3 waypoint3)
         (visible_from objective4 waypoint0)
         (visible_from objective4 waypoint1)
         (visible_from objective4 waypoint2)
         (visible_from objective4 waypoint3)
         (visible_from objective4 waypoint4)
         (visible_from objective4 waypoint5)
         (visible_from objective4 waypoint6)
         (visible_from objective4 waypoint7)
         (visible_from objective4 waypoint8)
         (visible_from objective4 waypoint9)
         (visible_from objective5 waypoint0)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
         (visible_from objective7 waypoint0)
         (visible_from objective7 waypoint1)
         (visible_from objective7 waypoint2)
         (visible_from objective7 waypoint3)
         (visible_from objective7 waypoint4)
         (visible_from objective7 waypoint5)
         (visible_from objective7 waypoint6)
         (visible_from objective7 waypoint7)
         (visible_from objective7 waypoint8)
         (visible_from objective7 waypoint9)
         (visible_from objective7 waypoint10)
         (visible_from objective7 waypoint11)
         (visible_from objective8 waypoint0)
         (visible_from objective8 waypoint1)
         (visible_from objective8 waypoint2)
         (visible_from objective8 waypoint3)
         (visible_from objective8 waypoint4)
         (visible_from objective8 waypoint5)
         (visible_from objective8 waypoint6)
         (visible_from objective8 waypoint7)
         (visible_from objective8 waypoint8)
         (visible_from objective8 waypoint9)
         (visible_from objective8 waypoint10)
         (visible_from objective8 waypoint11)
         (visible_from objective8 waypoint12)
         (visible_from objective8 waypoint13)
         (visible_from objective8 waypoint14)
         (visible_from objective9 waypoint0)
         (visible_from objective9 waypoint1)
         (visible_from objective9 waypoint2)
         (visible_from objective9 waypoint3)
         (visible_from objective9 waypoint4)
         (visible_from objective9 waypoint5)
         (visible_from objective9 waypoint6)
         (visible_from objective9 waypoint7)
         (visible_from objective10 waypoint0)
         (visible_from objective10 waypoint1)
         (visible_from objective10 waypoint2)
         (visible_from objective11 waypoint0)
         (visible_from objective11 waypoint1)
         (visible_from objective11 waypoint2)
         (visible_from objective11 waypoint3)
         (visible_from objective11 waypoint4)
         (visible_from objective11 waypoint5)
         (visible_from objective12 waypoint0)
         (visible_from objective12 waypoint1)
         (visible_from objective12 waypoint2)
         (visible_from objective12 waypoint3)
         (visible_from objective12 waypoint4)
         (visible_from objective12 waypoint5)
         (visible_from objective12 waypoint6)
         (visible_from objective12 waypoint7)
         (visible_from objective12 waypoint8)
         (visible_from objective12 waypoint9)
         (visible_from objective12 waypoint10)
         (visible_from objective13 waypoint0)
         (visible_from objective13 waypoint1)
         (visible_from objective13 waypoint2)
         (visible_from objective13 waypoint3)
         (visible_from objective14 waypoint0)
         (visible_from objective14 waypoint1)
         (= (traverse_cost rover0 waypoint9 waypoint1) 91)
         (= (traverse_cost rover0 waypoint1 waypoint9) 63.5)
         (= (traverse_cost rover0 waypoint9 waypoint2) 14)
         (= (traverse_cost rover0 waypoint2 waypoint9) 19)
         (= (traverse_cost rover0 waypoint9 waypoint4) 15.7)
         (= (traverse_cost rover0 waypoint4 waypoint9) 20.1)
         (= (traverse_cost rover0 waypoint9 waypoint5) 25)
         (= (traverse_cost rover0 waypoint5 waypoint9) 44.8)
         (= (traverse_cost rover0 waypoint9 waypoint6) 63.2)
         (= (traverse_cost rover0 waypoint6 waypoint9) 55.8)
         (= (traverse_cost rover0 waypoint9 waypoint11) 57.7)
         (= (traverse_cost rover0 waypoint11 waypoint9) 64.2)
         (= (traverse_cost rover0 waypoint1 waypoint3) 51.9)
         (= (traverse_cost rover0 waypoint3 waypoint1) 26.5)
         (= (traverse_cost rover0 waypoint1 waypoint10) 12.9)
         (= (traverse_cost rover0 waypoint10 waypoint1) 10.4)
         (= (traverse_cost rover0 waypoint1 waypoint13) 6.7)
         (= (traverse_cost rover0 waypoint13 waypoint1) 15.6)
         (= (traverse_cost rover0 waypoint2 waypoint7) 24.9)
         (= (traverse_cost rover0 waypoint7 waypoint2) 18.1)
         (= (traverse_cost rover0 waypoint2 waypoint12) 101.4)
         (= (traverse_cost rover0 waypoint12 waypoint2) 58.6)
         (= (traverse_cost rover0 waypoint4 waypoint14) 47.7)
         (= (traverse_cost rover0 waypoint14 waypoint4) 107.3)
         (= (traverse_cost rover0 waypoint5 waypoint8) 16)
         (= (traverse_cost rover0 waypoint8 waypoint5) 14.1)
         (= (sum-traverse-cost) 0))
        (:goal
         (and (preference g0 (communicated_soil_data waypoint14))
              (preference g1 (communicated_soil_data waypoint12))
              (preference g2 (communicated_soil_data waypoint5))
              (preference g3 (communicated_soil_data waypoint4))
              (preference g4 (communicated_image_data objective12 low_res))
              (preference g5 (communicated_image_data objective12 high_res))
              (preference g6 (communicated_image_data objective9 low_res))
              (preference g7 (communicated_image_data objective0 low_res))
              (preference g8 (communicated_image_data objective0 high_res))))
        (:metric minimize
         (+ (* (is-violated g8) 8)
            (* (is-violated g7) 29)
            (* (is-violated g6) 31.6)
            (* (is-violated g5) 8.1)
            (* (is-violated g4) 33.4)
            (* (is-violated g3) 11.2)
            (* (is-violated g2) 84.8)
            (* (is-violated g1) 192.5)
            (* (is-violated g0) 61.3)
            (sum-traverse-cost))))
