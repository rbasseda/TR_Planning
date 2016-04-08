(define (problem strips_log_x_13)
   (:domain logistics_strips)
   (:objects package23 package22 package21 package20 package19
             package18 package17 package16 package15 package14 package13
             package12 package11 package10 package9 package8 package7
             package6 package5 package4 package3 package2 package1 city29
             city28 city27 city26 city25 city24 city23 city22 city21 city20
             city19 city18 city17 city16 city15 city14 city13 city12 city11
             city10 city9 city8 city7 city6 city5 city4 city3 city2 city1
             truck29 truck28 truck27 truck26 truck25 truck24 truck23
             truck22 truck21 truck20 truck19 truck18 truck17 truck16
             truck15 truck14 truck13 truck12 truck11 truck10 truck9 truck8
             truck7 truck6 truck5 truck4 truck3 truck2 truck1 plane9 plane8
             plane7 plane6 plane5 plane4 plane3 plane2 plane1 city29_3
             city29_2 city29_1 city28_3 city28_2 city28_1 city27_3 city27_2
             city27_1 city26_3 city26_2 city26_1 city25_3 city25_2 city25_1
             city24_3 city24_2 city24_1 city23_3 city23_2 city23_1 city22_3
             city22_2 city22_1 city21_3 city21_2 city21_1 city20_3 city20_2
             city20_1 city19_3 city19_2 city19_1 city18_3 city18_2 city18_1
             city17_3 city17_2 city17_1 city16_3 city16_2 city16_1 city15_3
             city15_2 city15_1 city14_3 city14_2 city14_1 city13_3 city13_2
             city13_1 city12_3 city12_2 city12_1 city11_3 city11_2 city11_1
             city10_3 city10_2 city10_1 city9_3 city9_2 city9_1 city8_3
             city8_2 city8_1 city7_3 city7_2 city7_1 city6_3 city6_2
             city6_1 city5_3 city5_2 city5_1 city4_3 city4_2 city4_1
             city3_3 city3_2 city3_1 city2_3 city2_2 city2_1 city1_3
             city1_2 city1_1 city29_4 city28_4 city27_4 city26_4 city25_4
             city24_4 city23_4 city22_4 city21_4 city20_4 city19_4 city18_4
             city17_4 city16_4 city15_4 city14_4 city13_4 city12_4 city11_4
             city10_4 city9_4 city8_4 city7_4 city6_4 city5_4 city4_4
             city3_4 city2_4 city1_4)
   (:init (obj package23)
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
          (city city29)
          (city city28)
          (city city27)
          (city city26)
          (city city25)
          (city city24)
          (city city23)
          (city city22)
          (city city21)
          (city city20)
          (city city19)
          (city city18)
          (city city17)
          (city city16)
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
          (truck truck29)
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
          (location city29_3)
          (location city29_2)
          (location city29_1)
          (location city28_3)
          (location city28_2)
          (location city28_1)
          (location city27_3)
          (location city27_2)
          (location city27_1)
          (location city26_3)
          (location city26_2)
          (location city26_1)
          (location city25_3)
          (location city25_2)
          (location city25_1)
          (location city24_3)
          (location city24_2)
          (location city24_1)
          (location city23_3)
          (location city23_2)
          (location city23_1)
          (location city22_3)
          (location city22_2)
          (location city22_1)
          (location city21_3)
          (location city21_2)
          (location city21_1)
          (location city20_3)
          (location city20_2)
          (location city20_1)
          (location city19_3)
          (location city19_2)
          (location city19_1)
          (location city18_3)
          (location city18_2)
          (location city18_1)
          (location city17_3)
          (location city17_2)
          (location city17_1)
          (location city16_3)
          (location city16_2)
          (location city16_1)
          (location city15_3)
          (location city15_2)
          (location city15_1)
          (location city14_3)
          (location city14_2)
          (location city14_1)
          (location city13_3)
          (location city13_2)
          (location city13_1)
          (location city12_3)
          (location city12_2)
          (location city12_1)
          (location city11_3)
          (location city11_2)
          (location city11_1)
          (location city10_3)
          (location city10_2)
          (location city10_1)
          (location city9_3)
          (location city9_2)
          (location city9_1)
          (location city8_3)
          (location city8_2)
          (location city8_1)
          (location city7_3)
          (location city7_2)
          (location city7_1)
          (location city6_3)
          (location city6_2)
          (location city6_1)
          (location city5_3)
          (location city5_2)
          (location city5_1)
          (location city4_3)
          (location city4_2)
          (location city4_1)
          (location city3_3)
          (location city3_2)
          (location city3_1)
          (location city2_3)
          (location city2_2)
          (location city2_1)
          (location city1_3)
          (location city1_2)
          (location city1_1)
          (airport city29_4)
          (location city29_4)
          (airport city28_4)
          (location city28_4)
          (airport city27_4)
          (location city27_4)
          (airport city26_4)
          (location city26_4)
          (airport city25_4)
          (location city25_4)
          (airport city24_4)
          (location city24_4)
          (airport city23_4)
          (location city23_4)
          (airport city22_4)
          (location city22_4)
          (airport city21_4)
          (location city21_4)
          (airport city20_4)
          (location city20_4)
          (airport city19_4)
          (location city19_4)
          (airport city18_4)
          (location city18_4)
          (airport city17_4)
          (location city17_4)
          (airport city16_4)
          (location city16_4)
          (airport city15_4)
          (location city15_4)
          (airport city14_4)
          (location city14_4)
          (airport city13_4)
          (location city13_4)
          (airport city12_4)
          (location city12_4)
          (airport city11_4)
          (location city11_4)
          (airport city10_4)
          (location city10_4)
          (airport city9_4)
          (location city9_4)
          (airport city8_4)
          (location city8_4)
          (airport city7_4)
          (location city7_4)
          (airport city6_4)
          (location city6_4)
          (airport city5_4)
          (location city5_4)
          (airport city4_4)
          (location city4_4)
          (airport city3_4)
          (location city3_4)
          (airport city2_4)
          (location city2_4)
          (airport city1_4)
          (location city1_4)
          (in_city city29_4 city29)
          (in_city city29_3 city29)
          (in_city city29_2 city29)
          (in_city city29_1 city29)
          (in_city city28_4 city28)
          (in_city city28_3 city28)
          (in_city city28_2 city28)
          (in_city city28_1 city28)
          (in_city city27_4 city27)
          (in_city city27_3 city27)
          (in_city city27_2 city27)
          (in_city city27_1 city27)
          (in_city city26_4 city26)
          (in_city city26_3 city26)
          (in_city city26_2 city26)
          (in_city city26_1 city26)
          (in_city city25_4 city25)
          (in_city city25_3 city25)
          (in_city city25_2 city25)
          (in_city city25_1 city25)
          (in_city city24_4 city24)
          (in_city city24_3 city24)
          (in_city city24_2 city24)
          (in_city city24_1 city24)
          (in_city city23_4 city23)
          (in_city city23_3 city23)
          (in_city city23_2 city23)
          (in_city city23_1 city23)
          (in_city city22_4 city22)
          (in_city city22_3 city22)
          (in_city city22_2 city22)
          (in_city city22_1 city22)
          (in_city city21_4 city21)
          (in_city city21_3 city21)
          (in_city city21_2 city21)
          (in_city city21_1 city21)
          (in_city city20_4 city20)
          (in_city city20_3 city20)
          (in_city city20_2 city20)
          (in_city city20_1 city20)
          (in_city city19_4 city19)
          (in_city city19_3 city19)
          (in_city city19_2 city19)
          (in_city city19_1 city19)
          (in_city city18_4 city18)
          (in_city city18_3 city18)
          (in_city city18_2 city18)
          (in_city city18_1 city18)
          (in_city city17_4 city17)
          (in_city city17_3 city17)
          (in_city city17_2 city17)
          (in_city city17_1 city17)
          (in_city city16_4 city16)
          (in_city city16_3 city16)
          (in_city city16_2 city16)
          (in_city city16_1 city16)
          (in_city city15_4 city15)
          (in_city city15_3 city15)
          (in_city city15_2 city15)
          (in_city city15_1 city15)
          (in_city city14_4 city14)
          (in_city city14_3 city14)
          (in_city city14_2 city14)
          (in_city city14_1 city14)
          (in_city city13_4 city13)
          (in_city city13_3 city13)
          (in_city city13_2 city13)
          (in_city city13_1 city13)
          (in_city city12_4 city12)
          (in_city city12_3 city12)
          (in_city city12_2 city12)
          (in_city city12_1 city12)
          (in_city city11_4 city11)
          (in_city city11_3 city11)
          (in_city city11_2 city11)
          (in_city city11_1 city11)
          (in_city city10_4 city10)
          (in_city city10_3 city10)
          (in_city city10_2 city10)
          (in_city city10_1 city10)
          (in_city city9_4 city9)
          (in_city city9_3 city9)
          (in_city city9_2 city9)
          (in_city city9_1 city9)
          (in_city city8_4 city8)
          (in_city city8_3 city8)
          (in_city city8_2 city8)
          (in_city city8_1 city8)
          (in_city city7_4 city7)
          (in_city city7_3 city7)
          (in_city city7_2 city7)
          (in_city city7_1 city7)
          (in_city city6_4 city6)
          (in_city city6_3 city6)
          (in_city city6_2 city6)
          (in_city city6_1 city6)
          (in_city city5_4 city5)
          (in_city city5_3 city5)
          (in_city city5_2 city5)
          (in_city city5_1 city5)
          (in_city city4_4 city4)
          (in_city city4_3 city4)
          (in_city city4_2 city4)
          (in_city city4_1 city4)
          (in_city city3_4 city3)
          (in_city city3_3 city3)
          (in_city city3_2 city3)
          (in_city city3_1 city3)
          (in_city city2_4 city2)
          (in_city city2_3 city2)
          (in_city city2_2 city2)
          (in_city city2_1 city2)
          (in_city city1_4 city1)
          (in_city city1_3 city1)
          (in_city city1_2 city1)
          (in_city city1_1 city1)
          (at plane9 city28_4)
          (at plane8 city23_4)
          (at plane7 city27_4)
          (at plane6 city29_4)
          (at plane5 city13_4)
          (at plane4 city4_4)
          (at plane3 city14_4)
          (at plane2 city14_4)
          (at plane1 city13_4)
          (at truck29 city29_1)
          (at truck28 city28_2)
          (at truck27 city27_3)
          (at truck26 city26_1)
          (at truck25 city25_2)
          (at truck24 city24_3)
          (at truck23 city23_3)
          (at truck22 city22_3)
          (at truck21 city21_1)
          (at truck20 city20_1)
          (at truck19 city19_3)
          (at truck18 city18_2)
          (at truck17 city17_3)
          (at truck16 city16_2)
          (at truck15 city15_3)
          (at truck14 city14_3)
          (at truck13 city13_2)
          (at truck12 city12_3)
          (at truck11 city11_1)
          (at truck10 city10_2)
          (at truck9 city9_3)
          (at truck8 city8_2)
          (at truck7 city7_3)
          (at truck6 city6_3)
          (at truck5 city5_3)
          (at truck4 city4_2)
          (at truck3 city3_2)
          (at truck2 city2_3)
          (at truck1 city1_1)
          (at package23 city26_2)
          (at package22 city1_1)
          (at package21 city3_1)
          (at package20 city18_2)
          (at package19 city17_2)
          (at package18 city21_1)
          (at package17 city1_4)
          (at package16 city29_4)
          (at package15 city1_2)
          (at package14 city4_4)
          (at package13 city10_1)
          (at package12 city13_1)
          (at package11 city24_3)
          (at package10 city5_4)
          (at package9 city9_4)
          (at package8 city3_4)
          (at package7 city13_1)
          (at package6 city7_3)
          (at package5 city16_1)
          (at package4 city3_2)
          (at package3 city17_1)
          (at package2 city11_1)
          (at package1 city21_4))
   (:goal (and (at package23 city7_4)
               (at package22 city11_3)
               (at package21 city16_4)
               (at package20 city4_4)
               (at package19 city21_2)
               (at package18 city22_1)
               (at package17 city18_3)
               (at package16 city14_3))))