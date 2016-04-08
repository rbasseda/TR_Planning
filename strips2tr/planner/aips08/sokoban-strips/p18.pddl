;; 'from (original 47)'
;;
;;      ####
;;  #####  #
;;  #     $#######
;; ## ## ..#  ...#
;; # $ $$#$  @   #
;; #        ###  #
;; #######  # ####
;;       ####

(define (problem p150_microban_sequential)
  (:domain sokoban_sequential)
  (:objects
    dir_down - direction
    dir_left - direction
    dir_right - direction
    dir_up - direction
    player_01 - player
    pos_01_01 - location
    pos_01_02 - location
    pos_01_03 - location
    pos_01_04 - location
    pos_01_05 - location
    pos_01_06 - location
    pos_01_07 - location
    pos_01_08 - location
    pos_02_01 - location
    pos_02_02 - location
    pos_02_03 - location
    pos_02_04 - location
    pos_02_05 - location
    pos_02_06 - location
    pos_02_07 - location
    pos_02_08 - location
    pos_03_01 - location
    pos_03_02 - location
    pos_03_03 - location
    pos_03_04 - location
    pos_03_05 - location
    pos_03_06 - location
    pos_03_07 - location
    pos_03_08 - location
    pos_04_01 - location
    pos_04_02 - location
    pos_04_03 - location
    pos_04_04 - location
    pos_04_05 - location
    pos_04_06 - location
    pos_04_07 - location
    pos_04_08 - location
    pos_05_01 - location
    pos_05_02 - location
    pos_05_03 - location
    pos_05_04 - location
    pos_05_05 - location
    pos_05_06 - location
    pos_05_07 - location
    pos_05_08 - location
    pos_06_01 - location
    pos_06_02 - location
    pos_06_03 - location
    pos_06_04 - location
    pos_06_05 - location
    pos_06_06 - location
    pos_06_07 - location
    pos_06_08 - location
    pos_07_01 - location
    pos_07_02 - location
    pos_07_03 - location
    pos_07_04 - location
    pos_07_05 - location
    pos_07_06 - location
    pos_07_07 - location
    pos_07_08 - location
    pos_08_01 - location
    pos_08_02 - location
    pos_08_03 - location
    pos_08_04 - location
    pos_08_05 - location
    pos_08_06 - location
    pos_08_07 - location
    pos_08_08 - location
    pos_09_01 - location
    pos_09_02 - location
    pos_09_03 - location
    pos_09_04 - location
    pos_09_05 - location
    pos_09_06 - location
    pos_09_07 - location
    pos_09_08 - location
    pos_10_01 - location
    pos_10_02 - location
    pos_10_03 - location
    pos_10_04 - location
    pos_10_05 - location
    pos_10_06 - location
    pos_10_07 - location
    pos_10_08 - location
    pos_11_01 - location
    pos_11_02 - location
    pos_11_03 - location
    pos_11_04 - location
    pos_11_05 - location
    pos_11_06 - location
    pos_11_07 - location
    pos_11_08 - location
    pos_12_01 - location
    pos_12_02 - location
    pos_12_03 - location
    pos_12_04 - location
    pos_12_05 - location
    pos_12_06 - location
    pos_12_07 - location
    pos_12_08 - location
    pos_13_01 - location
    pos_13_02 - location
    pos_13_03 - location
    pos_13_04 - location
    pos_13_05 - location
    pos_13_06 - location
    pos_13_07 - location
    pos_13_08 - location
    pos_14_01 - location
    pos_14_02 - location
    pos_14_03 - location
    pos_14_04 - location
    pos_14_05 - location
    pos_14_06 - location
    pos_14_07 - location
    pos_14_08 - location
    pos_15_01 - location
    pos_15_02 - location
    pos_15_03 - location
    pos_15_04 - location
    pos_15_05 - location
    pos_15_06 - location
    pos_15_07 - location
    pos_15_08 - location
    stone_01 - stone
    stone_02 - stone
    stone_03 - stone
    stone_04 - stone
    stone_05 - stone
  )
  (:init
    (is_goal pos_07_04)
    (is_goal pos_08_04)
    (is_goal pos_12_04)
    (is_goal pos_13_04)
    (is_goal pos_14_04)
    (is_nongoal pos_01_01)
    (is_nongoal pos_01_02)
    (is_nongoal pos_01_03)
    (is_nongoal pos_01_04)
    (is_nongoal pos_01_05)
    (is_nongoal pos_01_06)
    (is_nongoal pos_01_07)
    (is_nongoal pos_01_08)
    (is_nongoal pos_02_01)
    (is_nongoal pos_02_02)
    (is_nongoal pos_02_03)
    (is_nongoal pos_02_04)
    (is_nongoal pos_02_05)
    (is_nongoal pos_02_06)
    (is_nongoal pos_02_07)
    (is_nongoal pos_02_08)
    (is_nongoal pos_03_01)
    (is_nongoal pos_03_02)
    (is_nongoal pos_03_03)
    (is_nongoal pos_03_04)
    (is_nongoal pos_03_05)
    (is_nongoal pos_03_06)
    (is_nongoal pos_03_07)
    (is_nongoal pos_03_08)
    (is_nongoal pos_04_01)
    (is_nongoal pos_04_02)
    (is_nongoal pos_04_03)
    (is_nongoal pos_04_04)
    (is_nongoal pos_04_05)
    (is_nongoal pos_04_06)
    (is_nongoal pos_04_07)
    (is_nongoal pos_04_08)
    (is_nongoal pos_05_01)
    (is_nongoal pos_05_02)
    (is_nongoal pos_05_03)
    (is_nongoal pos_05_04)
    (is_nongoal pos_05_05)
    (is_nongoal pos_05_06)
    (is_nongoal pos_05_07)
    (is_nongoal pos_05_08)
    (is_nongoal pos_06_01)
    (is_nongoal pos_06_02)
    (is_nongoal pos_06_03)
    (is_nongoal pos_06_04)
    (is_nongoal pos_06_05)
    (is_nongoal pos_06_06)
    (is_nongoal pos_06_07)
    (is_nongoal pos_06_08)
    (is_nongoal pos_07_01)
    (is_nongoal pos_07_02)
    (is_nongoal pos_07_03)
    (is_nongoal pos_07_05)
    (is_nongoal pos_07_06)
    (is_nongoal pos_07_07)
    (is_nongoal pos_07_08)
    (is_nongoal pos_08_01)
    (is_nongoal pos_08_02)
    (is_nongoal pos_08_03)
    (is_nongoal pos_08_05)
    (is_nongoal pos_08_06)
    (is_nongoal pos_08_07)
    (is_nongoal pos_08_08)
    (is_nongoal pos_09_01)
    (is_nongoal pos_09_02)
    (is_nongoal pos_09_03)
    (is_nongoal pos_09_04)
    (is_nongoal pos_09_05)
    (is_nongoal pos_09_06)
    (is_nongoal pos_09_07)
    (is_nongoal pos_09_08)
    (is_nongoal pos_10_01)
    (is_nongoal pos_10_02)
    (is_nongoal pos_10_03)
    (is_nongoal pos_10_04)
    (is_nongoal pos_10_05)
    (is_nongoal pos_10_06)
    (is_nongoal pos_10_07)
    (is_nongoal pos_10_08)
    (is_nongoal pos_11_01)
    (is_nongoal pos_11_02)
    (is_nongoal pos_11_03)
    (is_nongoal pos_11_04)
    (is_nongoal pos_11_05)
    (is_nongoal pos_11_06)
    (is_nongoal pos_11_07)
    (is_nongoal pos_11_08)
    (is_nongoal pos_12_01)
    (is_nongoal pos_12_02)
    (is_nongoal pos_12_03)
    (is_nongoal pos_12_05)
    (is_nongoal pos_12_06)
    (is_nongoal pos_12_07)
    (is_nongoal pos_12_08)
    (is_nongoal pos_13_01)
    (is_nongoal pos_13_02)
    (is_nongoal pos_13_03)
    (is_nongoal pos_13_05)
    (is_nongoal pos_13_06)
    (is_nongoal pos_13_07)
    (is_nongoal pos_13_08)
    (is_nongoal pos_14_01)
    (is_nongoal pos_14_02)
    (is_nongoal pos_14_03)
    (is_nongoal pos_14_05)
    (is_nongoal pos_14_06)
    (is_nongoal pos_14_07)
    (is_nongoal pos_14_08)
    (is_nongoal pos_15_01)
    (is_nongoal pos_15_02)
    (is_nongoal pos_15_03)
    (is_nongoal pos_15_04)
    (is_nongoal pos_15_05)
    (is_nongoal pos_15_06)
    (is_nongoal pos_15_07)
    (is_nongoal pos_15_08)
    (move_dir pos_01_01 pos_01_02 dir_down)
    (move_dir pos_01_01 pos_02_01 dir_right)
    (move_dir pos_01_02 pos_01_01 dir_up)
    (move_dir pos_01_02 pos_01_03 dir_down)
    (move_dir pos_01_03 pos_01_02 dir_up)
    (move_dir pos_01_08 pos_02_08 dir_right)
    (move_dir pos_02_01 pos_01_01 dir_left)
    (move_dir pos_02_01 pos_03_01 dir_right)
    (move_dir pos_02_05 pos_02_06 dir_down)
    (move_dir pos_02_05 pos_03_05 dir_right)
    (move_dir pos_02_06 pos_02_05 dir_up)
    (move_dir pos_02_06 pos_03_06 dir_right)
    (move_dir pos_02_08 pos_01_08 dir_left)
    (move_dir pos_02_08 pos_03_08 dir_right)
    (move_dir pos_03_01 pos_02_01 dir_left)
    (move_dir pos_03_01 pos_04_01 dir_right)
    (move_dir pos_03_03 pos_03_04 dir_down)
    (move_dir pos_03_03 pos_04_03 dir_right)
    (move_dir pos_03_04 pos_03_03 dir_up)
    (move_dir pos_03_04 pos_03_05 dir_down)
    (move_dir pos_03_05 pos_02_05 dir_left)
    (move_dir pos_03_05 pos_03_04 dir_up)
    (move_dir pos_03_05 pos_03_06 dir_down)
    (move_dir pos_03_05 pos_04_05 dir_right)
    (move_dir pos_03_06 pos_02_06 dir_left)
    (move_dir pos_03_06 pos_03_05 dir_up)
    (move_dir pos_03_06 pos_04_06 dir_right)
    (move_dir pos_03_08 pos_02_08 dir_left)
    (move_dir pos_03_08 pos_04_08 dir_right)
    (move_dir pos_04_01 pos_03_01 dir_left)
    (move_dir pos_04_01 pos_05_01 dir_right)
    (move_dir pos_04_03 pos_03_03 dir_left)
    (move_dir pos_04_03 pos_05_03 dir_right)
    (move_dir pos_04_05 pos_03_05 dir_left)
    (move_dir pos_04_05 pos_04_06 dir_down)
    (move_dir pos_04_05 pos_05_05 dir_right)
    (move_dir pos_04_06 pos_03_06 dir_left)
    (move_dir pos_04_06 pos_04_05 dir_up)
    (move_dir pos_04_06 pos_05_06 dir_right)
    (move_dir pos_04_08 pos_03_08 dir_left)
    (move_dir pos_04_08 pos_05_08 dir_right)
    (move_dir pos_05_01 pos_04_01 dir_left)
    (move_dir pos_05_03 pos_04_03 dir_left)
    (move_dir pos_05_03 pos_06_03 dir_right)
    (move_dir pos_05_05 pos_04_05 dir_left)
    (move_dir pos_05_05 pos_05_06 dir_down)
    (move_dir pos_05_05 pos_06_05 dir_right)
    (move_dir pos_05_06 pos_04_06 dir_left)
    (move_dir pos_05_06 pos_05_05 dir_up)
    (move_dir pos_05_06 pos_06_06 dir_right)
    (move_dir pos_05_08 pos_04_08 dir_left)
    (move_dir pos_05_08 pos_06_08 dir_right)
    (move_dir pos_06_03 pos_05_03 dir_left)
    (move_dir pos_06_03 pos_06_04 dir_down)
    (move_dir pos_06_03 pos_07_03 dir_right)
    (move_dir pos_06_04 pos_06_03 dir_up)
    (move_dir pos_06_04 pos_06_05 dir_down)
    (move_dir pos_06_04 pos_07_04 dir_right)
    (move_dir pos_06_05 pos_05_05 dir_left)
    (move_dir pos_06_05 pos_06_04 dir_up)
    (move_dir pos_06_05 pos_06_06 dir_down)
    (move_dir pos_06_06 pos_05_06 dir_left)
    (move_dir pos_06_06 pos_06_05 dir_up)
    (move_dir pos_06_06 pos_07_06 dir_right)
    (move_dir pos_06_08 pos_05_08 dir_left)
    (move_dir pos_07_02 pos_07_03 dir_down)
    (move_dir pos_07_02 pos_08_02 dir_right)
    (move_dir pos_07_03 pos_06_03 dir_left)
    (move_dir pos_07_03 pos_07_02 dir_up)
    (move_dir pos_07_03 pos_07_04 dir_down)
    (move_dir pos_07_03 pos_08_03 dir_right)
    (move_dir pos_07_04 pos_06_04 dir_left)
    (move_dir pos_07_04 pos_07_03 dir_up)
    (move_dir pos_07_04 pos_08_04 dir_right)
    (move_dir pos_07_06 pos_06_06 dir_left)
    (move_dir pos_07_06 pos_08_06 dir_right)
    (move_dir pos_08_02 pos_07_02 dir_left)
    (move_dir pos_08_02 pos_08_03 dir_down)
    (move_dir pos_08_03 pos_07_03 dir_left)
    (move_dir pos_08_03 pos_08_02 dir_up)
    (move_dir pos_08_03 pos_08_04 dir_down)
    (move_dir pos_08_04 pos_07_04 dir_left)
    (move_dir pos_08_04 pos_08_03 dir_up)
    (move_dir pos_08_04 pos_08_05 dir_down)
    (move_dir pos_08_05 pos_08_04 dir_up)
    (move_dir pos_08_05 pos_08_06 dir_down)
    (move_dir pos_08_05 pos_09_05 dir_right)
    (move_dir pos_08_06 pos_07_06 dir_left)
    (move_dir pos_08_06 pos_08_05 dir_up)
    (move_dir pos_08_06 pos_08_07 dir_down)
    (move_dir pos_08_06 pos_09_06 dir_right)
    (move_dir pos_08_07 pos_08_06 dir_up)
    (move_dir pos_08_07 pos_09_07 dir_right)
    (move_dir pos_09_05 pos_08_05 dir_left)
    (move_dir pos_09_05 pos_09_06 dir_down)
    (move_dir pos_09_05 pos_10_05 dir_right)
    (move_dir pos_09_06 pos_08_06 dir_left)
    (move_dir pos_09_06 pos_09_05 dir_up)
    (move_dir pos_09_06 pos_09_07 dir_down)
    (move_dir pos_09_07 pos_08_07 dir_left)
    (move_dir pos_09_07 pos_09_06 dir_up)
    (move_dir pos_10_01 pos_10_02 dir_down)
    (move_dir pos_10_01 pos_11_01 dir_right)
    (move_dir pos_10_02 pos_10_01 dir_up)
    (move_dir pos_10_02 pos_11_02 dir_right)
    (move_dir pos_10_04 pos_10_05 dir_down)
    (move_dir pos_10_04 pos_11_04 dir_right)
    (move_dir pos_10_05 pos_09_05 dir_left)
    (move_dir pos_10_05 pos_10_04 dir_up)
    (move_dir pos_10_05 pos_11_05 dir_right)
    (move_dir pos_11_01 pos_10_01 dir_left)
    (move_dir pos_11_01 pos_11_02 dir_down)
    (move_dir pos_11_01 pos_12_01 dir_right)
    (move_dir pos_11_02 pos_10_02 dir_left)
    (move_dir pos_11_02 pos_11_01 dir_up)
    (move_dir pos_11_02 pos_12_02 dir_right)
    (move_dir pos_11_04 pos_10_04 dir_left)
    (move_dir pos_11_04 pos_11_05 dir_down)
    (move_dir pos_11_04 pos_12_04 dir_right)
    (move_dir pos_11_05 pos_10_05 dir_left)
    (move_dir pos_11_05 pos_11_04 dir_up)
    (move_dir pos_11_05 pos_12_05 dir_right)
    (move_dir pos_11_07 pos_11_08 dir_down)
    (move_dir pos_11_08 pos_11_07 dir_up)
    (move_dir pos_11_08 pos_12_08 dir_right)
    (move_dir pos_12_01 pos_11_01 dir_left)
    (move_dir pos_12_01 pos_12_02 dir_down)
    (move_dir pos_12_01 pos_13_01 dir_right)
    (move_dir pos_12_02 pos_11_02 dir_left)
    (move_dir pos_12_02 pos_12_01 dir_up)
    (move_dir pos_12_02 pos_13_02 dir_right)
    (move_dir pos_12_04 pos_11_04 dir_left)
    (move_dir pos_12_04 pos_12_05 dir_down)
    (move_dir pos_12_04 pos_13_04 dir_right)
    (move_dir pos_12_05 pos_11_05 dir_left)
    (move_dir pos_12_05 pos_12_04 dir_up)
    (move_dir pos_12_05 pos_13_05 dir_right)
    (move_dir pos_12_08 pos_11_08 dir_left)
    (move_dir pos_12_08 pos_13_08 dir_right)
    (move_dir pos_13_01 pos_12_01 dir_left)
    (move_dir pos_13_01 pos_13_02 dir_down)
    (move_dir pos_13_01 pos_14_01 dir_right)
    (move_dir pos_13_02 pos_12_02 dir_left)
    (move_dir pos_13_02 pos_13_01 dir_up)
    (move_dir pos_13_02 pos_14_02 dir_right)
    (move_dir pos_13_04 pos_12_04 dir_left)
    (move_dir pos_13_04 pos_13_05 dir_down)
    (move_dir pos_13_04 pos_14_04 dir_right)
    (move_dir pos_13_05 pos_12_05 dir_left)
    (move_dir pos_13_05 pos_13_04 dir_up)
    (move_dir pos_13_05 pos_13_06 dir_down)
    (move_dir pos_13_05 pos_14_05 dir_right)
    (move_dir pos_13_06 pos_13_05 dir_up)
    (move_dir pos_13_06 pos_14_06 dir_right)
    (move_dir pos_13_08 pos_12_08 dir_left)
    (move_dir pos_13_08 pos_14_08 dir_right)
    (move_dir pos_14_01 pos_13_01 dir_left)
    (move_dir pos_14_01 pos_14_02 dir_down)
    (move_dir pos_14_01 pos_15_01 dir_right)
    (move_dir pos_14_02 pos_13_02 dir_left)
    (move_dir pos_14_02 pos_14_01 dir_up)
    (move_dir pos_14_02 pos_15_02 dir_right)
    (move_dir pos_14_04 pos_13_04 dir_left)
    (move_dir pos_14_04 pos_14_05 dir_down)
    (move_dir pos_14_05 pos_13_05 dir_left)
    (move_dir pos_14_05 pos_14_04 dir_up)
    (move_dir pos_14_05 pos_14_06 dir_down)
    (move_dir pos_14_06 pos_13_06 dir_left)
    (move_dir pos_14_06 pos_14_05 dir_up)
    (move_dir pos_14_08 pos_13_08 dir_left)
    (move_dir pos_14_08 pos_15_08 dir_right)
    (move_dir pos_15_01 pos_14_01 dir_left)
    (move_dir pos_15_01 pos_15_02 dir_down)
    (move_dir pos_15_02 pos_14_02 dir_left)
    (move_dir pos_15_02 pos_15_01 dir_up)
    (move_dir pos_15_08 pos_14_08 dir_left)
    (at player_01 pos_11_05)
    (at stone_01 pos_08_03)
    (at stone_02 pos_03_05)
    (at stone_03 pos_05_05)
    (at stone_04 pos_06_05)
    (at stone_05 pos_08_05)
    (clear pos_01_01)
    (clear pos_01_02)
    (clear pos_01_03)
    (clear pos_01_08)
    (clear pos_02_01)
    (clear pos_02_05)
    (clear pos_02_06)
    (clear pos_02_08)
    (clear pos_03_01)
    (clear pos_03_03)
    (clear pos_03_04)
    (clear pos_03_06)
    (clear pos_03_08)
    (clear pos_04_01)
    (clear pos_04_03)
    (clear pos_04_05)
    (clear pos_04_06)
    (clear pos_04_08)
    (clear pos_05_01)
    (clear pos_05_03)
    (clear pos_05_06)
    (clear pos_05_08)
    (clear pos_06_03)
    (clear pos_06_04)
    (clear pos_06_06)
    (clear pos_06_08)
    (clear pos_07_02)
    (clear pos_07_03)
    (clear pos_07_04)
    (clear pos_07_06)
    (clear pos_08_02)
    (clear pos_08_04)
    (clear pos_08_06)
    (clear pos_08_07)
    (clear pos_09_05)
    (clear pos_09_06)
    (clear pos_09_07)
    (clear pos_10_01)
    (clear pos_10_02)
    (clear pos_10_04)
    (clear pos_10_05)
    (clear pos_11_01)
    (clear pos_11_02)
    (clear pos_11_04)
    (clear pos_11_07)
    (clear pos_11_08)
    (clear pos_12_01)
    (clear pos_12_02)
    (clear pos_12_04)
    (clear pos_12_05)
    (clear pos_12_08)
    (clear pos_13_01)
    (clear pos_13_02)
    (clear pos_13_04)
    (clear pos_13_05)
    (clear pos_13_06)
    (clear pos_13_08)
    (clear pos_14_01)
    (clear pos_14_02)
    (clear pos_14_04)
    (clear pos_14_05)
    (clear pos_14_06)
    (clear pos_14_08)
    (clear pos_15_01)
    (clear pos_15_02)
    (clear pos_15_08)
    (= (total_cost) 0)
  )
  (:goal (and
    (at_goal stone_01)
    (at_goal stone_02)
    (at_goal stone_03)
    (at_goal stone_04)
    (at_goal stone_05)
  ))
  (:metric minimize (total_cost))
)
