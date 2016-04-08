;;    #####
;;   ##   #
;; ###  # #
;; #    . #
;; #  ## #####
;; #  . . #  ##
;; #  # @ $   ###
;; #####. #  $  #
;;     ####  $  #
;;        ## $ ##
;;         #  ##
;;         #  #
;;         ####

(define (problem p113_microban_sequential)
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
    pos_01_09 - location
    pos_01_10 - location
    pos_01_11 - location
    pos_01_12 - location
    pos_01_13 - location
    pos_02_01 - location
    pos_02_02 - location
    pos_02_03 - location
    pos_02_04 - location
    pos_02_05 - location
    pos_02_06 - location
    pos_02_07 - location
    pos_02_08 - location
    pos_02_09 - location
    pos_02_10 - location
    pos_02_11 - location
    pos_02_12 - location
    pos_02_13 - location
    pos_03_01 - location
    pos_03_02 - location
    pos_03_03 - location
    pos_03_04 - location
    pos_03_05 - location
    pos_03_06 - location
    pos_03_07 - location
    pos_03_08 - location
    pos_03_09 - location
    pos_03_10 - location
    pos_03_11 - location
    pos_03_12 - location
    pos_03_13 - location
    pos_04_01 - location
    pos_04_02 - location
    pos_04_03 - location
    pos_04_04 - location
    pos_04_05 - location
    pos_04_06 - location
    pos_04_07 - location
    pos_04_08 - location
    pos_04_09 - location
    pos_04_10 - location
    pos_04_11 - location
    pos_04_12 - location
    pos_04_13 - location
    pos_05_01 - location
    pos_05_02 - location
    pos_05_03 - location
    pos_05_04 - location
    pos_05_05 - location
    pos_05_06 - location
    pos_05_07 - location
    pos_05_08 - location
    pos_05_09 - location
    pos_05_10 - location
    pos_05_11 - location
    pos_05_12 - location
    pos_05_13 - location
    pos_06_01 - location
    pos_06_02 - location
    pos_06_03 - location
    pos_06_04 - location
    pos_06_05 - location
    pos_06_06 - location
    pos_06_07 - location
    pos_06_08 - location
    pos_06_09 - location
    pos_06_10 - location
    pos_06_11 - location
    pos_06_12 - location
    pos_06_13 - location
    pos_07_01 - location
    pos_07_02 - location
    pos_07_03 - location
    pos_07_04 - location
    pos_07_05 - location
    pos_07_06 - location
    pos_07_07 - location
    pos_07_08 - location
    pos_07_09 - location
    pos_07_10 - location
    pos_07_11 - location
    pos_07_12 - location
    pos_07_13 - location
    pos_08_01 - location
    pos_08_02 - location
    pos_08_03 - location
    pos_08_04 - location
    pos_08_05 - location
    pos_08_06 - location
    pos_08_07 - location
    pos_08_08 - location
    pos_08_09 - location
    pos_08_10 - location
    pos_08_11 - location
    pos_08_12 - location
    pos_08_13 - location
    pos_09_01 - location
    pos_09_02 - location
    pos_09_03 - location
    pos_09_04 - location
    pos_09_05 - location
    pos_09_06 - location
    pos_09_07 - location
    pos_09_08 - location
    pos_09_09 - location
    pos_09_10 - location
    pos_09_11 - location
    pos_09_12 - location
    pos_09_13 - location
    pos_10_01 - location
    pos_10_02 - location
    pos_10_03 - location
    pos_10_04 - location
    pos_10_05 - location
    pos_10_06 - location
    pos_10_07 - location
    pos_10_08 - location
    pos_10_09 - location
    pos_10_10 - location
    pos_10_11 - location
    pos_10_12 - location
    pos_10_13 - location
    pos_11_01 - location
    pos_11_02 - location
    pos_11_03 - location
    pos_11_04 - location
    pos_11_05 - location
    pos_11_06 - location
    pos_11_07 - location
    pos_11_08 - location
    pos_11_09 - location
    pos_11_10 - location
    pos_11_11 - location
    pos_11_12 - location
    pos_11_13 - location
    pos_12_01 - location
    pos_12_02 - location
    pos_12_03 - location
    pos_12_04 - location
    pos_12_05 - location
    pos_12_06 - location
    pos_12_07 - location
    pos_12_08 - location
    pos_12_09 - location
    pos_12_10 - location
    pos_12_11 - location
    pos_12_12 - location
    pos_12_13 - location
    pos_13_01 - location
    pos_13_02 - location
    pos_13_03 - location
    pos_13_04 - location
    pos_13_05 - location
    pos_13_06 - location
    pos_13_07 - location
    pos_13_08 - location
    pos_13_09 - location
    pos_13_10 - location
    pos_13_11 - location
    pos_13_12 - location
    pos_13_13 - location
    pos_14_01 - location
    pos_14_02 - location
    pos_14_03 - location
    pos_14_04 - location
    pos_14_05 - location
    pos_14_06 - location
    pos_14_07 - location
    pos_14_08 - location
    pos_14_09 - location
    pos_14_10 - location
    pos_14_11 - location
    pos_14_12 - location
    pos_14_13 - location
    stone_01 - stone
    stone_02 - stone
    stone_03 - stone
    stone_04 - stone
  )
  (:init
    (is_goal pos_04_06)
    (is_goal pos_06_04)
    (is_goal pos_06_06)
    (is_goal pos_06_08)
    (is_nongoal pos_01_01)
    (is_nongoal pos_01_02)
    (is_nongoal pos_01_03)
    (is_nongoal pos_01_04)
    (is_nongoal pos_01_05)
    (is_nongoal pos_01_06)
    (is_nongoal pos_01_07)
    (is_nongoal pos_01_08)
    (is_nongoal pos_01_09)
    (is_nongoal pos_01_10)
    (is_nongoal pos_01_11)
    (is_nongoal pos_01_12)
    (is_nongoal pos_01_13)
    (is_nongoal pos_02_01)
    (is_nongoal pos_02_02)
    (is_nongoal pos_02_03)
    (is_nongoal pos_02_04)
    (is_nongoal pos_02_05)
    (is_nongoal pos_02_06)
    (is_nongoal pos_02_07)
    (is_nongoal pos_02_08)
    (is_nongoal pos_02_09)
    (is_nongoal pos_02_10)
    (is_nongoal pos_02_11)
    (is_nongoal pos_02_12)
    (is_nongoal pos_02_13)
    (is_nongoal pos_03_01)
    (is_nongoal pos_03_02)
    (is_nongoal pos_03_03)
    (is_nongoal pos_03_04)
    (is_nongoal pos_03_05)
    (is_nongoal pos_03_06)
    (is_nongoal pos_03_07)
    (is_nongoal pos_03_08)
    (is_nongoal pos_03_09)
    (is_nongoal pos_03_10)
    (is_nongoal pos_03_11)
    (is_nongoal pos_03_12)
    (is_nongoal pos_03_13)
    (is_nongoal pos_04_01)
    (is_nongoal pos_04_02)
    (is_nongoal pos_04_03)
    (is_nongoal pos_04_04)
    (is_nongoal pos_04_05)
    (is_nongoal pos_04_07)
    (is_nongoal pos_04_08)
    (is_nongoal pos_04_09)
    (is_nongoal pos_04_10)
    (is_nongoal pos_04_11)
    (is_nongoal pos_04_12)
    (is_nongoal pos_04_13)
    (is_nongoal pos_05_01)
    (is_nongoal pos_05_02)
    (is_nongoal pos_05_03)
    (is_nongoal pos_05_04)
    (is_nongoal pos_05_05)
    (is_nongoal pos_05_06)
    (is_nongoal pos_05_07)
    (is_nongoal pos_05_08)
    (is_nongoal pos_05_09)
    (is_nongoal pos_05_10)
    (is_nongoal pos_05_11)
    (is_nongoal pos_05_12)
    (is_nongoal pos_05_13)
    (is_nongoal pos_06_01)
    (is_nongoal pos_06_02)
    (is_nongoal pos_06_03)
    (is_nongoal pos_06_05)
    (is_nongoal pos_06_07)
    (is_nongoal pos_06_09)
    (is_nongoal pos_06_10)
    (is_nongoal pos_06_11)
    (is_nongoal pos_06_12)
    (is_nongoal pos_06_13)
    (is_nongoal pos_07_01)
    (is_nongoal pos_07_02)
    (is_nongoal pos_07_03)
    (is_nongoal pos_07_04)
    (is_nongoal pos_07_05)
    (is_nongoal pos_07_06)
    (is_nongoal pos_07_07)
    (is_nongoal pos_07_08)
    (is_nongoal pos_07_09)
    (is_nongoal pos_07_10)
    (is_nongoal pos_07_11)
    (is_nongoal pos_07_12)
    (is_nongoal pos_07_13)
    (is_nongoal pos_08_01)
    (is_nongoal pos_08_02)
    (is_nongoal pos_08_03)
    (is_nongoal pos_08_04)
    (is_nongoal pos_08_05)
    (is_nongoal pos_08_06)
    (is_nongoal pos_08_07)
    (is_nongoal pos_08_08)
    (is_nongoal pos_08_09)
    (is_nongoal pos_08_10)
    (is_nongoal pos_08_11)
    (is_nongoal pos_08_12)
    (is_nongoal pos_08_13)
    (is_nongoal pos_09_01)
    (is_nongoal pos_09_02)
    (is_nongoal pos_09_03)
    (is_nongoal pos_09_04)
    (is_nongoal pos_09_05)
    (is_nongoal pos_09_06)
    (is_nongoal pos_09_07)
    (is_nongoal pos_09_08)
    (is_nongoal pos_09_09)
    (is_nongoal pos_09_10)
    (is_nongoal pos_09_11)
    (is_nongoal pos_09_12)
    (is_nongoal pos_09_13)
    (is_nongoal pos_10_01)
    (is_nongoal pos_10_02)
    (is_nongoal pos_10_03)
    (is_nongoal pos_10_04)
    (is_nongoal pos_10_05)
    (is_nongoal pos_10_06)
    (is_nongoal pos_10_07)
    (is_nongoal pos_10_08)
    (is_nongoal pos_10_09)
    (is_nongoal pos_10_10)
    (is_nongoal pos_10_11)
    (is_nongoal pos_10_12)
    (is_nongoal pos_10_13)
    (is_nongoal pos_11_01)
    (is_nongoal pos_11_02)
    (is_nongoal pos_11_03)
    (is_nongoal pos_11_04)
    (is_nongoal pos_11_05)
    (is_nongoal pos_11_06)
    (is_nongoal pos_11_07)
    (is_nongoal pos_11_08)
    (is_nongoal pos_11_09)
    (is_nongoal pos_11_10)
    (is_nongoal pos_11_11)
    (is_nongoal pos_11_12)
    (is_nongoal pos_11_13)
    (is_nongoal pos_12_01)
    (is_nongoal pos_12_02)
    (is_nongoal pos_12_03)
    (is_nongoal pos_12_04)
    (is_nongoal pos_12_05)
    (is_nongoal pos_12_06)
    (is_nongoal pos_12_07)
    (is_nongoal pos_12_08)
    (is_nongoal pos_12_09)
    (is_nongoal pos_12_10)
    (is_nongoal pos_12_11)
    (is_nongoal pos_12_12)
    (is_nongoal pos_12_13)
    (is_nongoal pos_13_01)
    (is_nongoal pos_13_02)
    (is_nongoal pos_13_03)
    (is_nongoal pos_13_04)
    (is_nongoal pos_13_05)
    (is_nongoal pos_13_06)
    (is_nongoal pos_13_07)
    (is_nongoal pos_13_08)
    (is_nongoal pos_13_09)
    (is_nongoal pos_13_10)
    (is_nongoal pos_13_11)
    (is_nongoal pos_13_12)
    (is_nongoal pos_13_13)
    (is_nongoal pos_14_01)
    (is_nongoal pos_14_02)
    (is_nongoal pos_14_03)
    (is_nongoal pos_14_04)
    (is_nongoal pos_14_05)
    (is_nongoal pos_14_06)
    (is_nongoal pos_14_07)
    (is_nongoal pos_14_08)
    (is_nongoal pos_14_09)
    (is_nongoal pos_14_10)
    (is_nongoal pos_14_11)
    (is_nongoal pos_14_12)
    (is_nongoal pos_14_13)
    (move_dir pos_01_01 pos_01_02 dir_down)
    (move_dir pos_01_01 pos_02_01 dir_right)
    (move_dir pos_01_02 pos_01_01 dir_up)
    (move_dir pos_01_02 pos_02_02 dir_right)
    (move_dir pos_01_09 pos_01_10 dir_down)
    (move_dir pos_01_09 pos_02_09 dir_right)
    (move_dir pos_01_10 pos_01_09 dir_up)
    (move_dir pos_01_10 pos_01_11 dir_down)
    (move_dir pos_01_10 pos_02_10 dir_right)
    (move_dir pos_01_11 pos_01_10 dir_up)
    (move_dir pos_01_11 pos_01_12 dir_down)
    (move_dir pos_01_11 pos_02_11 dir_right)
    (move_dir pos_01_12 pos_01_11 dir_up)
    (move_dir pos_01_12 pos_01_13 dir_down)
    (move_dir pos_01_12 pos_02_12 dir_right)
    (move_dir pos_01_13 pos_01_12 dir_up)
    (move_dir pos_01_13 pos_02_13 dir_right)
    (move_dir pos_02_01 pos_01_01 dir_left)
    (move_dir pos_02_01 pos_02_02 dir_down)
    (move_dir pos_02_01 pos_03_01 dir_right)
    (move_dir pos_02_02 pos_01_02 dir_left)
    (move_dir pos_02_02 pos_02_01 dir_up)
    (move_dir pos_02_04 pos_02_05 dir_down)
    (move_dir pos_02_04 pos_03_04 dir_right)
    (move_dir pos_02_05 pos_02_04 dir_up)
    (move_dir pos_02_05 pos_02_06 dir_down)
    (move_dir pos_02_05 pos_03_05 dir_right)
    (move_dir pos_02_06 pos_02_05 dir_up)
    (move_dir pos_02_06 pos_02_07 dir_down)
    (move_dir pos_02_06 pos_03_06 dir_right)
    (move_dir pos_02_07 pos_02_06 dir_up)
    (move_dir pos_02_07 pos_03_07 dir_right)
    (move_dir pos_02_09 pos_01_09 dir_left)
    (move_dir pos_02_09 pos_02_10 dir_down)
    (move_dir pos_02_09 pos_03_09 dir_right)
    (move_dir pos_02_10 pos_01_10 dir_left)
    (move_dir pos_02_10 pos_02_09 dir_up)
    (move_dir pos_02_10 pos_02_11 dir_down)
    (move_dir pos_02_10 pos_03_10 dir_right)
    (move_dir pos_02_11 pos_01_11 dir_left)
    (move_dir pos_02_11 pos_02_10 dir_up)
    (move_dir pos_02_11 pos_02_12 dir_down)
    (move_dir pos_02_11 pos_03_11 dir_right)
    (move_dir pos_02_12 pos_01_12 dir_left)
    (move_dir pos_02_12 pos_02_11 dir_up)
    (move_dir pos_02_12 pos_02_13 dir_down)
    (move_dir pos_02_12 pos_03_12 dir_right)
    (move_dir pos_02_13 pos_01_13 dir_left)
    (move_dir pos_02_13 pos_02_12 dir_up)
    (move_dir pos_02_13 pos_03_13 dir_right)
    (move_dir pos_03_01 pos_02_01 dir_left)
    (move_dir pos_03_04 pos_02_04 dir_left)
    (move_dir pos_03_04 pos_03_05 dir_down)
    (move_dir pos_03_04 pos_04_04 dir_right)
    (move_dir pos_03_05 pos_02_05 dir_left)
    (move_dir pos_03_05 pos_03_04 dir_up)
    (move_dir pos_03_05 pos_03_06 dir_down)
    (move_dir pos_03_06 pos_02_06 dir_left)
    (move_dir pos_03_06 pos_03_05 dir_up)
    (move_dir pos_03_06 pos_03_07 dir_down)
    (move_dir pos_03_06 pos_04_06 dir_right)
    (move_dir pos_03_07 pos_02_07 dir_left)
    (move_dir pos_03_07 pos_03_06 dir_up)
    (move_dir pos_03_09 pos_02_09 dir_left)
    (move_dir pos_03_09 pos_03_10 dir_down)
    (move_dir pos_03_09 pos_04_09 dir_right)
    (move_dir pos_03_10 pos_02_10 dir_left)
    (move_dir pos_03_10 pos_03_09 dir_up)
    (move_dir pos_03_10 pos_03_11 dir_down)
    (move_dir pos_03_10 pos_04_10 dir_right)
    (move_dir pos_03_11 pos_02_11 dir_left)
    (move_dir pos_03_11 pos_03_10 dir_up)
    (move_dir pos_03_11 pos_03_12 dir_down)
    (move_dir pos_03_11 pos_04_11 dir_right)
    (move_dir pos_03_12 pos_02_12 dir_left)
    (move_dir pos_03_12 pos_03_11 dir_up)
    (move_dir pos_03_12 pos_03_13 dir_down)
    (move_dir pos_03_12 pos_04_12 dir_right)
    (move_dir pos_03_13 pos_02_13 dir_left)
    (move_dir pos_03_13 pos_03_12 dir_up)
    (move_dir pos_03_13 pos_04_13 dir_right)
    (move_dir pos_04_03 pos_04_04 dir_down)
    (move_dir pos_04_03 pos_05_03 dir_right)
    (move_dir pos_04_04 pos_03_04 dir_left)
    (move_dir pos_04_04 pos_04_03 dir_up)
    (move_dir pos_04_04 pos_05_04 dir_right)
    (move_dir pos_04_06 pos_03_06 dir_left)
    (move_dir pos_04_06 pos_05_06 dir_right)
    (move_dir pos_04_09 pos_03_09 dir_left)
    (move_dir pos_04_09 pos_04_10 dir_down)
    (move_dir pos_04_10 pos_03_10 dir_left)
    (move_dir pos_04_10 pos_04_09 dir_up)
    (move_dir pos_04_10 pos_04_11 dir_down)
    (move_dir pos_04_10 pos_05_10 dir_right)
    (move_dir pos_04_11 pos_03_11 dir_left)
    (move_dir pos_04_11 pos_04_10 dir_up)
    (move_dir pos_04_11 pos_04_12 dir_down)
    (move_dir pos_04_11 pos_05_11 dir_right)
    (move_dir pos_04_12 pos_03_12 dir_left)
    (move_dir pos_04_12 pos_04_11 dir_up)
    (move_dir pos_04_12 pos_04_13 dir_down)
    (move_dir pos_04_12 pos_05_12 dir_right)
    (move_dir pos_04_13 pos_03_13 dir_left)
    (move_dir pos_04_13 pos_04_12 dir_up)
    (move_dir pos_04_13 pos_05_13 dir_right)
    (move_dir pos_05_02 pos_05_03 dir_down)
    (move_dir pos_05_02 pos_06_02 dir_right)
    (move_dir pos_05_03 pos_04_03 dir_left)
    (move_dir pos_05_03 pos_05_02 dir_up)
    (move_dir pos_05_03 pos_05_04 dir_down)
    (move_dir pos_05_04 pos_04_04 dir_left)
    (move_dir pos_05_04 pos_05_03 dir_up)
    (move_dir pos_05_04 pos_06_04 dir_right)
    (move_dir pos_05_06 pos_04_06 dir_left)
    (move_dir pos_05_06 pos_05_07 dir_down)
    (move_dir pos_05_06 pos_06_06 dir_right)
    (move_dir pos_05_07 pos_05_06 dir_up)
    (move_dir pos_05_07 pos_06_07 dir_right)
    (move_dir pos_05_10 pos_04_10 dir_left)
    (move_dir pos_05_10 pos_05_11 dir_down)
    (move_dir pos_05_10 pos_06_10 dir_right)
    (move_dir pos_05_11 pos_04_11 dir_left)
    (move_dir pos_05_11 pos_05_10 dir_up)
    (move_dir pos_05_11 pos_05_12 dir_down)
    (move_dir pos_05_11 pos_06_11 dir_right)
    (move_dir pos_05_12 pos_04_12 dir_left)
    (move_dir pos_05_12 pos_05_11 dir_up)
    (move_dir pos_05_12 pos_05_13 dir_down)
    (move_dir pos_05_12 pos_06_12 dir_right)
    (move_dir pos_05_13 pos_04_13 dir_left)
    (move_dir pos_05_13 pos_05_12 dir_up)
    (move_dir pos_05_13 pos_06_13 dir_right)
    (move_dir pos_06_02 pos_05_02 dir_left)
    (move_dir pos_06_02 pos_07_02 dir_right)
    (move_dir pos_06_04 pos_05_04 dir_left)
    (move_dir pos_06_04 pos_06_05 dir_down)
    (move_dir pos_06_04 pos_07_04 dir_right)
    (move_dir pos_06_05 pos_06_04 dir_up)
    (move_dir pos_06_05 pos_06_06 dir_down)
    (move_dir pos_06_06 pos_05_06 dir_left)
    (move_dir pos_06_06 pos_06_05 dir_up)
    (move_dir pos_06_06 pos_06_07 dir_down)
    (move_dir pos_06_06 pos_07_06 dir_right)
    (move_dir pos_06_07 pos_05_07 dir_left)
    (move_dir pos_06_07 pos_06_06 dir_up)
    (move_dir pos_06_07 pos_06_08 dir_down)
    (move_dir pos_06_07 pos_07_07 dir_right)
    (move_dir pos_06_08 pos_06_07 dir_up)
    (move_dir pos_06_08 pos_07_08 dir_right)
    (move_dir pos_06_10 pos_05_10 dir_left)
    (move_dir pos_06_10 pos_06_11 dir_down)
    (move_dir pos_06_10 pos_07_10 dir_right)
    (move_dir pos_06_11 pos_05_11 dir_left)
    (move_dir pos_06_11 pos_06_10 dir_up)
    (move_dir pos_06_11 pos_06_12 dir_down)
    (move_dir pos_06_11 pos_07_11 dir_right)
    (move_dir pos_06_12 pos_05_12 dir_left)
    (move_dir pos_06_12 pos_06_11 dir_up)
    (move_dir pos_06_12 pos_06_13 dir_down)
    (move_dir pos_06_12 pos_07_12 dir_right)
    (move_dir pos_06_13 pos_05_13 dir_left)
    (move_dir pos_06_13 pos_06_12 dir_up)
    (move_dir pos_06_13 pos_07_13 dir_right)
    (move_dir pos_07_02 pos_06_02 dir_left)
    (move_dir pos_07_02 pos_07_03 dir_down)
    (move_dir pos_07_03 pos_07_02 dir_up)
    (move_dir pos_07_03 pos_07_04 dir_down)
    (move_dir pos_07_04 pos_06_04 dir_left)
    (move_dir pos_07_04 pos_07_03 dir_up)
    (move_dir pos_07_06 pos_06_06 dir_left)
    (move_dir pos_07_06 pos_07_07 dir_down)
    (move_dir pos_07_07 pos_06_07 dir_left)
    (move_dir pos_07_07 pos_07_06 dir_up)
    (move_dir pos_07_07 pos_07_08 dir_down)
    (move_dir pos_07_07 pos_08_07 dir_right)
    (move_dir pos_07_08 pos_06_08 dir_left)
    (move_dir pos_07_08 pos_07_07 dir_up)
    (move_dir pos_07_10 pos_06_10 dir_left)
    (move_dir pos_07_10 pos_07_11 dir_down)
    (move_dir pos_07_11 pos_06_11 dir_left)
    (move_dir pos_07_11 pos_07_10 dir_up)
    (move_dir pos_07_11 pos_07_12 dir_down)
    (move_dir pos_07_11 pos_08_11 dir_right)
    (move_dir pos_07_12 pos_06_12 dir_left)
    (move_dir pos_07_12 pos_07_11 dir_up)
    (move_dir pos_07_12 pos_07_13 dir_down)
    (move_dir pos_07_12 pos_08_12 dir_right)
    (move_dir pos_07_13 pos_06_13 dir_left)
    (move_dir pos_07_13 pos_07_12 dir_up)
    (move_dir pos_07_13 pos_08_13 dir_right)
    (move_dir pos_08_07 pos_07_07 dir_left)
    (move_dir pos_08_07 pos_09_07 dir_right)
    (move_dir pos_08_11 pos_07_11 dir_left)
    (move_dir pos_08_11 pos_08_12 dir_down)
    (move_dir pos_08_12 pos_07_12 dir_left)
    (move_dir pos_08_12 pos_08_11 dir_up)
    (move_dir pos_08_12 pos_08_13 dir_down)
    (move_dir pos_08_13 pos_07_13 dir_left)
    (move_dir pos_08_13 pos_08_12 dir_up)
    (move_dir pos_09_01 pos_09_02 dir_down)
    (move_dir pos_09_01 pos_10_01 dir_right)
    (move_dir pos_09_02 pos_09_01 dir_up)
    (move_dir pos_09_02 pos_09_03 dir_down)
    (move_dir pos_09_02 pos_10_02 dir_right)
    (move_dir pos_09_03 pos_09_02 dir_up)
    (move_dir pos_09_03 pos_09_04 dir_down)
    (move_dir pos_09_03 pos_10_03 dir_right)
    (move_dir pos_09_04 pos_09_03 dir_up)
    (move_dir pos_09_04 pos_10_04 dir_right)
    (move_dir pos_09_06 pos_09_07 dir_down)
    (move_dir pos_09_06 pos_10_06 dir_right)
    (move_dir pos_09_07 pos_08_07 dir_left)
    (move_dir pos_09_07 pos_09_06 dir_up)
    (move_dir pos_09_07 pos_09_08 dir_down)
    (move_dir pos_09_07 pos_10_07 dir_right)
    (move_dir pos_09_08 pos_09_07 dir_up)
    (move_dir pos_09_08 pos_09_09 dir_down)
    (move_dir pos_09_08 pos_10_08 dir_right)
    (move_dir pos_09_09 pos_09_08 dir_up)
    (move_dir pos_09_09 pos_10_09 dir_right)
    (move_dir pos_10_01 pos_09_01 dir_left)
    (move_dir pos_10_01 pos_10_02 dir_down)
    (move_dir pos_10_01 pos_11_01 dir_right)
    (move_dir pos_10_02 pos_09_02 dir_left)
    (move_dir pos_10_02 pos_10_01 dir_up)
    (move_dir pos_10_02 pos_10_03 dir_down)
    (move_dir pos_10_02 pos_11_02 dir_right)
    (move_dir pos_10_03 pos_09_03 dir_left)
    (move_dir pos_10_03 pos_10_02 dir_up)
    (move_dir pos_10_03 pos_10_04 dir_down)
    (move_dir pos_10_03 pos_11_03 dir_right)
    (move_dir pos_10_04 pos_09_04 dir_left)
    (move_dir pos_10_04 pos_10_03 dir_up)
    (move_dir pos_10_04 pos_11_04 dir_right)
    (move_dir pos_10_06 pos_09_06 dir_left)
    (move_dir pos_10_06 pos_10_07 dir_down)
    (move_dir pos_10_07 pos_09_07 dir_left)
    (move_dir pos_10_07 pos_10_06 dir_up)
    (move_dir pos_10_07 pos_10_08 dir_down)
    (move_dir pos_10_07 pos_11_07 dir_right)
    (move_dir pos_10_08 pos_09_08 dir_left)
    (move_dir pos_10_08 pos_10_07 dir_up)
    (move_dir pos_10_08 pos_10_09 dir_down)
    (move_dir pos_10_08 pos_11_08 dir_right)
    (move_dir pos_10_09 pos_09_09 dir_left)
    (move_dir pos_10_09 pos_10_08 dir_up)
    (move_dir pos_10_09 pos_10_10 dir_down)
    (move_dir pos_10_09 pos_11_09 dir_right)
    (move_dir pos_10_10 pos_10_09 dir_up)
    (move_dir pos_10_10 pos_10_11 dir_down)
    (move_dir pos_10_10 pos_11_10 dir_right)
    (move_dir pos_10_11 pos_10_10 dir_up)
    (move_dir pos_10_11 pos_10_12 dir_down)
    (move_dir pos_10_11 pos_11_11 dir_right)
    (move_dir pos_10_12 pos_10_11 dir_up)
    (move_dir pos_10_12 pos_11_12 dir_right)
    (move_dir pos_11_01 pos_10_01 dir_left)
    (move_dir pos_11_01 pos_11_02 dir_down)
    (move_dir pos_11_01 pos_12_01 dir_right)
    (move_dir pos_11_02 pos_10_02 dir_left)
    (move_dir pos_11_02 pos_11_01 dir_up)
    (move_dir pos_11_02 pos_11_03 dir_down)
    (move_dir pos_11_02 pos_12_02 dir_right)
    (move_dir pos_11_03 pos_10_03 dir_left)
    (move_dir pos_11_03 pos_11_02 dir_up)
    (move_dir pos_11_03 pos_11_04 dir_down)
    (move_dir pos_11_03 pos_12_03 dir_right)
    (move_dir pos_11_04 pos_10_04 dir_left)
    (move_dir pos_11_04 pos_11_03 dir_up)
    (move_dir pos_11_04 pos_12_04 dir_right)
    (move_dir pos_11_07 pos_10_07 dir_left)
    (move_dir pos_11_07 pos_11_08 dir_down)
    (move_dir pos_11_08 pos_10_08 dir_left)
    (move_dir pos_11_08 pos_11_07 dir_up)
    (move_dir pos_11_08 pos_11_09 dir_down)
    (move_dir pos_11_08 pos_12_08 dir_right)
    (move_dir pos_11_09 pos_10_09 dir_left)
    (move_dir pos_11_09 pos_11_08 dir_up)
    (move_dir pos_11_09 pos_11_10 dir_down)
    (move_dir pos_11_09 pos_12_09 dir_right)
    (move_dir pos_11_10 pos_10_10 dir_left)
    (move_dir pos_11_10 pos_11_09 dir_up)
    (move_dir pos_11_10 pos_11_11 dir_down)
    (move_dir pos_11_10 pos_12_10 dir_right)
    (move_dir pos_11_11 pos_10_11 dir_left)
    (move_dir pos_11_11 pos_11_10 dir_up)
    (move_dir pos_11_11 pos_11_12 dir_down)
    (move_dir pos_11_12 pos_10_12 dir_left)
    (move_dir pos_11_12 pos_11_11 dir_up)
    (move_dir pos_12_01 pos_11_01 dir_left)
    (move_dir pos_12_01 pos_12_02 dir_down)
    (move_dir pos_12_01 pos_13_01 dir_right)
    (move_dir pos_12_02 pos_11_02 dir_left)
    (move_dir pos_12_02 pos_12_01 dir_up)
    (move_dir pos_12_02 pos_12_03 dir_down)
    (move_dir pos_12_02 pos_13_02 dir_right)
    (move_dir pos_12_03 pos_11_03 dir_left)
    (move_dir pos_12_03 pos_12_02 dir_up)
    (move_dir pos_12_03 pos_12_04 dir_down)
    (move_dir pos_12_03 pos_13_03 dir_right)
    (move_dir pos_12_04 pos_11_04 dir_left)
    (move_dir pos_12_04 pos_12_03 dir_up)
    (move_dir pos_12_04 pos_12_05 dir_down)
    (move_dir pos_12_04 pos_13_04 dir_right)
    (move_dir pos_12_05 pos_12_04 dir_up)
    (move_dir pos_12_05 pos_13_05 dir_right)
    (move_dir pos_12_08 pos_11_08 dir_left)
    (move_dir pos_12_08 pos_12_09 dir_down)
    (move_dir pos_12_08 pos_13_08 dir_right)
    (move_dir pos_12_09 pos_11_09 dir_left)
    (move_dir pos_12_09 pos_12_08 dir_up)
    (move_dir pos_12_09 pos_12_10 dir_down)
    (move_dir pos_12_09 pos_13_09 dir_right)
    (move_dir pos_12_10 pos_11_10 dir_left)
    (move_dir pos_12_10 pos_12_09 dir_up)
    (move_dir pos_13_01 pos_12_01 dir_left)
    (move_dir pos_13_01 pos_13_02 dir_down)
    (move_dir pos_13_01 pos_14_01 dir_right)
    (move_dir pos_13_02 pos_12_02 dir_left)
    (move_dir pos_13_02 pos_13_01 dir_up)
    (move_dir pos_13_02 pos_13_03 dir_down)
    (move_dir pos_13_02 pos_14_02 dir_right)
    (move_dir pos_13_03 pos_12_03 dir_left)
    (move_dir pos_13_03 pos_13_02 dir_up)
    (move_dir pos_13_03 pos_13_04 dir_down)
    (move_dir pos_13_03 pos_14_03 dir_right)
    (move_dir pos_13_04 pos_12_04 dir_left)
    (move_dir pos_13_04 pos_13_03 dir_up)
    (move_dir pos_13_04 pos_13_05 dir_down)
    (move_dir pos_13_04 pos_14_04 dir_right)
    (move_dir pos_13_05 pos_12_05 dir_left)
    (move_dir pos_13_05 pos_13_04 dir_up)
    (move_dir pos_13_05 pos_13_06 dir_down)
    (move_dir pos_13_05 pos_14_05 dir_right)
    (move_dir pos_13_06 pos_13_05 dir_up)
    (move_dir pos_13_06 pos_14_06 dir_right)
    (move_dir pos_13_08 pos_12_08 dir_left)
    (move_dir pos_13_08 pos_13_09 dir_down)
    (move_dir pos_13_09 pos_12_09 dir_left)
    (move_dir pos_13_09 pos_13_08 dir_up)
    (move_dir pos_13_12 pos_13_13 dir_down)
    (move_dir pos_13_12 pos_14_12 dir_right)
    (move_dir pos_13_13 pos_13_12 dir_up)
    (move_dir pos_13_13 pos_14_13 dir_right)
    (move_dir pos_14_01 pos_13_01 dir_left)
    (move_dir pos_14_01 pos_14_02 dir_down)
    (move_dir pos_14_02 pos_13_02 dir_left)
    (move_dir pos_14_02 pos_14_01 dir_up)
    (move_dir pos_14_02 pos_14_03 dir_down)
    (move_dir pos_14_03 pos_13_03 dir_left)
    (move_dir pos_14_03 pos_14_02 dir_up)
    (move_dir pos_14_03 pos_14_04 dir_down)
    (move_dir pos_14_04 pos_13_04 dir_left)
    (move_dir pos_14_04 pos_14_03 dir_up)
    (move_dir pos_14_04 pos_14_05 dir_down)
    (move_dir pos_14_05 pos_13_05 dir_left)
    (move_dir pos_14_05 pos_14_04 dir_up)
    (move_dir pos_14_05 pos_14_06 dir_down)
    (move_dir pos_14_06 pos_13_06 dir_left)
    (move_dir pos_14_06 pos_14_05 dir_up)
    (move_dir pos_14_11 pos_14_12 dir_down)
    (move_dir pos_14_12 pos_13_12 dir_left)
    (move_dir pos_14_12 pos_14_11 dir_up)
    (move_dir pos_14_12 pos_14_13 dir_down)
    (move_dir pos_14_13 pos_13_13 dir_left)
    (move_dir pos_14_13 pos_14_12 dir_up)
    (at player_01 pos_06_07)
    (at stone_01 pos_08_07)
    (at stone_02 pos_11_08)
    (at stone_03 pos_11_09)
    (at stone_04 pos_11_10)
    (clear pos_01_01)
    (clear pos_01_02)
    (clear pos_01_09)
    (clear pos_01_10)
    (clear pos_01_11)
    (clear pos_01_12)
    (clear pos_01_13)
    (clear pos_02_01)
    (clear pos_02_02)
    (clear pos_02_04)
    (clear pos_02_05)
    (clear pos_02_06)
    (clear pos_02_07)
    (clear pos_02_09)
    (clear pos_02_10)
    (clear pos_02_11)
    (clear pos_02_12)
    (clear pos_02_13)
    (clear pos_03_01)
    (clear pos_03_04)
    (clear pos_03_05)
    (clear pos_03_06)
    (clear pos_03_07)
    (clear pos_03_09)
    (clear pos_03_10)
    (clear pos_03_11)
    (clear pos_03_12)
    (clear pos_03_13)
    (clear pos_04_03)
    (clear pos_04_04)
    (clear pos_04_06)
    (clear pos_04_09)
    (clear pos_04_10)
    (clear pos_04_11)
    (clear pos_04_12)
    (clear pos_04_13)
    (clear pos_05_02)
    (clear pos_05_03)
    (clear pos_05_04)
    (clear pos_05_06)
    (clear pos_05_07)
    (clear pos_05_10)
    (clear pos_05_11)
    (clear pos_05_12)
    (clear pos_05_13)
    (clear pos_06_02)
    (clear pos_06_04)
    (clear pos_06_05)
    (clear pos_06_06)
    (clear pos_06_08)
    (clear pos_06_10)
    (clear pos_06_11)
    (clear pos_06_12)
    (clear pos_06_13)
    (clear pos_07_02)
    (clear pos_07_03)
    (clear pos_07_04)
    (clear pos_07_06)
    (clear pos_07_07)
    (clear pos_07_08)
    (clear pos_07_10)
    (clear pos_07_11)
    (clear pos_07_12)
    (clear pos_07_13)
    (clear pos_08_11)
    (clear pos_08_12)
    (clear pos_08_13)
    (clear pos_09_01)
    (clear pos_09_02)
    (clear pos_09_03)
    (clear pos_09_04)
    (clear pos_09_06)
    (clear pos_09_07)
    (clear pos_09_08)
    (clear pos_09_09)
    (clear pos_10_01)
    (clear pos_10_02)
    (clear pos_10_03)
    (clear pos_10_04)
    (clear pos_10_06)
    (clear pos_10_07)
    (clear pos_10_08)
    (clear pos_10_09)
    (clear pos_10_10)
    (clear pos_10_11)
    (clear pos_10_12)
    (clear pos_11_01)
    (clear pos_11_02)
    (clear pos_11_03)
    (clear pos_11_04)
    (clear pos_11_07)
    (clear pos_11_11)
    (clear pos_11_12)
    (clear pos_12_01)
    (clear pos_12_02)
    (clear pos_12_03)
    (clear pos_12_04)
    (clear pos_12_05)
    (clear pos_12_08)
    (clear pos_12_09)
    (clear pos_12_10)
    (clear pos_13_01)
    (clear pos_13_02)
    (clear pos_13_03)
    (clear pos_13_04)
    (clear pos_13_05)
    (clear pos_13_06)
    (clear pos_13_08)
    (clear pos_13_09)
    (clear pos_13_12)
    (clear pos_13_13)
    (clear pos_14_01)
    (clear pos_14_02)
    (clear pos_14_03)
    (clear pos_14_04)
    (clear pos_14_05)
    (clear pos_14_06)
    (clear pos_14_11)
    (clear pos_14_12)
    (clear pos_14_13)
    (= (total_cost) 0)
  )
  (:goal (and
    (at_goal stone_01)
    (at_goal stone_02)
    (at_goal stone_03)
    (at_goal stone_04)
  ))
  (:metric minimize (total_cost))
)
