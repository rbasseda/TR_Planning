;; ###### #####
;; #    ###   #
;; # $$     #@#
;; # $ #...   #
;; #   ########
;; #####

(define (problem p006_microban_sequential)
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
    pos_02_01 - location
    pos_02_02 - location
    pos_02_03 - location
    pos_02_04 - location
    pos_02_05 - location
    pos_02_06 - location
    pos_03_01 - location
    pos_03_02 - location
    pos_03_03 - location
    pos_03_04 - location
    pos_03_05 - location
    pos_03_06 - location
    pos_04_01 - location
    pos_04_02 - location
    pos_04_03 - location
    pos_04_04 - location
    pos_04_05 - location
    pos_04_06 - location
    pos_05_01 - location
    pos_05_02 - location
    pos_05_03 - location
    pos_05_04 - location
    pos_05_05 - location
    pos_05_06 - location
    pos_06_01 - location
    pos_06_02 - location
    pos_06_03 - location
    pos_06_04 - location
    pos_06_05 - location
    pos_06_06 - location
    pos_07_01 - location
    pos_07_02 - location
    pos_07_03 - location
    pos_07_04 - location
    pos_07_05 - location
    pos_07_06 - location
    pos_08_01 - location
    pos_08_02 - location
    pos_08_03 - location
    pos_08_04 - location
    pos_08_05 - location
    pos_08_06 - location
    pos_09_01 - location
    pos_09_02 - location
    pos_09_03 - location
    pos_09_04 - location
    pos_09_05 - location
    pos_09_06 - location
    pos_10_01 - location
    pos_10_02 - location
    pos_10_03 - location
    pos_10_04 - location
    pos_10_05 - location
    pos_10_06 - location
    pos_11_01 - location
    pos_11_02 - location
    pos_11_03 - location
    pos_11_04 - location
    pos_11_05 - location
    pos_11_06 - location
    pos_12_01 - location
    pos_12_02 - location
    pos_12_03 - location
    pos_12_04 - location
    pos_12_05 - location
    pos_12_06 - location
    stone_01 - stone
    stone_02 - stone
    stone_03 - stone
  )
  (:init
    (is_goal pos_06_04)
    (is_goal pos_07_04)
    (is_goal pos_08_04)
    (is_nongoal pos_01_01)
    (is_nongoal pos_01_02)
    (is_nongoal pos_01_03)
    (is_nongoal pos_01_04)
    (is_nongoal pos_01_05)
    (is_nongoal pos_01_06)
    (is_nongoal pos_02_01)
    (is_nongoal pos_02_02)
    (is_nongoal pos_02_03)
    (is_nongoal pos_02_04)
    (is_nongoal pos_02_05)
    (is_nongoal pos_02_06)
    (is_nongoal pos_03_01)
    (is_nongoal pos_03_02)
    (is_nongoal pos_03_03)
    (is_nongoal pos_03_04)
    (is_nongoal pos_03_05)
    (is_nongoal pos_03_06)
    (is_nongoal pos_04_01)
    (is_nongoal pos_04_02)
    (is_nongoal pos_04_03)
    (is_nongoal pos_04_04)
    (is_nongoal pos_04_05)
    (is_nongoal pos_04_06)
    (is_nongoal pos_05_01)
    (is_nongoal pos_05_02)
    (is_nongoal pos_05_03)
    (is_nongoal pos_05_04)
    (is_nongoal pos_05_05)
    (is_nongoal pos_05_06)
    (is_nongoal pos_06_01)
    (is_nongoal pos_06_02)
    (is_nongoal pos_06_03)
    (is_nongoal pos_06_05)
    (is_nongoal pos_06_06)
    (is_nongoal pos_07_01)
    (is_nongoal pos_07_02)
    (is_nongoal pos_07_03)
    (is_nongoal pos_07_05)
    (is_nongoal pos_07_06)
    (is_nongoal pos_08_01)
    (is_nongoal pos_08_02)
    (is_nongoal pos_08_03)
    (is_nongoal pos_08_05)
    (is_nongoal pos_08_06)
    (is_nongoal pos_09_01)
    (is_nongoal pos_09_02)
    (is_nongoal pos_09_03)
    (is_nongoal pos_09_04)
    (is_nongoal pos_09_05)
    (is_nongoal pos_09_06)
    (is_nongoal pos_10_01)
    (is_nongoal pos_10_02)
    (is_nongoal pos_10_03)
    (is_nongoal pos_10_04)
    (is_nongoal pos_10_05)
    (is_nongoal pos_10_06)
    (is_nongoal pos_11_01)
    (is_nongoal pos_11_02)
    (is_nongoal pos_11_03)
    (is_nongoal pos_11_04)
    (is_nongoal pos_11_05)
    (is_nongoal pos_11_06)
    (is_nongoal pos_12_01)
    (is_nongoal pos_12_02)
    (is_nongoal pos_12_03)
    (is_nongoal pos_12_04)
    (is_nongoal pos_12_05)
    (is_nongoal pos_12_06)
    (move_dir pos_02_02 pos_02_03 dir_down)
    (move_dir pos_02_02 pos_03_02 dir_right)
    (move_dir pos_02_03 pos_02_02 dir_up)
    (move_dir pos_02_03 pos_02_04 dir_down)
    (move_dir pos_02_03 pos_03_03 dir_right)
    (move_dir pos_02_04 pos_02_03 dir_up)
    (move_dir pos_02_04 pos_02_05 dir_down)
    (move_dir pos_02_04 pos_03_04 dir_right)
    (move_dir pos_02_05 pos_02_04 dir_up)
    (move_dir pos_02_05 pos_03_05 dir_right)
    (move_dir pos_03_02 pos_02_02 dir_left)
    (move_dir pos_03_02 pos_03_03 dir_down)
    (move_dir pos_03_02 pos_04_02 dir_right)
    (move_dir pos_03_03 pos_02_03 dir_left)
    (move_dir pos_03_03 pos_03_02 dir_up)
    (move_dir pos_03_03 pos_03_04 dir_down)
    (move_dir pos_03_03 pos_04_03 dir_right)
    (move_dir pos_03_04 pos_02_04 dir_left)
    (move_dir pos_03_04 pos_03_03 dir_up)
    (move_dir pos_03_04 pos_03_05 dir_down)
    (move_dir pos_03_04 pos_04_04 dir_right)
    (move_dir pos_03_05 pos_02_05 dir_left)
    (move_dir pos_03_05 pos_03_04 dir_up)
    (move_dir pos_03_05 pos_04_05 dir_right)
    (move_dir pos_04_02 pos_03_02 dir_left)
    (move_dir pos_04_02 pos_04_03 dir_down)
    (move_dir pos_04_02 pos_05_02 dir_right)
    (move_dir pos_04_03 pos_03_03 dir_left)
    (move_dir pos_04_03 pos_04_02 dir_up)
    (move_dir pos_04_03 pos_04_04 dir_down)
    (move_dir pos_04_03 pos_05_03 dir_right)
    (move_dir pos_04_04 pos_03_04 dir_left)
    (move_dir pos_04_04 pos_04_03 dir_up)
    (move_dir pos_04_04 pos_04_05 dir_down)
    (move_dir pos_04_05 pos_03_05 dir_left)
    (move_dir pos_04_05 pos_04_04 dir_up)
    (move_dir pos_05_02 pos_04_02 dir_left)
    (move_dir pos_05_02 pos_05_03 dir_down)
    (move_dir pos_05_03 pos_04_03 dir_left)
    (move_dir pos_05_03 pos_05_02 dir_up)
    (move_dir pos_05_03 pos_06_03 dir_right)
    (move_dir pos_06_03 pos_05_03 dir_left)
    (move_dir pos_06_03 pos_06_04 dir_down)
    (move_dir pos_06_03 pos_07_03 dir_right)
    (move_dir pos_06_04 pos_06_03 dir_up)
    (move_dir pos_06_04 pos_07_04 dir_right)
    (move_dir pos_06_06 pos_07_06 dir_right)
    (move_dir pos_07_03 pos_06_03 dir_left)
    (move_dir pos_07_03 pos_07_04 dir_down)
    (move_dir pos_07_03 pos_08_03 dir_right)
    (move_dir pos_07_04 pos_06_04 dir_left)
    (move_dir pos_07_04 pos_07_03 dir_up)
    (move_dir pos_07_04 pos_08_04 dir_right)
    (move_dir pos_07_06 pos_06_06 dir_left)
    (move_dir pos_07_06 pos_08_06 dir_right)
    (move_dir pos_08_03 pos_07_03 dir_left)
    (move_dir pos_08_03 pos_08_04 dir_down)
    (move_dir pos_08_03 pos_09_03 dir_right)
    (move_dir pos_08_04 pos_07_04 dir_left)
    (move_dir pos_08_04 pos_08_03 dir_up)
    (move_dir pos_08_04 pos_09_04 dir_right)
    (move_dir pos_08_06 pos_07_06 dir_left)
    (move_dir pos_08_06 pos_09_06 dir_right)
    (move_dir pos_09_02 pos_09_03 dir_down)
    (move_dir pos_09_02 pos_10_02 dir_right)
    (move_dir pos_09_03 pos_08_03 dir_left)
    (move_dir pos_09_03 pos_09_02 dir_up)
    (move_dir pos_09_03 pos_09_04 dir_down)
    (move_dir pos_09_04 pos_08_04 dir_left)
    (move_dir pos_09_04 pos_09_03 dir_up)
    (move_dir pos_09_04 pos_10_04 dir_right)
    (move_dir pos_09_06 pos_08_06 dir_left)
    (move_dir pos_09_06 pos_10_06 dir_right)
    (move_dir pos_10_02 pos_09_02 dir_left)
    (move_dir pos_10_02 pos_11_02 dir_right)
    (move_dir pos_10_04 pos_09_04 dir_left)
    (move_dir pos_10_04 pos_11_04 dir_right)
    (move_dir pos_10_06 pos_09_06 dir_left)
    (move_dir pos_10_06 pos_11_06 dir_right)
    (move_dir pos_11_02 pos_10_02 dir_left)
    (move_dir pos_11_02 pos_11_03 dir_down)
    (move_dir pos_11_03 pos_11_02 dir_up)
    (move_dir pos_11_03 pos_11_04 dir_down)
    (move_dir pos_11_04 pos_10_04 dir_left)
    (move_dir pos_11_04 pos_11_03 dir_up)
    (move_dir pos_11_06 pos_10_06 dir_left)
    (move_dir pos_11_06 pos_12_06 dir_right)
    (move_dir pos_12_06 pos_11_06 dir_left)
    (at player_01 pos_11_03)
    (at stone_01 pos_03_03)
    (at stone_02 pos_04_03)
    (at stone_03 pos_03_04)
    (clear pos_02_02)
    (clear pos_02_03)
    (clear pos_02_04)
    (clear pos_02_05)
    (clear pos_03_02)
    (clear pos_03_05)
    (clear pos_04_02)
    (clear pos_04_04)
    (clear pos_04_05)
    (clear pos_05_02)
    (clear pos_05_03)
    (clear pos_06_03)
    (clear pos_06_04)
    (clear pos_06_06)
    (clear pos_07_01)
    (clear pos_07_03)
    (clear pos_07_04)
    (clear pos_07_06)
    (clear pos_08_03)
    (clear pos_08_04)
    (clear pos_08_06)
    (clear pos_09_02)
    (clear pos_09_03)
    (clear pos_09_04)
    (clear pos_09_06)
    (clear pos_10_02)
    (clear pos_10_04)
    (clear pos_10_06)
    (clear pos_11_02)
    (clear pos_11_04)
    (clear pos_11_06)
    (clear pos_12_06)
    (= (total_cost) 0)
  )
  (:goal (and
    (at_goal stone_01)
    (at_goal stone_02)
    (at_goal stone_03)
  ))
  (:metric minimize (total_cost))
)
