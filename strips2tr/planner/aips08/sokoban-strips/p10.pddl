;; 'take the long way home.'
;;
;;  ############################
;;  #                          #
;;  # ######################## #
;;  # #                      # #
;;  # # #################### # #
;;  # # #                  # # #
;;  # # # ################ # # #
;;  # # # #              # # # #
;;  # # # # ############ # # # #
;;  # # # # #            # # # #
;;  # # # # # ############ # # #
;;  # # # # #              # # #
;;  # # # # ################ # #
;;  # # # #                  # #
;; ##$# # #################### #
;; #. @ #                      #
;; #############################

(define (problem p154_microban_sequential)
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
    pos_01_14 - location
    pos_01_15 - location
    pos_01_16 - location
    pos_01_17 - location
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
    pos_02_14 - location
    pos_02_15 - location
    pos_02_16 - location
    pos_02_17 - location
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
    pos_03_14 - location
    pos_03_15 - location
    pos_03_16 - location
    pos_03_17 - location
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
    pos_04_14 - location
    pos_04_15 - location
    pos_04_16 - location
    pos_04_17 - location
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
    pos_05_14 - location
    pos_05_15 - location
    pos_05_16 - location
    pos_05_17 - location
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
    pos_06_14 - location
    pos_06_15 - location
    pos_06_16 - location
    pos_06_17 - location
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
    pos_07_14 - location
    pos_07_15 - location
    pos_07_16 - location
    pos_07_17 - location
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
    pos_08_14 - location
    pos_08_15 - location
    pos_08_16 - location
    pos_08_17 - location
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
    pos_09_14 - location
    pos_09_15 - location
    pos_09_16 - location
    pos_09_17 - location
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
    pos_10_14 - location
    pos_10_15 - location
    pos_10_16 - location
    pos_10_17 - location
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
    pos_11_14 - location
    pos_11_15 - location
    pos_11_16 - location
    pos_11_17 - location
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
    pos_12_14 - location
    pos_12_15 - location
    pos_12_16 - location
    pos_12_17 - location
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
    pos_13_14 - location
    pos_13_15 - location
    pos_13_16 - location
    pos_13_17 - location
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
    pos_14_14 - location
    pos_14_15 - location
    pos_14_16 - location
    pos_14_17 - location
    pos_15_01 - location
    pos_15_02 - location
    pos_15_03 - location
    pos_15_04 - location
    pos_15_05 - location
    pos_15_06 - location
    pos_15_07 - location
    pos_15_08 - location
    pos_15_09 - location
    pos_15_10 - location
    pos_15_11 - location
    pos_15_12 - location
    pos_15_13 - location
    pos_15_14 - location
    pos_15_15 - location
    pos_15_16 - location
    pos_15_17 - location
    pos_16_01 - location
    pos_16_02 - location
    pos_16_03 - location
    pos_16_04 - location
    pos_16_05 - location
    pos_16_06 - location
    pos_16_07 - location
    pos_16_08 - location
    pos_16_09 - location
    pos_16_10 - location
    pos_16_11 - location
    pos_16_12 - location
    pos_16_13 - location
    pos_16_14 - location
    pos_16_15 - location
    pos_16_16 - location
    pos_16_17 - location
    pos_17_01 - location
    pos_17_02 - location
    pos_17_03 - location
    pos_17_04 - location
    pos_17_05 - location
    pos_17_06 - location
    pos_17_07 - location
    pos_17_08 - location
    pos_17_09 - location
    pos_17_10 - location
    pos_17_11 - location
    pos_17_12 - location
    pos_17_13 - location
    pos_17_14 - location
    pos_17_15 - location
    pos_17_16 - location
    pos_17_17 - location
    pos_18_01 - location
    pos_18_02 - location
    pos_18_03 - location
    pos_18_04 - location
    pos_18_05 - location
    pos_18_06 - location
    pos_18_07 - location
    pos_18_08 - location
    pos_18_09 - location
    pos_18_10 - location
    pos_18_11 - location
    pos_18_12 - location
    pos_18_13 - location
    pos_18_14 - location
    pos_18_15 - location
    pos_18_16 - location
    pos_18_17 - location
    pos_19_01 - location
    pos_19_02 - location
    pos_19_03 - location
    pos_19_04 - location
    pos_19_05 - location
    pos_19_06 - location
    pos_19_07 - location
    pos_19_08 - location
    pos_19_09 - location
    pos_19_10 - location
    pos_19_11 - location
    pos_19_12 - location
    pos_19_13 - location
    pos_19_14 - location
    pos_19_15 - location
    pos_19_16 - location
    pos_19_17 - location
    pos_20_01 - location
    pos_20_02 - location
    pos_20_03 - location
    pos_20_04 - location
    pos_20_05 - location
    pos_20_06 - location
    pos_20_07 - location
    pos_20_08 - location
    pos_20_09 - location
    pos_20_10 - location
    pos_20_11 - location
    pos_20_12 - location
    pos_20_13 - location
    pos_20_14 - location
    pos_20_15 - location
    pos_20_16 - location
    pos_20_17 - location
    pos_21_01 - location
    pos_21_02 - location
    pos_21_03 - location
    pos_21_04 - location
    pos_21_05 - location
    pos_21_06 - location
    pos_21_07 - location
    pos_21_08 - location
    pos_21_09 - location
    pos_21_10 - location
    pos_21_11 - location
    pos_21_12 - location
    pos_21_13 - location
    pos_21_14 - location
    pos_21_15 - location
    pos_21_16 - location
    pos_21_17 - location
    pos_22_01 - location
    pos_22_02 - location
    pos_22_03 - location
    pos_22_04 - location
    pos_22_05 - location
    pos_22_06 - location
    pos_22_07 - location
    pos_22_08 - location
    pos_22_09 - location
    pos_22_10 - location
    pos_22_11 - location
    pos_22_12 - location
    pos_22_13 - location
    pos_22_14 - location
    pos_22_15 - location
    pos_22_16 - location
    pos_22_17 - location
    pos_23_01 - location
    pos_23_02 - location
    pos_23_03 - location
    pos_23_04 - location
    pos_23_05 - location
    pos_23_06 - location
    pos_23_07 - location
    pos_23_08 - location
    pos_23_09 - location
    pos_23_10 - location
    pos_23_11 - location
    pos_23_12 - location
    pos_23_13 - location
    pos_23_14 - location
    pos_23_15 - location
    pos_23_16 - location
    pos_23_17 - location
    pos_24_01 - location
    pos_24_02 - location
    pos_24_03 - location
    pos_24_04 - location
    pos_24_05 - location
    pos_24_06 - location
    pos_24_07 - location
    pos_24_08 - location
    pos_24_09 - location
    pos_24_10 - location
    pos_24_11 - location
    pos_24_12 - location
    pos_24_13 - location
    pos_24_14 - location
    pos_24_15 - location
    pos_24_16 - location
    pos_24_17 - location
    pos_25_01 - location
    pos_25_02 - location
    pos_25_03 - location
    pos_25_04 - location
    pos_25_05 - location
    pos_25_06 - location
    pos_25_07 - location
    pos_25_08 - location
    pos_25_09 - location
    pos_25_10 - location
    pos_25_11 - location
    pos_25_12 - location
    pos_25_13 - location
    pos_25_14 - location
    pos_25_15 - location
    pos_25_16 - location
    pos_25_17 - location
    pos_26_01 - location
    pos_26_02 - location
    pos_26_03 - location
    pos_26_04 - location
    pos_26_05 - location
    pos_26_06 - location
    pos_26_07 - location
    pos_26_08 - location
    pos_26_09 - location
    pos_26_10 - location
    pos_26_11 - location
    pos_26_12 - location
    pos_26_13 - location
    pos_26_14 - location
    pos_26_15 - location
    pos_26_16 - location
    pos_26_17 - location
    pos_27_01 - location
    pos_27_02 - location
    pos_27_03 - location
    pos_27_04 - location
    pos_27_05 - location
    pos_27_06 - location
    pos_27_07 - location
    pos_27_08 - location
    pos_27_09 - location
    pos_27_10 - location
    pos_27_11 - location
    pos_27_12 - location
    pos_27_13 - location
    pos_27_14 - location
    pos_27_15 - location
    pos_27_16 - location
    pos_27_17 - location
    pos_28_01 - location
    pos_28_02 - location
    pos_28_03 - location
    pos_28_04 - location
    pos_28_05 - location
    pos_28_06 - location
    pos_28_07 - location
    pos_28_08 - location
    pos_28_09 - location
    pos_28_10 - location
    pos_28_11 - location
    pos_28_12 - location
    pos_28_13 - location
    pos_28_14 - location
    pos_28_15 - location
    pos_28_16 - location
    pos_28_17 - location
    pos_29_01 - location
    pos_29_02 - location
    pos_29_03 - location
    pos_29_04 - location
    pos_29_05 - location
    pos_29_06 - location
    pos_29_07 - location
    pos_29_08 - location
    pos_29_09 - location
    pos_29_10 - location
    pos_29_11 - location
    pos_29_12 - location
    pos_29_13 - location
    pos_29_14 - location
    pos_29_15 - location
    pos_29_16 - location
    pos_29_17 - location
    stone_01 - stone
  )
  (:init
    (is_goal pos_02_16)
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
    (is_nongoal pos_01_14)
    (is_nongoal pos_01_15)
    (is_nongoal pos_01_16)
    (is_nongoal pos_01_17)
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
    (is_nongoal pos_02_14)
    (is_nongoal pos_02_15)
    (is_nongoal pos_02_17)
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
    (is_nongoal pos_03_14)
    (is_nongoal pos_03_15)
    (is_nongoal pos_03_16)
    (is_nongoal pos_03_17)
    (is_nongoal pos_04_01)
    (is_nongoal pos_04_02)
    (is_nongoal pos_04_03)
    (is_nongoal pos_04_04)
    (is_nongoal pos_04_05)
    (is_nongoal pos_04_06)
    (is_nongoal pos_04_07)
    (is_nongoal pos_04_08)
    (is_nongoal pos_04_09)
    (is_nongoal pos_04_10)
    (is_nongoal pos_04_11)
    (is_nongoal pos_04_12)
    (is_nongoal pos_04_13)
    (is_nongoal pos_04_14)
    (is_nongoal pos_04_15)
    (is_nongoal pos_04_16)
    (is_nongoal pos_04_17)
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
    (is_nongoal pos_05_14)
    (is_nongoal pos_05_15)
    (is_nongoal pos_05_16)
    (is_nongoal pos_05_17)
    (is_nongoal pos_06_01)
    (is_nongoal pos_06_02)
    (is_nongoal pos_06_03)
    (is_nongoal pos_06_04)
    (is_nongoal pos_06_05)
    (is_nongoal pos_06_06)
    (is_nongoal pos_06_07)
    (is_nongoal pos_06_08)
    (is_nongoal pos_06_09)
    (is_nongoal pos_06_10)
    (is_nongoal pos_06_11)
    (is_nongoal pos_06_12)
    (is_nongoal pos_06_13)
    (is_nongoal pos_06_14)
    (is_nongoal pos_06_15)
    (is_nongoal pos_06_16)
    (is_nongoal pos_06_17)
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
    (is_nongoal pos_07_14)
    (is_nongoal pos_07_15)
    (is_nongoal pos_07_16)
    (is_nongoal pos_07_17)
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
    (is_nongoal pos_08_14)
    (is_nongoal pos_08_15)
    (is_nongoal pos_08_16)
    (is_nongoal pos_08_17)
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
    (is_nongoal pos_09_14)
    (is_nongoal pos_09_15)
    (is_nongoal pos_09_16)
    (is_nongoal pos_09_17)
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
    (is_nongoal pos_10_14)
    (is_nongoal pos_10_15)
    (is_nongoal pos_10_16)
    (is_nongoal pos_10_17)
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
    (is_nongoal pos_11_14)
    (is_nongoal pos_11_15)
    (is_nongoal pos_11_16)
    (is_nongoal pos_11_17)
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
    (is_nongoal pos_12_14)
    (is_nongoal pos_12_15)
    (is_nongoal pos_12_16)
    (is_nongoal pos_12_17)
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
    (is_nongoal pos_13_14)
    (is_nongoal pos_13_15)
    (is_nongoal pos_13_16)
    (is_nongoal pos_13_17)
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
    (is_nongoal pos_14_14)
    (is_nongoal pos_14_15)
    (is_nongoal pos_14_16)
    (is_nongoal pos_14_17)
    (is_nongoal pos_15_01)
    (is_nongoal pos_15_02)
    (is_nongoal pos_15_03)
    (is_nongoal pos_15_04)
    (is_nongoal pos_15_05)
    (is_nongoal pos_15_06)
    (is_nongoal pos_15_07)
    (is_nongoal pos_15_08)
    (is_nongoal pos_15_09)
    (is_nongoal pos_15_10)
    (is_nongoal pos_15_11)
    (is_nongoal pos_15_12)
    (is_nongoal pos_15_13)
    (is_nongoal pos_15_14)
    (is_nongoal pos_15_15)
    (is_nongoal pos_15_16)
    (is_nongoal pos_15_17)
    (is_nongoal pos_16_01)
    (is_nongoal pos_16_02)
    (is_nongoal pos_16_03)
    (is_nongoal pos_16_04)
    (is_nongoal pos_16_05)
    (is_nongoal pos_16_06)
    (is_nongoal pos_16_07)
    (is_nongoal pos_16_08)
    (is_nongoal pos_16_09)
    (is_nongoal pos_16_10)
    (is_nongoal pos_16_11)
    (is_nongoal pos_16_12)
    (is_nongoal pos_16_13)
    (is_nongoal pos_16_14)
    (is_nongoal pos_16_15)
    (is_nongoal pos_16_16)
    (is_nongoal pos_16_17)
    (is_nongoal pos_17_01)
    (is_nongoal pos_17_02)
    (is_nongoal pos_17_03)
    (is_nongoal pos_17_04)
    (is_nongoal pos_17_05)
    (is_nongoal pos_17_06)
    (is_nongoal pos_17_07)
    (is_nongoal pos_17_08)
    (is_nongoal pos_17_09)
    (is_nongoal pos_17_10)
    (is_nongoal pos_17_11)
    (is_nongoal pos_17_12)
    (is_nongoal pos_17_13)
    (is_nongoal pos_17_14)
    (is_nongoal pos_17_15)
    (is_nongoal pos_17_16)
    (is_nongoal pos_17_17)
    (is_nongoal pos_18_01)
    (is_nongoal pos_18_02)
    (is_nongoal pos_18_03)
    (is_nongoal pos_18_04)
    (is_nongoal pos_18_05)
    (is_nongoal pos_18_06)
    (is_nongoal pos_18_07)
    (is_nongoal pos_18_08)
    (is_nongoal pos_18_09)
    (is_nongoal pos_18_10)
    (is_nongoal pos_18_11)
    (is_nongoal pos_18_12)
    (is_nongoal pos_18_13)
    (is_nongoal pos_18_14)
    (is_nongoal pos_18_15)
    (is_nongoal pos_18_16)
    (is_nongoal pos_18_17)
    (is_nongoal pos_19_01)
    (is_nongoal pos_19_02)
    (is_nongoal pos_19_03)
    (is_nongoal pos_19_04)
    (is_nongoal pos_19_05)
    (is_nongoal pos_19_06)
    (is_nongoal pos_19_07)
    (is_nongoal pos_19_08)
    (is_nongoal pos_19_09)
    (is_nongoal pos_19_10)
    (is_nongoal pos_19_11)
    (is_nongoal pos_19_12)
    (is_nongoal pos_19_13)
    (is_nongoal pos_19_14)
    (is_nongoal pos_19_15)
    (is_nongoal pos_19_16)
    (is_nongoal pos_19_17)
    (is_nongoal pos_20_01)
    (is_nongoal pos_20_02)
    (is_nongoal pos_20_03)
    (is_nongoal pos_20_04)
    (is_nongoal pos_20_05)
    (is_nongoal pos_20_06)
    (is_nongoal pos_20_07)
    (is_nongoal pos_20_08)
    (is_nongoal pos_20_09)
    (is_nongoal pos_20_10)
    (is_nongoal pos_20_11)
    (is_nongoal pos_20_12)
    (is_nongoal pos_20_13)
    (is_nongoal pos_20_14)
    (is_nongoal pos_20_15)
    (is_nongoal pos_20_16)
    (is_nongoal pos_20_17)
    (is_nongoal pos_21_01)
    (is_nongoal pos_21_02)
    (is_nongoal pos_21_03)
    (is_nongoal pos_21_04)
    (is_nongoal pos_21_05)
    (is_nongoal pos_21_06)
    (is_nongoal pos_21_07)
    (is_nongoal pos_21_08)
    (is_nongoal pos_21_09)
    (is_nongoal pos_21_10)
    (is_nongoal pos_21_11)
    (is_nongoal pos_21_12)
    (is_nongoal pos_21_13)
    (is_nongoal pos_21_14)
    (is_nongoal pos_21_15)
    (is_nongoal pos_21_16)
    (is_nongoal pos_21_17)
    (is_nongoal pos_22_01)
    (is_nongoal pos_22_02)
    (is_nongoal pos_22_03)
    (is_nongoal pos_22_04)
    (is_nongoal pos_22_05)
    (is_nongoal pos_22_06)
    (is_nongoal pos_22_07)
    (is_nongoal pos_22_08)
    (is_nongoal pos_22_09)
    (is_nongoal pos_22_10)
    (is_nongoal pos_22_11)
    (is_nongoal pos_22_12)
    (is_nongoal pos_22_13)
    (is_nongoal pos_22_14)
    (is_nongoal pos_22_15)
    (is_nongoal pos_22_16)
    (is_nongoal pos_22_17)
    (is_nongoal pos_23_01)
    (is_nongoal pos_23_02)
    (is_nongoal pos_23_03)
    (is_nongoal pos_23_04)
    (is_nongoal pos_23_05)
    (is_nongoal pos_23_06)
    (is_nongoal pos_23_07)
    (is_nongoal pos_23_08)
    (is_nongoal pos_23_09)
    (is_nongoal pos_23_10)
    (is_nongoal pos_23_11)
    (is_nongoal pos_23_12)
    (is_nongoal pos_23_13)
    (is_nongoal pos_23_14)
    (is_nongoal pos_23_15)
    (is_nongoal pos_23_16)
    (is_nongoal pos_23_17)
    (is_nongoal pos_24_01)
    (is_nongoal pos_24_02)
    (is_nongoal pos_24_03)
    (is_nongoal pos_24_04)
    (is_nongoal pos_24_05)
    (is_nongoal pos_24_06)
    (is_nongoal pos_24_07)
    (is_nongoal pos_24_08)
    (is_nongoal pos_24_09)
    (is_nongoal pos_24_10)
    (is_nongoal pos_24_11)
    (is_nongoal pos_24_12)
    (is_nongoal pos_24_13)
    (is_nongoal pos_24_14)
    (is_nongoal pos_24_15)
    (is_nongoal pos_24_16)
    (is_nongoal pos_24_17)
    (is_nongoal pos_25_01)
    (is_nongoal pos_25_02)
    (is_nongoal pos_25_03)
    (is_nongoal pos_25_04)
    (is_nongoal pos_25_05)
    (is_nongoal pos_25_06)
    (is_nongoal pos_25_07)
    (is_nongoal pos_25_08)
    (is_nongoal pos_25_09)
    (is_nongoal pos_25_10)
    (is_nongoal pos_25_11)
    (is_nongoal pos_25_12)
    (is_nongoal pos_25_13)
    (is_nongoal pos_25_14)
    (is_nongoal pos_25_15)
    (is_nongoal pos_25_16)
    (is_nongoal pos_25_17)
    (is_nongoal pos_26_01)
    (is_nongoal pos_26_02)
    (is_nongoal pos_26_03)
    (is_nongoal pos_26_04)
    (is_nongoal pos_26_05)
    (is_nongoal pos_26_06)
    (is_nongoal pos_26_07)
    (is_nongoal pos_26_08)
    (is_nongoal pos_26_09)
    (is_nongoal pos_26_10)
    (is_nongoal pos_26_11)
    (is_nongoal pos_26_12)
    (is_nongoal pos_26_13)
    (is_nongoal pos_26_14)
    (is_nongoal pos_26_15)
    (is_nongoal pos_26_16)
    (is_nongoal pos_26_17)
    (is_nongoal pos_27_01)
    (is_nongoal pos_27_02)
    (is_nongoal pos_27_03)
    (is_nongoal pos_27_04)
    (is_nongoal pos_27_05)
    (is_nongoal pos_27_06)
    (is_nongoal pos_27_07)
    (is_nongoal pos_27_08)
    (is_nongoal pos_27_09)
    (is_nongoal pos_27_10)
    (is_nongoal pos_27_11)
    (is_nongoal pos_27_12)
    (is_nongoal pos_27_13)
    (is_nongoal pos_27_14)
    (is_nongoal pos_27_15)
    (is_nongoal pos_27_16)
    (is_nongoal pos_27_17)
    (is_nongoal pos_28_01)
    (is_nongoal pos_28_02)
    (is_nongoal pos_28_03)
    (is_nongoal pos_28_04)
    (is_nongoal pos_28_05)
    (is_nongoal pos_28_06)
    (is_nongoal pos_28_07)
    (is_nongoal pos_28_08)
    (is_nongoal pos_28_09)
    (is_nongoal pos_28_10)
    (is_nongoal pos_28_11)
    (is_nongoal pos_28_12)
    (is_nongoal pos_28_13)
    (is_nongoal pos_28_14)
    (is_nongoal pos_28_15)
    (is_nongoal pos_28_16)
    (is_nongoal pos_28_17)
    (is_nongoal pos_29_01)
    (is_nongoal pos_29_02)
    (is_nongoal pos_29_03)
    (is_nongoal pos_29_04)
    (is_nongoal pos_29_05)
    (is_nongoal pos_29_06)
    (is_nongoal pos_29_07)
    (is_nongoal pos_29_08)
    (is_nongoal pos_29_09)
    (is_nongoal pos_29_10)
    (is_nongoal pos_29_11)
    (is_nongoal pos_29_12)
    (is_nongoal pos_29_13)
    (is_nongoal pos_29_14)
    (is_nongoal pos_29_15)
    (is_nongoal pos_29_16)
    (is_nongoal pos_29_17)
    (move_dir pos_01_01 pos_01_02 dir_down)
    (move_dir pos_01_02 pos_01_01 dir_up)
    (move_dir pos_01_02 pos_01_03 dir_down)
    (move_dir pos_01_03 pos_01_02 dir_up)
    (move_dir pos_01_03 pos_01_04 dir_down)
    (move_dir pos_01_04 pos_01_03 dir_up)
    (move_dir pos_01_04 pos_01_05 dir_down)
    (move_dir pos_01_05 pos_01_04 dir_up)
    (move_dir pos_01_05 pos_01_06 dir_down)
    (move_dir pos_01_06 pos_01_05 dir_up)
    (move_dir pos_01_06 pos_01_07 dir_down)
    (move_dir pos_01_07 pos_01_06 dir_up)
    (move_dir pos_01_07 pos_01_08 dir_down)
    (move_dir pos_01_08 pos_01_07 dir_up)
    (move_dir pos_01_08 pos_01_09 dir_down)
    (move_dir pos_01_09 pos_01_08 dir_up)
    (move_dir pos_01_09 pos_01_10 dir_down)
    (move_dir pos_01_10 pos_01_09 dir_up)
    (move_dir pos_01_10 pos_01_11 dir_down)
    (move_dir pos_01_11 pos_01_10 dir_up)
    (move_dir pos_01_11 pos_01_12 dir_down)
    (move_dir pos_01_12 pos_01_11 dir_up)
    (move_dir pos_01_12 pos_01_13 dir_down)
    (move_dir pos_01_13 pos_01_12 dir_up)
    (move_dir pos_01_13 pos_01_14 dir_down)
    (move_dir pos_01_14 pos_01_13 dir_up)
    (move_dir pos_02_16 pos_03_16 dir_right)
    (move_dir pos_03_02 pos_03_03 dir_down)
    (move_dir pos_03_02 pos_04_02 dir_right)
    (move_dir pos_03_03 pos_03_02 dir_up)
    (move_dir pos_03_03 pos_03_04 dir_down)
    (move_dir pos_03_04 pos_03_03 dir_up)
    (move_dir pos_03_04 pos_03_05 dir_down)
    (move_dir pos_03_05 pos_03_04 dir_up)
    (move_dir pos_03_05 pos_03_06 dir_down)
    (move_dir pos_03_06 pos_03_05 dir_up)
    (move_dir pos_03_06 pos_03_07 dir_down)
    (move_dir pos_03_07 pos_03_06 dir_up)
    (move_dir pos_03_07 pos_03_08 dir_down)
    (move_dir pos_03_08 pos_03_07 dir_up)
    (move_dir pos_03_08 pos_03_09 dir_down)
    (move_dir pos_03_09 pos_03_08 dir_up)
    (move_dir pos_03_09 pos_03_10 dir_down)
    (move_dir pos_03_10 pos_03_09 dir_up)
    (move_dir pos_03_10 pos_03_11 dir_down)
    (move_dir pos_03_11 pos_03_10 dir_up)
    (move_dir pos_03_11 pos_03_12 dir_down)
    (move_dir pos_03_12 pos_03_11 dir_up)
    (move_dir pos_03_12 pos_03_13 dir_down)
    (move_dir pos_03_13 pos_03_12 dir_up)
    (move_dir pos_03_13 pos_03_14 dir_down)
    (move_dir pos_03_14 pos_03_13 dir_up)
    (move_dir pos_03_14 pos_03_15 dir_down)
    (move_dir pos_03_15 pos_03_14 dir_up)
    (move_dir pos_03_15 pos_03_16 dir_down)
    (move_dir pos_03_16 pos_02_16 dir_left)
    (move_dir pos_03_16 pos_03_15 dir_up)
    (move_dir pos_03_16 pos_04_16 dir_right)
    (move_dir pos_04_02 pos_03_02 dir_left)
    (move_dir pos_04_02 pos_05_02 dir_right)
    (move_dir pos_04_16 pos_03_16 dir_left)
    (move_dir pos_04_16 pos_05_16 dir_right)
    (move_dir pos_05_02 pos_04_02 dir_left)
    (move_dir pos_05_02 pos_06_02 dir_right)
    (move_dir pos_05_04 pos_05_05 dir_down)
    (move_dir pos_05_04 pos_06_04 dir_right)
    (move_dir pos_05_05 pos_05_04 dir_up)
    (move_dir pos_05_05 pos_05_06 dir_down)
    (move_dir pos_05_06 pos_05_05 dir_up)
    (move_dir pos_05_06 pos_05_07 dir_down)
    (move_dir pos_05_07 pos_05_06 dir_up)
    (move_dir pos_05_07 pos_05_08 dir_down)
    (move_dir pos_05_08 pos_05_07 dir_up)
    (move_dir pos_05_08 pos_05_09 dir_down)
    (move_dir pos_05_09 pos_05_08 dir_up)
    (move_dir pos_05_09 pos_05_10 dir_down)
    (move_dir pos_05_10 pos_05_09 dir_up)
    (move_dir pos_05_10 pos_05_11 dir_down)
    (move_dir pos_05_11 pos_05_10 dir_up)
    (move_dir pos_05_11 pos_05_12 dir_down)
    (move_dir pos_05_12 pos_05_11 dir_up)
    (move_dir pos_05_12 pos_05_13 dir_down)
    (move_dir pos_05_13 pos_05_12 dir_up)
    (move_dir pos_05_13 pos_05_14 dir_down)
    (move_dir pos_05_14 pos_05_13 dir_up)
    (move_dir pos_05_14 pos_05_15 dir_down)
    (move_dir pos_05_15 pos_05_14 dir_up)
    (move_dir pos_05_15 pos_05_16 dir_down)
    (move_dir pos_05_16 pos_04_16 dir_left)
    (move_dir pos_05_16 pos_05_15 dir_up)
    (move_dir pos_06_02 pos_05_02 dir_left)
    (move_dir pos_06_02 pos_07_02 dir_right)
    (move_dir pos_06_04 pos_05_04 dir_left)
    (move_dir pos_06_04 pos_07_04 dir_right)
    (move_dir pos_07_02 pos_06_02 dir_left)
    (move_dir pos_07_02 pos_08_02 dir_right)
    (move_dir pos_07_04 pos_06_04 dir_left)
    (move_dir pos_07_04 pos_08_04 dir_right)
    (move_dir pos_07_06 pos_07_07 dir_down)
    (move_dir pos_07_06 pos_08_06 dir_right)
    (move_dir pos_07_07 pos_07_06 dir_up)
    (move_dir pos_07_07 pos_07_08 dir_down)
    (move_dir pos_07_08 pos_07_07 dir_up)
    (move_dir pos_07_08 pos_07_09 dir_down)
    (move_dir pos_07_09 pos_07_08 dir_up)
    (move_dir pos_07_09 pos_07_10 dir_down)
    (move_dir pos_07_10 pos_07_09 dir_up)
    (move_dir pos_07_10 pos_07_11 dir_down)
    (move_dir pos_07_11 pos_07_10 dir_up)
    (move_dir pos_07_11 pos_07_12 dir_down)
    (move_dir pos_07_12 pos_07_11 dir_up)
    (move_dir pos_07_12 pos_07_13 dir_down)
    (move_dir pos_07_13 pos_07_12 dir_up)
    (move_dir pos_07_13 pos_07_14 dir_down)
    (move_dir pos_07_14 pos_07_13 dir_up)
    (move_dir pos_07_14 pos_07_15 dir_down)
    (move_dir pos_07_15 pos_07_14 dir_up)
    (move_dir pos_07_15 pos_07_16 dir_down)
    (move_dir pos_07_16 pos_07_15 dir_up)
    (move_dir pos_07_16 pos_08_16 dir_right)
    (move_dir pos_08_02 pos_07_02 dir_left)
    (move_dir pos_08_02 pos_09_02 dir_right)
    (move_dir pos_08_04 pos_07_04 dir_left)
    (move_dir pos_08_04 pos_09_04 dir_right)
    (move_dir pos_08_06 pos_07_06 dir_left)
    (move_dir pos_08_06 pos_09_06 dir_right)
    (move_dir pos_08_16 pos_07_16 dir_left)
    (move_dir pos_08_16 pos_09_16 dir_right)
    (move_dir pos_09_02 pos_08_02 dir_left)
    (move_dir pos_09_02 pos_10_02 dir_right)
    (move_dir pos_09_04 pos_08_04 dir_left)
    (move_dir pos_09_04 pos_10_04 dir_right)
    (move_dir pos_09_06 pos_08_06 dir_left)
    (move_dir pos_09_06 pos_10_06 dir_right)
    (move_dir pos_09_08 pos_09_09 dir_down)
    (move_dir pos_09_08 pos_10_08 dir_right)
    (move_dir pos_09_09 pos_09_08 dir_up)
    (move_dir pos_09_09 pos_09_10 dir_down)
    (move_dir pos_09_10 pos_09_09 dir_up)
    (move_dir pos_09_10 pos_09_11 dir_down)
    (move_dir pos_09_11 pos_09_10 dir_up)
    (move_dir pos_09_11 pos_09_12 dir_down)
    (move_dir pos_09_12 pos_09_11 dir_up)
    (move_dir pos_09_12 pos_09_13 dir_down)
    (move_dir pos_09_13 pos_09_12 dir_up)
    (move_dir pos_09_13 pos_09_14 dir_down)
    (move_dir pos_09_14 pos_09_13 dir_up)
    (move_dir pos_09_14 pos_10_14 dir_right)
    (move_dir pos_09_16 pos_08_16 dir_left)
    (move_dir pos_09_16 pos_10_16 dir_right)
    (move_dir pos_10_02 pos_09_02 dir_left)
    (move_dir pos_10_02 pos_11_02 dir_right)
    (move_dir pos_10_04 pos_09_04 dir_left)
    (move_dir pos_10_04 pos_11_04 dir_right)
    (move_dir pos_10_06 pos_09_06 dir_left)
    (move_dir pos_10_06 pos_11_06 dir_right)
    (move_dir pos_10_08 pos_09_08 dir_left)
    (move_dir pos_10_08 pos_11_08 dir_right)
    (move_dir pos_10_14 pos_09_14 dir_left)
    (move_dir pos_10_14 pos_11_14 dir_right)
    (move_dir pos_10_16 pos_09_16 dir_left)
    (move_dir pos_10_16 pos_11_16 dir_right)
    (move_dir pos_11_02 pos_10_02 dir_left)
    (move_dir pos_11_02 pos_12_02 dir_right)
    (move_dir pos_11_04 pos_10_04 dir_left)
    (move_dir pos_11_04 pos_12_04 dir_right)
    (move_dir pos_11_06 pos_10_06 dir_left)
    (move_dir pos_11_06 pos_12_06 dir_right)
    (move_dir pos_11_08 pos_10_08 dir_left)
    (move_dir pos_11_08 pos_12_08 dir_right)
    (move_dir pos_11_10 pos_11_11 dir_down)
    (move_dir pos_11_10 pos_12_10 dir_right)
    (move_dir pos_11_11 pos_11_10 dir_up)
    (move_dir pos_11_11 pos_11_12 dir_down)
    (move_dir pos_11_12 pos_11_11 dir_up)
    (move_dir pos_11_12 pos_12_12 dir_right)
    (move_dir pos_11_14 pos_10_14 dir_left)
    (move_dir pos_11_14 pos_12_14 dir_right)
    (move_dir pos_11_16 pos_10_16 dir_left)
    (move_dir pos_11_16 pos_12_16 dir_right)
    (move_dir pos_12_02 pos_11_02 dir_left)
    (move_dir pos_12_02 pos_13_02 dir_right)
    (move_dir pos_12_04 pos_11_04 dir_left)
    (move_dir pos_12_04 pos_13_04 dir_right)
    (move_dir pos_12_06 pos_11_06 dir_left)
    (move_dir pos_12_06 pos_13_06 dir_right)
    (move_dir pos_12_08 pos_11_08 dir_left)
    (move_dir pos_12_08 pos_13_08 dir_right)
    (move_dir pos_12_10 pos_11_10 dir_left)
    (move_dir pos_12_10 pos_13_10 dir_right)
    (move_dir pos_12_12 pos_11_12 dir_left)
    (move_dir pos_12_12 pos_13_12 dir_right)
    (move_dir pos_12_14 pos_11_14 dir_left)
    (move_dir pos_12_14 pos_13_14 dir_right)
    (move_dir pos_12_16 pos_11_16 dir_left)
    (move_dir pos_12_16 pos_13_16 dir_right)
    (move_dir pos_13_02 pos_12_02 dir_left)
    (move_dir pos_13_02 pos_14_02 dir_right)
    (move_dir pos_13_04 pos_12_04 dir_left)
    (move_dir pos_13_04 pos_14_04 dir_right)
    (move_dir pos_13_06 pos_12_06 dir_left)
    (move_dir pos_13_06 pos_14_06 dir_right)
    (move_dir pos_13_08 pos_12_08 dir_left)
    (move_dir pos_13_08 pos_14_08 dir_right)
    (move_dir pos_13_10 pos_12_10 dir_left)
    (move_dir pos_13_10 pos_14_10 dir_right)
    (move_dir pos_13_12 pos_12_12 dir_left)
    (move_dir pos_13_12 pos_14_12 dir_right)
    (move_dir pos_13_14 pos_12_14 dir_left)
    (move_dir pos_13_14 pos_14_14 dir_right)
    (move_dir pos_13_16 pos_12_16 dir_left)
    (move_dir pos_13_16 pos_14_16 dir_right)
    (move_dir pos_14_02 pos_13_02 dir_left)
    (move_dir pos_14_02 pos_15_02 dir_right)
    (move_dir pos_14_04 pos_13_04 dir_left)
    (move_dir pos_14_04 pos_15_04 dir_right)
    (move_dir pos_14_06 pos_13_06 dir_left)
    (move_dir pos_14_06 pos_15_06 dir_right)
    (move_dir pos_14_08 pos_13_08 dir_left)
    (move_dir pos_14_08 pos_15_08 dir_right)
    (move_dir pos_14_10 pos_13_10 dir_left)
    (move_dir pos_14_10 pos_15_10 dir_right)
    (move_dir pos_14_12 pos_13_12 dir_left)
    (move_dir pos_14_12 pos_15_12 dir_right)
    (move_dir pos_14_14 pos_13_14 dir_left)
    (move_dir pos_14_14 pos_15_14 dir_right)
    (move_dir pos_14_16 pos_13_16 dir_left)
    (move_dir pos_14_16 pos_15_16 dir_right)
    (move_dir pos_15_02 pos_14_02 dir_left)
    (move_dir pos_15_02 pos_16_02 dir_right)
    (move_dir pos_15_04 pos_14_04 dir_left)
    (move_dir pos_15_04 pos_16_04 dir_right)
    (move_dir pos_15_06 pos_14_06 dir_left)
    (move_dir pos_15_06 pos_16_06 dir_right)
    (move_dir pos_15_08 pos_14_08 dir_left)
    (move_dir pos_15_08 pos_16_08 dir_right)
    (move_dir pos_15_10 pos_14_10 dir_left)
    (move_dir pos_15_10 pos_16_10 dir_right)
    (move_dir pos_15_12 pos_14_12 dir_left)
    (move_dir pos_15_12 pos_16_12 dir_right)
    (move_dir pos_15_14 pos_14_14 dir_left)
    (move_dir pos_15_14 pos_16_14 dir_right)
    (move_dir pos_15_16 pos_14_16 dir_left)
    (move_dir pos_15_16 pos_16_16 dir_right)
    (move_dir pos_16_02 pos_15_02 dir_left)
    (move_dir pos_16_02 pos_17_02 dir_right)
    (move_dir pos_16_04 pos_15_04 dir_left)
    (move_dir pos_16_04 pos_17_04 dir_right)
    (move_dir pos_16_06 pos_15_06 dir_left)
    (move_dir pos_16_06 pos_17_06 dir_right)
    (move_dir pos_16_08 pos_15_08 dir_left)
    (move_dir pos_16_08 pos_17_08 dir_right)
    (move_dir pos_16_10 pos_15_10 dir_left)
    (move_dir pos_16_10 pos_17_10 dir_right)
    (move_dir pos_16_12 pos_15_12 dir_left)
    (move_dir pos_16_12 pos_17_12 dir_right)
    (move_dir pos_16_14 pos_15_14 dir_left)
    (move_dir pos_16_14 pos_17_14 dir_right)
    (move_dir pos_16_16 pos_15_16 dir_left)
    (move_dir pos_16_16 pos_17_16 dir_right)
    (move_dir pos_17_02 pos_16_02 dir_left)
    (move_dir pos_17_02 pos_18_02 dir_right)
    (move_dir pos_17_04 pos_16_04 dir_left)
    (move_dir pos_17_04 pos_18_04 dir_right)
    (move_dir pos_17_06 pos_16_06 dir_left)
    (move_dir pos_17_06 pos_18_06 dir_right)
    (move_dir pos_17_08 pos_16_08 dir_left)
    (move_dir pos_17_08 pos_18_08 dir_right)
    (move_dir pos_17_10 pos_16_10 dir_left)
    (move_dir pos_17_10 pos_18_10 dir_right)
    (move_dir pos_17_12 pos_16_12 dir_left)
    (move_dir pos_17_12 pos_18_12 dir_right)
    (move_dir pos_17_14 pos_16_14 dir_left)
    (move_dir pos_17_14 pos_18_14 dir_right)
    (move_dir pos_17_16 pos_16_16 dir_left)
    (move_dir pos_17_16 pos_18_16 dir_right)
    (move_dir pos_18_02 pos_17_02 dir_left)
    (move_dir pos_18_02 pos_19_02 dir_right)
    (move_dir pos_18_04 pos_17_04 dir_left)
    (move_dir pos_18_04 pos_19_04 dir_right)
    (move_dir pos_18_06 pos_17_06 dir_left)
    (move_dir pos_18_06 pos_19_06 dir_right)
    (move_dir pos_18_08 pos_17_08 dir_left)
    (move_dir pos_18_08 pos_19_08 dir_right)
    (move_dir pos_18_10 pos_17_10 dir_left)
    (move_dir pos_18_10 pos_19_10 dir_right)
    (move_dir pos_18_12 pos_17_12 dir_left)
    (move_dir pos_18_12 pos_19_12 dir_right)
    (move_dir pos_18_14 pos_17_14 dir_left)
    (move_dir pos_18_14 pos_19_14 dir_right)
    (move_dir pos_18_16 pos_17_16 dir_left)
    (move_dir pos_18_16 pos_19_16 dir_right)
    (move_dir pos_19_02 pos_18_02 dir_left)
    (move_dir pos_19_02 pos_20_02 dir_right)
    (move_dir pos_19_04 pos_18_04 dir_left)
    (move_dir pos_19_04 pos_20_04 dir_right)
    (move_dir pos_19_06 pos_18_06 dir_left)
    (move_dir pos_19_06 pos_20_06 dir_right)
    (move_dir pos_19_08 pos_18_08 dir_left)
    (move_dir pos_19_08 pos_20_08 dir_right)
    (move_dir pos_19_10 pos_18_10 dir_left)
    (move_dir pos_19_10 pos_20_10 dir_right)
    (move_dir pos_19_12 pos_18_12 dir_left)
    (move_dir pos_19_12 pos_20_12 dir_right)
    (move_dir pos_19_14 pos_18_14 dir_left)
    (move_dir pos_19_14 pos_20_14 dir_right)
    (move_dir pos_19_16 pos_18_16 dir_left)
    (move_dir pos_19_16 pos_20_16 dir_right)
    (move_dir pos_20_02 pos_19_02 dir_left)
    (move_dir pos_20_02 pos_21_02 dir_right)
    (move_dir pos_20_04 pos_19_04 dir_left)
    (move_dir pos_20_04 pos_21_04 dir_right)
    (move_dir pos_20_06 pos_19_06 dir_left)
    (move_dir pos_20_06 pos_21_06 dir_right)
    (move_dir pos_20_08 pos_19_08 dir_left)
    (move_dir pos_20_08 pos_21_08 dir_right)
    (move_dir pos_20_10 pos_19_10 dir_left)
    (move_dir pos_20_10 pos_21_10 dir_right)
    (move_dir pos_20_12 pos_19_12 dir_left)
    (move_dir pos_20_12 pos_21_12 dir_right)
    (move_dir pos_20_14 pos_19_14 dir_left)
    (move_dir pos_20_14 pos_21_14 dir_right)
    (move_dir pos_20_16 pos_19_16 dir_left)
    (move_dir pos_20_16 pos_21_16 dir_right)
    (move_dir pos_21_02 pos_20_02 dir_left)
    (move_dir pos_21_02 pos_22_02 dir_right)
    (move_dir pos_21_04 pos_20_04 dir_left)
    (move_dir pos_21_04 pos_22_04 dir_right)
    (move_dir pos_21_06 pos_20_06 dir_left)
    (move_dir pos_21_06 pos_22_06 dir_right)
    (move_dir pos_21_08 pos_20_08 dir_left)
    (move_dir pos_21_08 pos_22_08 dir_right)
    (move_dir pos_21_10 pos_20_10 dir_left)
    (move_dir pos_21_10 pos_22_10 dir_right)
    (move_dir pos_21_12 pos_20_12 dir_left)
    (move_dir pos_21_12 pos_22_12 dir_right)
    (move_dir pos_21_14 pos_20_14 dir_left)
    (move_dir pos_21_14 pos_22_14 dir_right)
    (move_dir pos_21_16 pos_20_16 dir_left)
    (move_dir pos_21_16 pos_22_16 dir_right)
    (move_dir pos_22_02 pos_21_02 dir_left)
    (move_dir pos_22_02 pos_23_02 dir_right)
    (move_dir pos_22_04 pos_21_04 dir_left)
    (move_dir pos_22_04 pos_23_04 dir_right)
    (move_dir pos_22_06 pos_21_06 dir_left)
    (move_dir pos_22_06 pos_23_06 dir_right)
    (move_dir pos_22_08 pos_21_08 dir_left)
    (move_dir pos_22_08 pos_22_09 dir_down)
    (move_dir pos_22_09 pos_22_08 dir_up)
    (move_dir pos_22_09 pos_22_10 dir_down)
    (move_dir pos_22_10 pos_21_10 dir_left)
    (move_dir pos_22_10 pos_22_09 dir_up)
    (move_dir pos_22_12 pos_21_12 dir_left)
    (move_dir pos_22_12 pos_23_12 dir_right)
    (move_dir pos_22_14 pos_21_14 dir_left)
    (move_dir pos_22_14 pos_23_14 dir_right)
    (move_dir pos_22_16 pos_21_16 dir_left)
    (move_dir pos_22_16 pos_23_16 dir_right)
    (move_dir pos_23_02 pos_22_02 dir_left)
    (move_dir pos_23_02 pos_24_02 dir_right)
    (move_dir pos_23_04 pos_22_04 dir_left)
    (move_dir pos_23_04 pos_24_04 dir_right)
    (move_dir pos_23_06 pos_22_06 dir_left)
    (move_dir pos_23_06 pos_24_06 dir_right)
    (move_dir pos_23_12 pos_22_12 dir_left)
    (move_dir pos_23_12 pos_24_12 dir_right)
    (move_dir pos_23_14 pos_22_14 dir_left)
    (move_dir pos_23_14 pos_24_14 dir_right)
    (move_dir pos_23_16 pos_22_16 dir_left)
    (move_dir pos_23_16 pos_24_16 dir_right)
    (move_dir pos_24_02 pos_23_02 dir_left)
    (move_dir pos_24_02 pos_25_02 dir_right)
    (move_dir pos_24_04 pos_23_04 dir_left)
    (move_dir pos_24_04 pos_25_04 dir_right)
    (move_dir pos_24_06 pos_23_06 dir_left)
    (move_dir pos_24_06 pos_24_07 dir_down)
    (move_dir pos_24_07 pos_24_06 dir_up)
    (move_dir pos_24_07 pos_24_08 dir_down)
    (move_dir pos_24_08 pos_24_07 dir_up)
    (move_dir pos_24_08 pos_24_09 dir_down)
    (move_dir pos_24_09 pos_24_08 dir_up)
    (move_dir pos_24_09 pos_24_10 dir_down)
    (move_dir pos_24_10 pos_24_09 dir_up)
    (move_dir pos_24_10 pos_24_11 dir_down)
    (move_dir pos_24_11 pos_24_10 dir_up)
    (move_dir pos_24_11 pos_24_12 dir_down)
    (move_dir pos_24_12 pos_23_12 dir_left)
    (move_dir pos_24_12 pos_24_11 dir_up)
    (move_dir pos_24_14 pos_23_14 dir_left)
    (move_dir pos_24_14 pos_25_14 dir_right)
    (move_dir pos_24_16 pos_23_16 dir_left)
    (move_dir pos_24_16 pos_25_16 dir_right)
    (move_dir pos_25_02 pos_24_02 dir_left)
    (move_dir pos_25_02 pos_26_02 dir_right)
    (move_dir pos_25_04 pos_24_04 dir_left)
    (move_dir pos_25_04 pos_26_04 dir_right)
    (move_dir pos_25_14 pos_24_14 dir_left)
    (move_dir pos_25_14 pos_26_14 dir_right)
    (move_dir pos_25_16 pos_24_16 dir_left)
    (move_dir pos_25_16 pos_26_16 dir_right)
    (move_dir pos_26_02 pos_25_02 dir_left)
    (move_dir pos_26_02 pos_27_02 dir_right)
    (move_dir pos_26_04 pos_25_04 dir_left)
    (move_dir pos_26_04 pos_26_05 dir_down)
    (move_dir pos_26_05 pos_26_04 dir_up)
    (move_dir pos_26_05 pos_26_06 dir_down)
    (move_dir pos_26_06 pos_26_05 dir_up)
    (move_dir pos_26_06 pos_26_07 dir_down)
    (move_dir pos_26_07 pos_26_06 dir_up)
    (move_dir pos_26_07 pos_26_08 dir_down)
    (move_dir pos_26_08 pos_26_07 dir_up)
    (move_dir pos_26_08 pos_26_09 dir_down)
    (move_dir pos_26_09 pos_26_08 dir_up)
    (move_dir pos_26_09 pos_26_10 dir_down)
    (move_dir pos_26_10 pos_26_09 dir_up)
    (move_dir pos_26_10 pos_26_11 dir_down)
    (move_dir pos_26_11 pos_26_10 dir_up)
    (move_dir pos_26_11 pos_26_12 dir_down)
    (move_dir pos_26_12 pos_26_11 dir_up)
    (move_dir pos_26_12 pos_26_13 dir_down)
    (move_dir pos_26_13 pos_26_12 dir_up)
    (move_dir pos_26_13 pos_26_14 dir_down)
    (move_dir pos_26_14 pos_25_14 dir_left)
    (move_dir pos_26_14 pos_26_13 dir_up)
    (move_dir pos_26_16 pos_25_16 dir_left)
    (move_dir pos_26_16 pos_27_16 dir_right)
    (move_dir pos_27_02 pos_26_02 dir_left)
    (move_dir pos_27_02 pos_28_02 dir_right)
    (move_dir pos_27_16 pos_26_16 dir_left)
    (move_dir pos_27_16 pos_28_16 dir_right)
    (move_dir pos_28_02 pos_27_02 dir_left)
    (move_dir pos_28_02 pos_28_03 dir_down)
    (move_dir pos_28_03 pos_28_02 dir_up)
    (move_dir pos_28_03 pos_28_04 dir_down)
    (move_dir pos_28_04 pos_28_03 dir_up)
    (move_dir pos_28_04 pos_28_05 dir_down)
    (move_dir pos_28_05 pos_28_04 dir_up)
    (move_dir pos_28_05 pos_28_06 dir_down)
    (move_dir pos_28_06 pos_28_05 dir_up)
    (move_dir pos_28_06 pos_28_07 dir_down)
    (move_dir pos_28_07 pos_28_06 dir_up)
    (move_dir pos_28_07 pos_28_08 dir_down)
    (move_dir pos_28_08 pos_28_07 dir_up)
    (move_dir pos_28_08 pos_28_09 dir_down)
    (move_dir pos_28_09 pos_28_08 dir_up)
    (move_dir pos_28_09 pos_28_10 dir_down)
    (move_dir pos_28_10 pos_28_09 dir_up)
    (move_dir pos_28_10 pos_28_11 dir_down)
    (move_dir pos_28_11 pos_28_10 dir_up)
    (move_dir pos_28_11 pos_28_12 dir_down)
    (move_dir pos_28_12 pos_28_11 dir_up)
    (move_dir pos_28_12 pos_28_13 dir_down)
    (move_dir pos_28_13 pos_28_12 dir_up)
    (move_dir pos_28_13 pos_28_14 dir_down)
    (move_dir pos_28_14 pos_28_13 dir_up)
    (move_dir pos_28_14 pos_28_15 dir_down)
    (move_dir pos_28_15 pos_28_14 dir_up)
    (move_dir pos_28_15 pos_28_16 dir_down)
    (move_dir pos_28_16 pos_27_16 dir_left)
    (move_dir pos_28_16 pos_28_15 dir_up)
    (at player_01 pos_04_16)
    (at stone_01 pos_03_15)
    (clear pos_01_01)
    (clear pos_01_02)
    (clear pos_01_03)
    (clear pos_01_04)
    (clear pos_01_05)
    (clear pos_01_06)
    (clear pos_01_07)
    (clear pos_01_08)
    (clear pos_01_09)
    (clear pos_01_10)
    (clear pos_01_11)
    (clear pos_01_12)
    (clear pos_01_13)
    (clear pos_01_14)
    (clear pos_02_16)
    (clear pos_03_02)
    (clear pos_03_03)
    (clear pos_03_04)
    (clear pos_03_05)
    (clear pos_03_06)
    (clear pos_03_07)
    (clear pos_03_08)
    (clear pos_03_09)
    (clear pos_03_10)
    (clear pos_03_11)
    (clear pos_03_12)
    (clear pos_03_13)
    (clear pos_03_14)
    (clear pos_03_16)
    (clear pos_04_02)
    (clear pos_05_02)
    (clear pos_05_04)
    (clear pos_05_05)
    (clear pos_05_06)
    (clear pos_05_07)
    (clear pos_05_08)
    (clear pos_05_09)
    (clear pos_05_10)
    (clear pos_05_11)
    (clear pos_05_12)
    (clear pos_05_13)
    (clear pos_05_14)
    (clear pos_05_15)
    (clear pos_05_16)
    (clear pos_06_02)
    (clear pos_06_04)
    (clear pos_07_02)
    (clear pos_07_04)
    (clear pos_07_06)
    (clear pos_07_07)
    (clear pos_07_08)
    (clear pos_07_09)
    (clear pos_07_10)
    (clear pos_07_11)
    (clear pos_07_12)
    (clear pos_07_13)
    (clear pos_07_14)
    (clear pos_07_15)
    (clear pos_07_16)
    (clear pos_08_02)
    (clear pos_08_04)
    (clear pos_08_06)
    (clear pos_08_16)
    (clear pos_09_02)
    (clear pos_09_04)
    (clear pos_09_06)
    (clear pos_09_08)
    (clear pos_09_09)
    (clear pos_09_10)
    (clear pos_09_11)
    (clear pos_09_12)
    (clear pos_09_13)
    (clear pos_09_14)
    (clear pos_09_16)
    (clear pos_10_02)
    (clear pos_10_04)
    (clear pos_10_06)
    (clear pos_10_08)
    (clear pos_10_14)
    (clear pos_10_16)
    (clear pos_11_02)
    (clear pos_11_04)
    (clear pos_11_06)
    (clear pos_11_08)
    (clear pos_11_10)
    (clear pos_11_11)
    (clear pos_11_12)
    (clear pos_11_14)
    (clear pos_11_16)
    (clear pos_12_02)
    (clear pos_12_04)
    (clear pos_12_06)
    (clear pos_12_08)
    (clear pos_12_10)
    (clear pos_12_12)
    (clear pos_12_14)
    (clear pos_12_16)
    (clear pos_13_02)
    (clear pos_13_04)
    (clear pos_13_06)
    (clear pos_13_08)
    (clear pos_13_10)
    (clear pos_13_12)
    (clear pos_13_14)
    (clear pos_13_16)
    (clear pos_14_02)
    (clear pos_14_04)
    (clear pos_14_06)
    (clear pos_14_08)
    (clear pos_14_10)
    (clear pos_14_12)
    (clear pos_14_14)
    (clear pos_14_16)
    (clear pos_15_02)
    (clear pos_15_04)
    (clear pos_15_06)
    (clear pos_15_08)
    (clear pos_15_10)
    (clear pos_15_12)
    (clear pos_15_14)
    (clear pos_15_16)
    (clear pos_16_02)
    (clear pos_16_04)
    (clear pos_16_06)
    (clear pos_16_08)
    (clear pos_16_10)
    (clear pos_16_12)
    (clear pos_16_14)
    (clear pos_16_16)
    (clear pos_17_02)
    (clear pos_17_04)
    (clear pos_17_06)
    (clear pos_17_08)
    (clear pos_17_10)
    (clear pos_17_12)
    (clear pos_17_14)
    (clear pos_17_16)
    (clear pos_18_02)
    (clear pos_18_04)
    (clear pos_18_06)
    (clear pos_18_08)
    (clear pos_18_10)
    (clear pos_18_12)
    (clear pos_18_14)
    (clear pos_18_16)
    (clear pos_19_02)
    (clear pos_19_04)
    (clear pos_19_06)
    (clear pos_19_08)
    (clear pos_19_10)
    (clear pos_19_12)
    (clear pos_19_14)
    (clear pos_19_16)
    (clear pos_20_02)
    (clear pos_20_04)
    (clear pos_20_06)
    (clear pos_20_08)
    (clear pos_20_10)
    (clear pos_20_12)
    (clear pos_20_14)
    (clear pos_20_16)
    (clear pos_21_02)
    (clear pos_21_04)
    (clear pos_21_06)
    (clear pos_21_08)
    (clear pos_21_10)
    (clear pos_21_12)
    (clear pos_21_14)
    (clear pos_21_16)
    (clear pos_22_02)
    (clear pos_22_04)
    (clear pos_22_06)
    (clear pos_22_08)
    (clear pos_22_09)
    (clear pos_22_10)
    (clear pos_22_12)
    (clear pos_22_14)
    (clear pos_22_16)
    (clear pos_23_02)
    (clear pos_23_04)
    (clear pos_23_06)
    (clear pos_23_12)
    (clear pos_23_14)
    (clear pos_23_16)
    (clear pos_24_02)
    (clear pos_24_04)
    (clear pos_24_06)
    (clear pos_24_07)
    (clear pos_24_08)
    (clear pos_24_09)
    (clear pos_24_10)
    (clear pos_24_11)
    (clear pos_24_12)
    (clear pos_24_14)
    (clear pos_24_16)
    (clear pos_25_02)
    (clear pos_25_04)
    (clear pos_25_14)
    (clear pos_25_16)
    (clear pos_26_02)
    (clear pos_26_04)
    (clear pos_26_05)
    (clear pos_26_06)
    (clear pos_26_07)
    (clear pos_26_08)
    (clear pos_26_09)
    (clear pos_26_10)
    (clear pos_26_11)
    (clear pos_26_12)
    (clear pos_26_13)
    (clear pos_26_14)
    (clear pos_26_16)
    (clear pos_27_02)
    (clear pos_27_16)
    (clear pos_28_02)
    (clear pos_28_03)
    (clear pos_28_04)
    (clear pos_28_05)
    (clear pos_28_06)
    (clear pos_28_07)
    (clear pos_28_08)
    (clear pos_28_09)
    (clear pos_28_10)
    (clear pos_28_11)
    (clear pos_28_12)
    (clear pos_28_13)
    (clear pos_28_14)
    (clear pos_28_15)
    (clear pos_28_16)
    (= (total_cost) 0)
  )
  (:goal (and
    (at_goal stone_01)
  ))
  (:metric minimize (total_cost))
)
