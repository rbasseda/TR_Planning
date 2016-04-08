;; #########
;; # @ #   #
;; # $ $   #
;; ##$### ##
;; #  ...  #
;; #   #   #
;; ######  #
;;      ####

(define (problem p094_microban_sequential)
  (:domain sokoban_sequential)
  (:objects
    dir_down - direction
    dir_left - direction
    dir_right - direction
    dir_up - direction
    player_01 - player
    pos_1_1 - location
    pos_1_2 - location
    pos_1_3 - location
    pos_1_4 - location
    pos_1_5 - location
    pos_1_6 - location
    pos_1_7 - location
    pos_1_8 - location
    pos_2_1 - location
    pos_2_2 - location
    pos_2_3 - location
    pos_2_4 - location
    pos_2_5 - location
    pos_2_6 - location
    pos_2_7 - location
    pos_2_8 - location
    pos_3_1 - location
    pos_3_2 - location
    pos_3_3 - location
    pos_3_4 - location
    pos_3_5 - location
    pos_3_6 - location
    pos_3_7 - location
    pos_3_8 - location
    pos_4_1 - location
    pos_4_2 - location
    pos_4_3 - location
    pos_4_4 - location
    pos_4_5 - location
    pos_4_6 - location
    pos_4_7 - location
    pos_4_8 - location
    pos_5_1 - location
    pos_5_2 - location
    pos_5_3 - location
    pos_5_4 - location
    pos_5_5 - location
    pos_5_6 - location
    pos_5_7 - location
    pos_5_8 - location
    pos_6_1 - location
    pos_6_2 - location
    pos_6_3 - location
    pos_6_4 - location
    pos_6_5 - location
    pos_6_6 - location
    pos_6_7 - location
    pos_6_8 - location
    pos_7_1 - location
    pos_7_2 - location
    pos_7_3 - location
    pos_7_4 - location
    pos_7_5 - location
    pos_7_6 - location
    pos_7_7 - location
    pos_7_8 - location
    pos_8_1 - location
    pos_8_2 - location
    pos_8_3 - location
    pos_8_4 - location
    pos_8_5 - location
    pos_8_6 - location
    pos_8_7 - location
    pos_8_8 - location
    pos_9_1 - location
    pos_9_2 - location
    pos_9_3 - location
    pos_9_4 - location
    pos_9_5 - location
    pos_9_6 - location
    pos_9_7 - location
    pos_9_8 - location
    stone_01 - stone
    stone_02 - stone
    stone_03 - stone
  )
  (:init
    (is_goal pos_4_5)
    (is_goal pos_5_5)
    (is_goal pos_6_5)
    (is_nongoal pos_1_1)
    (is_nongoal pos_1_2)
    (is_nongoal pos_1_3)
    (is_nongoal pos_1_4)
    (is_nongoal pos_1_5)
    (is_nongoal pos_1_6)
    (is_nongoal pos_1_7)
    (is_nongoal pos_1_8)
    (is_nongoal pos_2_1)
    (is_nongoal pos_2_2)
    (is_nongoal pos_2_3)
    (is_nongoal pos_2_4)
    (is_nongoal pos_2_5)
    (is_nongoal pos_2_6)
    (is_nongoal pos_2_7)
    (is_nongoal pos_2_8)
    (is_nongoal pos_3_1)
    (is_nongoal pos_3_2)
    (is_nongoal pos_3_3)
    (is_nongoal pos_3_4)
    (is_nongoal pos_3_5)
    (is_nongoal pos_3_6)
    (is_nongoal pos_3_7)
    (is_nongoal pos_3_8)
    (is_nongoal pos_4_1)
    (is_nongoal pos_4_2)
    (is_nongoal pos_4_3)
    (is_nongoal pos_4_4)
    (is_nongoal pos_4_6)
    (is_nongoal pos_4_7)
    (is_nongoal pos_4_8)
    (is_nongoal pos_5_1)
    (is_nongoal pos_5_2)
    (is_nongoal pos_5_3)
    (is_nongoal pos_5_4)
    (is_nongoal pos_5_6)
    (is_nongoal pos_5_7)
    (is_nongoal pos_5_8)
    (is_nongoal pos_6_1)
    (is_nongoal pos_6_2)
    (is_nongoal pos_6_3)
    (is_nongoal pos_6_4)
    (is_nongoal pos_6_6)
    (is_nongoal pos_6_7)
    (is_nongoal pos_6_8)
    (is_nongoal pos_7_1)
    (is_nongoal pos_7_2)
    (is_nongoal pos_7_3)
    (is_nongoal pos_7_4)
    (is_nongoal pos_7_5)
    (is_nongoal pos_7_6)
    (is_nongoal pos_7_7)
    (is_nongoal pos_7_8)
    (is_nongoal pos_8_1)
    (is_nongoal pos_8_2)
    (is_nongoal pos_8_3)
    (is_nongoal pos_8_4)
    (is_nongoal pos_8_5)
    (is_nongoal pos_8_6)
    (is_nongoal pos_8_7)
    (is_nongoal pos_8_8)
    (is_nongoal pos_9_1)
    (is_nongoal pos_9_2)
    (is_nongoal pos_9_3)
    (is_nongoal pos_9_4)
    (is_nongoal pos_9_5)
    (is_nongoal pos_9_6)
    (is_nongoal pos_9_7)
    (is_nongoal pos_9_8)
    (move_dir pos_1_8 pos_2_8 dir_right)
    (move_dir pos_2_2 pos_2_3 dir_down)
    (move_dir pos_2_2 pos_3_2 dir_right)
    (move_dir pos_2_3 pos_2_2 dir_up)
    (move_dir pos_2_3 pos_3_3 dir_right)
    (move_dir pos_2_5 pos_2_6 dir_down)
    (move_dir pos_2_5 pos_3_5 dir_right)
    (move_dir pos_2_6 pos_2_5 dir_up)
    (move_dir pos_2_6 pos_3_6 dir_right)
    (move_dir pos_2_8 pos_1_8 dir_left)
    (move_dir pos_2_8 pos_3_8 dir_right)
    (move_dir pos_3_2 pos_2_2 dir_left)
    (move_dir pos_3_2 pos_3_3 dir_down)
    (move_dir pos_3_2 pos_4_2 dir_right)
    (move_dir pos_3_3 pos_2_3 dir_left)
    (move_dir pos_3_3 pos_3_2 dir_up)
    (move_dir pos_3_3 pos_3_4 dir_down)
    (move_dir pos_3_3 pos_4_3 dir_right)
    (move_dir pos_3_4 pos_3_3 dir_up)
    (move_dir pos_3_4 pos_3_5 dir_down)
    (move_dir pos_3_5 pos_2_5 dir_left)
    (move_dir pos_3_5 pos_3_4 dir_up)
    (move_dir pos_3_5 pos_3_6 dir_down)
    (move_dir pos_3_5 pos_4_5 dir_right)
    (move_dir pos_3_6 pos_2_6 dir_left)
    (move_dir pos_3_6 pos_3_5 dir_up)
    (move_dir pos_3_6 pos_4_6 dir_right)
    (move_dir pos_3_8 pos_2_8 dir_left)
    (move_dir pos_3_8 pos_4_8 dir_right)
    (move_dir pos_4_2 pos_3_2 dir_left)
    (move_dir pos_4_2 pos_4_3 dir_down)
    (move_dir pos_4_3 pos_3_3 dir_left)
    (move_dir pos_4_3 pos_4_2 dir_up)
    (move_dir pos_4_3 pos_5_3 dir_right)
    (move_dir pos_4_5 pos_3_5 dir_left)
    (move_dir pos_4_5 pos_4_6 dir_down)
    (move_dir pos_4_5 pos_5_5 dir_right)
    (move_dir pos_4_6 pos_3_6 dir_left)
    (move_dir pos_4_6 pos_4_5 dir_up)
    (move_dir pos_4_8 pos_3_8 dir_left)
    (move_dir pos_4_8 pos_5_8 dir_right)
    (move_dir pos_5_3 pos_4_3 dir_left)
    (move_dir pos_5_3 pos_6_3 dir_right)
    (move_dir pos_5_5 pos_4_5 dir_left)
    (move_dir pos_5_5 pos_6_5 dir_right)
    (move_dir pos_5_8 pos_4_8 dir_left)
    (move_dir pos_6_2 pos_6_3 dir_down)
    (move_dir pos_6_2 pos_7_2 dir_right)
    (move_dir pos_6_3 pos_5_3 dir_left)
    (move_dir pos_6_3 pos_6_2 dir_up)
    (move_dir pos_6_3 pos_7_3 dir_right)
    (move_dir pos_6_5 pos_5_5 dir_left)
    (move_dir pos_6_5 pos_6_6 dir_down)
    (move_dir pos_6_5 pos_7_5 dir_right)
    (move_dir pos_6_6 pos_6_5 dir_up)
    (move_dir pos_6_6 pos_7_6 dir_right)
    (move_dir pos_7_2 pos_6_2 dir_left)
    (move_dir pos_7_2 pos_7_3 dir_down)
    (move_dir pos_7_2 pos_8_2 dir_right)
    (move_dir pos_7_3 pos_6_3 dir_left)
    (move_dir pos_7_3 pos_7_2 dir_up)
    (move_dir pos_7_3 pos_7_4 dir_down)
    (move_dir pos_7_3 pos_8_3 dir_right)
    (move_dir pos_7_4 pos_7_3 dir_up)
    (move_dir pos_7_4 pos_7_5 dir_down)
    (move_dir pos_7_5 pos_6_5 dir_left)
    (move_dir pos_7_5 pos_7_4 dir_up)
    (move_dir pos_7_5 pos_7_6 dir_down)
    (move_dir pos_7_5 pos_8_5 dir_right)
    (move_dir pos_7_6 pos_6_6 dir_left)
    (move_dir pos_7_6 pos_7_5 dir_up)
    (move_dir pos_7_6 pos_7_7 dir_down)
    (move_dir pos_7_6 pos_8_6 dir_right)
    (move_dir pos_7_7 pos_7_6 dir_up)
    (move_dir pos_7_7 pos_8_7 dir_right)
    (move_dir pos_8_2 pos_7_2 dir_left)
    (move_dir pos_8_2 pos_8_3 dir_down)
    (move_dir pos_8_3 pos_7_3 dir_left)
    (move_dir pos_8_3 pos_8_2 dir_up)
    (move_dir pos_8_5 pos_7_5 dir_left)
    (move_dir pos_8_5 pos_8_6 dir_down)
    (move_dir pos_8_6 pos_7_6 dir_left)
    (move_dir pos_8_6 pos_8_5 dir_up)
    (move_dir pos_8_6 pos_8_7 dir_down)
    (move_dir pos_8_7 pos_7_7 dir_left)
    (move_dir pos_8_7 pos_8_6 dir_up)
    (at player_01 pos_3_2)
    (at stone_01 pos_3_3)
    (at stone_02 pos_5_3)
    (at stone_03 pos_3_4)
    (clear pos_1_8)
    (clear pos_2_2)
    (clear pos_2_3)
    (clear pos_2_5)
    (clear pos_2_6)
    (clear pos_2_8)
    (clear pos_3_5)
    (clear pos_3_6)
    (clear pos_3_8)
    (clear pos_4_2)
    (clear pos_4_3)
    (clear pos_4_5)
    (clear pos_4_6)
    (clear pos_4_8)
    (clear pos_5_5)
    (clear pos_5_8)
    (clear pos_6_2)
    (clear pos_6_3)
    (clear pos_6_5)
    (clear pos_6_6)
    (clear pos_7_2)
    (clear pos_7_3)
    (clear pos_7_4)
    (clear pos_7_5)
    (clear pos_7_6)
    (clear pos_7_7)
    (clear pos_8_2)
    (clear pos_8_3)
    (clear pos_8_5)
    (clear pos_8_6)
    (clear pos_8_7)
    (= (total_cost) 0)
  )
  (:goal (and
    (at_goal stone_01)
    (at_goal stone_02)
    (at_goal stone_03)
  ))
  (:metric minimize (total_cost))
)
