(define (problem strips_log_x_27)
   (:domain logistics_strips)
   (:objects package57 package56 package55 package54 package53
             package52 package51 package50 package49 package48 package47
             package46 package45 package44 package43 package42 package41
             package40 package39 package38 package37 package36 package35
             package34 package33 package32 package31 package30 package29
             package28 package27 package26 package25 package24 package23
             package22 package21 package20 package19 package18 package17
             package16 package15 package14 package13 package12 package11
             package10 package9 package8 package7 package6 package5 package4
             package3 package2 package1 city15 city14 city13 city12 city11
             city10 city9 city8 city7 city6 city5 city4 city3 city2 city1
             truck28 truck27 truck26 truck25 truck24 truck23 truck22
             truck21 truck20 truck19 truck18 truck17 truck16 truck15
             truck14 truck13 truck12 truck11 truck10 truck9 truck8 truck7
             truck6 truck5 truck4 truck3 truck2 truck1 plane9 plane8 plane7
             plane6 plane5 plane4 plane3 plane2 plane1 city15_13 city15_12
             city15_11 city15_10 city15_9 city15_8 city15_7 city15_6
             city15_5 city15_4 city15_3 city15_2 city15_1 city14_13
             city14_12 city14_11 city14_10 city14_9 city14_8 city14_7
             city14_6 city14_5 city14_4 city14_3 city14_2 city14_1
             city13_13 city13_12 city13_11 city13_10 city13_9 city13_8
             city13_7 city13_6 city13_5 city13_4 city13_3 city13_2 city13_1
             city12_13 city12_12 city12_11 city12_10 city12_9 city12_8
             city12_7 city12_6 city12_5 city12_4 city12_3 city12_2 city12_1
             city11_13 city11_12 city11_11 city11_10 city11_9 city11_8
             city11_7 city11_6 city11_5 city11_4 city11_3 city11_2 city11_1
             city10_13 city10_12 city10_11 city10_10 city10_9 city10_8
             city10_7 city10_6 city10_5 city10_4 city10_3 city10_2 city10_1
             city9_13 city9_12 city9_11 city9_10 city9_9 city9_8 city9_7
             city9_6 city9_5 city9_4 city9_3 city9_2 city9_1 city8_13
             city8_12 city8_11 city8_10 city8_9 city8_8 city8_7 city8_6
             city8_5 city8_4 city8_3 city8_2 city8_1 city7_13 city7_12
             city7_11 city7_10 city7_9 city7_8 city7_7 city7_6 city7_5
             city7_4 city7_3 city7_2 city7_1 city6_13 city6_12 city6_11
             city6_10 city6_9 city6_8 city6_7 city6_6 city6_5 city6_4
             city6_3 city6_2 city6_1 city5_13 city5_12 city5_11 city5_10
             city5_9 city5_8 city5_7 city5_6 city5_5 city5_4 city5_3
             city5_2 city5_1 city4_13 city4_12 city4_11 city4_10 city4_9
             city4_8 city4_7 city4_6 city4_5 city4_4 city4_3 city4_2
             city4_1 city3_13 city3_12 city3_11 city3_10 city3_9 city3_8
             city3_7 city3_6 city3_5 city3_4 city3_3 city3_2 city3_1
             city2_13 city2_12 city2_11 city2_10 city2_9 city2_8 city2_7
             city2_6 city2_5 city2_4 city2_3 city2_2 city2_1 city1_13
             city1_12 city1_11 city1_10 city1_9 city1_8 city1_7 city1_6
             city1_5 city1_4 city1_3 city1_2 city1_1 city15_14 city14_14
             city13_14 city12_14 city11_14 city10_14 city9_14 city8_14
             city7_14 city6_14 city5_14 city4_14 city3_14 city2_14 city1_14)
   (:init (obj package57)
          (obj package56)
          (obj package55)
          (obj package54)
          (obj package53)
          (obj package52)
          (obj package51)
          (obj package50)
          (obj package49)
          (obj package48)
          (obj package47)
          (obj package46)
          (obj package45)
          (obj package44)
          (obj package43)
          (obj package42)
          (obj package41)
          (obj package40)
          (obj package39)
          (obj package38)
          (obj package37)
          (obj package36)
          (obj package35)
          (obj package34)
          (obj package33)
          (obj package32)
          (obj package31)
          (obj package30)
          (obj package29)
          (obj package28)
          (obj package27)
          (obj package26)
          (obj package25)
          (obj package24)
          (obj package23)
          (obj package22)
          (obj package21)
          (obj package20)
          (obj package19)
          (obj package18)
          (obj package17)
          (obj package16)
          (obj package15)
          (obj package14)
          (obj package13)
          (obj package12)
          (obj package11)
          (obj package10)
          (obj package9)
          (obj package8)
          (obj package7)
          (obj package6)
          (obj package5)
          (obj package4)
          (obj package3)
          (obj package2)
          (obj package1)
          (city city15)
          (city city14)
          (city city13)
          (city city12)
          (city city11)
          (city city10)
          (city city9)
          (city city8)
          (city city7)
          (city city6)
          (city city5)
          (city city4)
          (city city3)
          (city city2)
          (city city1)
          (truck truck28)
          (truck truck27)
          (truck truck26)
          (truck truck25)
          (truck truck24)
          (truck truck23)
          (truck truck22)
          (truck truck21)
          (truck truck20)
          (truck truck19)
          (truck truck18)
          (truck truck17)
          (truck truck16)
          (truck truck15)
          (truck truck14)
          (truck truck13)
          (truck truck12)
          (truck truck11)
          (truck truck10)
          (truck truck9)
          (truck truck8)
          (truck truck7)
          (truck truck6)
          (truck truck5)
          (truck truck4)
          (truck truck3)
          (truck truck2)
          (truck truck1)
          (airplane plane9)
          (airplane plane8)
          (airplane plane7)
          (airplane plane6)
          (airplane plane5)
          (airplane plane4)
          (airplane plane3)
          (airplane plane2)
          (airplane plane1)
          (location city15_13)
          (location city15_12)
          (location city15_11)
          (location city15_10)
          (location city15_9)
          (location city15_8)
          (location city15_7)
          (location city15_6)
          (location city15_5)
          (location city15_4)
          (location city15_3)
          (location city15_2)
          (location city15_1)
          (location city14_13)
          (location city14_12)
          (location city14_11)
          (location city14_10)
          (location city14_9)
          (location city14_8)
          (location city14_7)
          (location city14_6)
          (location city14_5)
          (location city14_4)
          (location city14_3)
          (location city14_2)
          (location city14_1)
          (location city13_13)
          (location city13_12)
          (location city13_11)
          (location city13_10)
          (location city13_9)
          (location city13_8)
          (location city13_7)
          (location city13_6)
          (location city13_5)
          (location city13_4)
          (location city13_3)
          (location city13_2)
          (location city13_1)
          (location city12_13)
          (location city12_12)
          (location city12_11)
          (location city12_10)
          (location city12_9)
          (location city12_8)
          (location city12_7)
          (location city12_6)
          (location city12_5)
          (location city12_4)
          (location city12_3)
          (location city12_2)
          (location city12_1)
          (location city11_13)
          (location city11_12)
          (location city11_11)
          (location city11_10)
          (location city11_9)
          (location city11_8)
          (location city11_7)
          (location city11_6)
          (location city11_5)
          (location city11_4)
          (location city11_3)
          (location city11_2)
          (location city11_1)
          (location city10_13)
          (location city10_12)
          (location city10_11)
          (location city10_10)
          (location city10_9)
          (location city10_8)
          (location city10_7)
          (location city10_6)
          (location city10_5)
          (location city10_4)
          (location city10_3)
          (location city10_2)
          (location city10_1)
          (location city9_13)
          (location city9_12)
          (location city9_11)
          (location city9_10)
          (location city9_9)
          (location city9_8)
          (location city9_7)
          (location city9_6)
          (location city9_5)
          (location city9_4)
          (location city9_3)
          (location city9_2)
          (location city9_1)
          (location city8_13)
          (location city8_12)
          (location city8_11)
          (location city8_10)
          (location city8_9)
          (location city8_8)
          (location city8_7)
          (location city8_6)
          (location city8_5)
          (location city8_4)
          (location city8_3)
          (location city8_2)
          (location city8_1)
          (location city7_13)
          (location city7_12)
          (location city7_11)
          (location city7_10)
          (location city7_9)
          (location city7_8)
          (location city7_7)
          (location city7_6)
          (location city7_5)
          (location city7_4)
          (location city7_3)
          (location city7_2)
          (location city7_1)
          (location city6_13)
          (location city6_12)
          (location city6_11)
          (location city6_10)
          (location city6_9)
          (location city6_8)
          (location city6_7)
          (location city6_6)
          (location city6_5)
          (location city6_4)
          (location city6_3)
          (location city6_2)
          (location city6_1)
          (location city5_13)
          (location city5_12)
          (location city5_11)
          (location city5_10)
          (location city5_9)
          (location city5_8)
          (location city5_7)
          (location city5_6)
          (location city5_5)
          (location city5_4)
          (location city5_3)
          (location city5_2)
          (location city5_1)
          (location city4_13)
          (location city4_12)
          (location city4_11)
          (location city4_10)
          (location city4_9)
          (location city4_8)
          (location city4_7)
          (location city4_6)
          (location city4_5)
          (location city4_4)
          (location city4_3)
          (location city4_2)
          (location city4_1)
          (location city3_13)
          (location city3_12)
          (location city3_11)
          (location city3_10)
          (location city3_9)
          (location city3_8)
          (location city3_7)
          (location city3_6)
          (location city3_5)
          (location city3_4)
          (location city3_3)
          (location city3_2)
          (location city3_1)
          (location city2_13)
          (location city2_12)
          (location city2_11)
          (location city2_10)
          (location city2_9)
          (location city2_8)
          (location city2_7)
          (location city2_6)
          (location city2_5)
          (location city2_4)
          (location city2_3)
          (location city2_2)
          (location city2_1)
          (location city1_13)
          (location city1_12)
          (location city1_11)
          (location city1_10)
          (location city1_9)
          (location city1_8)
          (location city1_7)
          (location city1_6)
          (location city1_5)
          (location city1_4)
          (location city1_3)
          (location city1_2)
          (location city1_1)
          (airport city15_14)
          (location city15_14)
          (airport city14_14)
          (location city14_14)
          (airport city13_14)
          (location city13_14)
          (airport city12_14)
          (location city12_14)
          (airport city11_14)
          (location city11_14)
          (airport city10_14)
          (location city10_14)
          (airport city9_14)
          (location city9_14)
          (airport city8_14)
          (location city8_14)
          (airport city7_14)
          (location city7_14)
          (airport city6_14)
          (location city6_14)
          (airport city5_14)
          (location city5_14)
          (airport city4_14)
          (location city4_14)
          (airport city3_14)
          (location city3_14)
          (airport city2_14)
          (location city2_14)
          (airport city1_14)
          (location city1_14)
          (in_city city15_14 city15)
          (in_city city15_13 city15)
          (in_city city15_12 city15)
          (in_city city15_11 city15)
          (in_city city15_10 city15)
          (in_city city15_9 city15)
          (in_city city15_8 city15)
          (in_city city15_7 city15)
          (in_city city15_6 city15)
          (in_city city15_5 city15)
          (in_city city15_4 city15)
          (in_city city15_3 city15)
          (in_city city15_2 city15)
          (in_city city15_1 city15)
          (in_city city14_14 city14)
          (in_city city14_13 city14)
          (in_city city14_12 city14)
          (in_city city14_11 city14)
          (in_city city14_10 city14)
          (in_city city14_9 city14)
          (in_city city14_8 city14)
          (in_city city14_7 city14)
          (in_city city14_6 city14)
          (in_city city14_5 city14)
          (in_city city14_4 city14)
          (in_city city14_3 city14)
          (in_city city14_2 city14)
          (in_city city14_1 city14)
          (in_city city13_14 city13)
          (in_city city13_13 city13)
          (in_city city13_12 city13)
          (in_city city13_11 city13)
          (in_city city13_10 city13)
          (in_city city13_9 city13)
          (in_city city13_8 city13)
          (in_city city13_7 city13)
          (in_city city13_6 city13)
          (in_city city13_5 city13)
          (in_city city13_4 city13)
          (in_city city13_3 city13)
          (in_city city13_2 city13)
          (in_city city13_1 city13)
          (in_city city12_14 city12)
          (in_city city12_13 city12)
          (in_city city12_12 city12)
          (in_city city12_11 city12)
          (in_city city12_10 city12)
          (in_city city12_9 city12)
          (in_city city12_8 city12)
          (in_city city12_7 city12)
          (in_city city12_6 city12)
          (in_city city12_5 city12)
          (in_city city12_4 city12)
          (in_city city12_3 city12)
          (in_city city12_2 city12)
          (in_city city12_1 city12)
          (in_city city11_14 city11)
          (in_city city11_13 city11)
          (in_city city11_12 city11)
          (in_city city11_11 city11)
          (in_city city11_10 city11)
          (in_city city11_9 city11)
          (in_city city11_8 city11)
          (in_city city11_7 city11)
          (in_city city11_6 city11)
          (in_city city11_5 city11)
          (in_city city11_4 city11)
          (in_city city11_3 city11)
          (in_city city11_2 city11)
          (in_city city11_1 city11)
          (in_city city10_14 city10)
          (in_city city10_13 city10)
          (in_city city10_12 city10)
          (in_city city10_11 city10)
          (in_city city10_10 city10)
          (in_city city10_9 city10)
          (in_city city10_8 city10)
          (in_city city10_7 city10)
          (in_city city10_6 city10)
          (in_city city10_5 city10)
          (in_city city10_4 city10)
          (in_city city10_3 city10)
          (in_city city10_2 city10)
          (in_city city10_1 city10)
          (in_city city9_14 city9)
          (in_city city9_13 city9)
          (in_city city9_12 city9)
          (in_city city9_11 city9)
          (in_city city9_10 city9)
          (in_city city9_9 city9)
          (in_city city9_8 city9)
          (in_city city9_7 city9)
          (in_city city9_6 city9)
          (in_city city9_5 city9)
          (in_city city9_4 city9)
          (in_city city9_3 city9)
          (in_city city9_2 city9)
          (in_city city9_1 city9)
          (in_city city8_14 city8)
          (in_city city8_13 city8)
          (in_city city8_12 city8)
          (in_city city8_11 city8)
          (in_city city8_10 city8)
          (in_city city8_9 city8)
          (in_city city8_8 city8)
          (in_city city8_7 city8)
          (in_city city8_6 city8)
          (in_city city8_5 city8)
          (in_city city8_4 city8)
          (in_city city8_3 city8)
          (in_city city8_2 city8)
          (in_city city8_1 city8)
          (in_city city7_14 city7)
          (in_city city7_13 city7)
          (in_city city7_12 city7)
          (in_city city7_11 city7)
          (in_city city7_10 city7)
          (in_city city7_9 city7)
          (in_city city7_8 city7)
          (in_city city7_7 city7)
          (in_city city7_6 city7)
          (in_city city7_5 city7)
          (in_city city7_4 city7)
          (in_city city7_3 city7)
          (in_city city7_2 city7)
          (in_city city7_1 city7)
          (in_city city6_14 city6)
          (in_city city6_13 city6)
          (in_city city6_12 city6)
          (in_city city6_11 city6)
          (in_city city6_10 city6)
          (in_city city6_9 city6)
          (in_city city6_8 city6)
          (in_city city6_7 city6)
          (in_city city6_6 city6)
          (in_city city6_5 city6)
          (in_city city6_4 city6)
          (in_city city6_3 city6)
          (in_city city6_2 city6)
          (in_city city6_1 city6)
          (in_city city5_14 city5)
          (in_city city5_13 city5)
          (in_city city5_12 city5)
          (in_city city5_11 city5)
          (in_city city5_10 city5)
          (in_city city5_9 city5)
          (in_city city5_8 city5)
          (in_city city5_7 city5)
          (in_city city5_6 city5)
          (in_city city5_5 city5)
          (in_city city5_4 city5)
          (in_city city5_3 city5)
          (in_city city5_2 city5)
          (in_city city5_1 city5)
          (in_city city4_14 city4)
          (in_city city4_13 city4)
          (in_city city4_12 city4)
          (in_city city4_11 city4)
          (in_city city4_10 city4)
          (in_city city4_9 city4)
          (in_city city4_8 city4)
          (in_city city4_7 city4)
          (in_city city4_6 city4)
          (in_city city4_5 city4)
          (in_city city4_4 city4)
          (in_city city4_3 city4)
          (in_city city4_2 city4)
          (in_city city4_1 city4)
          (in_city city3_14 city3)
          (in_city city3_13 city3)
          (in_city city3_12 city3)
          (in_city city3_11 city3)
          (in_city city3_10 city3)
          (in_city city3_9 city3)
          (in_city city3_8 city3)
          (in_city city3_7 city3)
          (in_city city3_6 city3)
          (in_city city3_5 city3)
          (in_city city3_4 city3)
          (in_city city3_3 city3)
          (in_city city3_2 city3)
          (in_city city3_1 city3)
          (in_city city2_14 city2)
          (in_city city2_13 city2)
          (in_city city2_12 city2)
          (in_city city2_11 city2)
          (in_city city2_10 city2)
          (in_city city2_9 city2)
          (in_city city2_8 city2)
          (in_city city2_7 city2)
          (in_city city2_6 city2)
          (in_city city2_5 city2)
          (in_city city2_4 city2)
          (in_city city2_3 city2)
          (in_city city2_2 city2)
          (in_city city2_1 city2)
          (in_city city1_14 city1)
          (in_city city1_13 city1)
          (in_city city1_12 city1)
          (in_city city1_11 city1)
          (in_city city1_10 city1)
          (in_city city1_9 city1)
          (in_city city1_8 city1)
          (in_city city1_7 city1)
          (in_city city1_6 city1)
          (in_city city1_5 city1)
          (in_city city1_4 city1)
          (in_city city1_3 city1)
          (in_city city1_2 city1)
          (in_city city1_1 city1)
          (at plane9 city11_14)
          (at plane8 city2_14)
          (at plane7 city6_14)
          (at plane6 city4_14)
          (at plane5 city6_14)
          (at plane4 city13_14)
          (at plane3 city7_14)
          (at plane2 city8_14)
          (at plane1 city9_14)
          (at truck28 city15_5)
          (at truck27 city14_8)
          (at truck26 city13_2)
          (at truck25 city12_8)
          (at truck24 city11_7)
          (at truck23 city10_10)
          (at truck22 city9_8)
          (at truck21 city8_6)
          (at truck20 city7_1)
          (at truck19 city6_13)
          (at truck18 city5_9)
          (at truck17 city4_8)
          (at truck16 city3_6)
          (at truck15 city2_12)
          (at truck14 city1_11)
          (at truck13 city7_9)
          (at truck12 city2_12)
          (at truck11 city9_12)
          (at truck10 city12_9)
          (at truck9 city14_9)
          (at truck8 city14_4)
          (at truck7 city10_6)
          (at truck6 city14_10)
          (at truck5 city10_11)
          (at truck4 city7_10)
          (at truck3 city5_2)
          (at truck2 city3_2)
          (at truck1 city15_1)
          (at package57 city6_7)
          (at package56 city2_4)
          (at package55 city2_8)
          (at package54 city15_7)
          (at package53 city6_14)
          (at package52 city11_4)
          (at package51 city11_14)
          (at package50 city14_13)
          (at package49 city2_7)
          (at package48 city5_14)
          (at package47 city14_13)
          (at package46 city2_2)
          (at package45 city3_5)
          (at package44 city2_1)
          (at package43 city15_12)
          (at package42 city15_1)
          (at package41 city13_14)
          (at package40 city4_14)
          (at package39 city13_6)
          (at package38 city2_12)
          (at package37 city9_7)
          (at package36 city7_10)
          (at package35 city7_3)
          (at package34 city10_4)
          (at package33 city6_14)
          (at package32 city13_6)
          (at package31 city15_13)
          (at package30 city11_5)
          (at package29 city12_12)
          (at package28 city14_1)
          (at package27 city7_8)
          (at package26 city15_7)
          (at package25 city4_6)
          (at package24 city7_8)
          (at package23 city10_14)
          (at package22 city9_11)
          (at package21 city8_14)
          (at package20 city3_8)
          (at package19 city9_4)
          (at package18 city8_2)
          (at package17 city11_9)
          (at package16 city10_14)
          (at package15 city7_8)
          (at package14 city5_13)
          (at package13 city5_12)
          (at package12 city6_12)
          (at package11 city5_12)
          (at package10 city11_1)
          (at package9 city10_12)
          (at package8 city12_3)
          (at package7 city13_4)
          (at package6 city5_8)
          (at package5 city2_1)
          (at package4 city3_9)
          (at package3 city9_2)
          (at package2 city8_7)
          (at package1 city6_12))
   (:goal (and (at package57 city12_11)
               (at package56 city2_8)
               (at package55 city10_4)
               (at package54 city11_12)
               (at package53 city4_6)
               (at package52 city8_4)
               (at package51 city13_4)
               (at package50 city14_7)
               (at package49 city15_10)
               (at package48 city9_12)
               (at package47 city9_7)
               (at package46 city8_2)
               (at package45 city9_4)
               (at package44 city4_13)
               (at package43 city14_7)
               (at package42 city11_3)
               (at package41 city9_9))))