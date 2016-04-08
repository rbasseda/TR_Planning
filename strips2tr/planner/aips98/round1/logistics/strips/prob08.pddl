(define (problem strips_log_x_8)
   (:domain logistics_strips)
   (:objects package24 package23 package22 package21 package20
             package19 package18 package17 package16 package15 package14
             package13 package12 package11 package10 package9 package8
             package7 package6 package5 package4 package3 package2 package1
             city20 city19 city18 city17 city16 city15 city14 city13 city12
             city11 city10 city9 city8 city7 city6 city5 city4 city3 city2
             city1 truck33 truck32 truck31 truck30 truck29 truck28
             truck27 truck26 truck25 truck24 truck23 truck22 truck21
             truck20 truck19 truck18 truck17 truck16 truck15 truck14
             truck13 truck12 truck11 truck10 truck9 truck8 truck7 truck6
             truck5 truck4 truck3 truck2 truck1 plane4 plane3 plane2 plane1
             city20_2 city20_1 city19_2 city19_1 city18_2 city18_1 city17_2
             city17_1 city16_2 city16_1 city15_2 city15_1 city14_2 city14_1
             city13_2 city13_1 city12_2 city12_1 city11_2 city11_1 city10_2
             city10_1 city9_2 city9_1 city8_2 city8_1 city7_2 city7_1
             city6_2 city6_1 city5_2 city5_1 city4_2 city4_1 city3_2
             city3_1 city2_2 city2_1 city1_2 city1_1 city20_3 city19_3
             city18_3 city17_3 city16_3 city15_3 city14_3 city13_3 city12_3
             city11_3 city10_3 city9_3 city8_3 city7_3 city6_3 city5_3
             city4_3 city3_3 city2_3 city1_3)
   (:init (obj package24)
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
          (truck truck33)
          (truck truck32)
          (truck truck31)
          (truck truck30)
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
          (airplane plane4)
          (airplane plane3)
          (airplane plane2)
          (airplane plane1)
          (location city20_2)
          (location city20_1)
          (location city19_2)
          (location city19_1)
          (location city18_2)
          (location city18_1)
          (location city17_2)
          (location city17_1)
          (location city16_2)
          (location city16_1)
          (location city15_2)
          (location city15_1)
          (location city14_2)
          (location city14_1)
          (location city13_2)
          (location city13_1)
          (location city12_2)
          (location city12_1)
          (location city11_2)
          (location city11_1)
          (location city10_2)
          (location city10_1)
          (location city9_2)
          (location city9_1)
          (location city8_2)
          (location city8_1)
          (location city7_2)
          (location city7_1)
          (location city6_2)
          (location city6_1)
          (location city5_2)
          (location city5_1)
          (location city4_2)
          (location city4_1)
          (location city3_2)
          (location city3_1)
          (location city2_2)
          (location city2_1)
          (location city1_2)
          (location city1_1)
          (airport city20_3)
          (location city20_3)
          (airport city19_3)
          (location city19_3)
          (airport city18_3)
          (location city18_3)
          (airport city17_3)
          (location city17_3)
          (airport city16_3)
          (location city16_3)
          (airport city15_3)
          (location city15_3)
          (airport city14_3)
          (location city14_3)
          (airport city13_3)
          (location city13_3)
          (airport city12_3)
          (location city12_3)
          (airport city11_3)
          (location city11_3)
          (airport city10_3)
          (location city10_3)
          (airport city9_3)
          (location city9_3)
          (airport city8_3)
          (location city8_3)
          (airport city7_3)
          (location city7_3)
          (airport city6_3)
          (location city6_3)
          (airport city5_3)
          (location city5_3)
          (airport city4_3)
          (location city4_3)
          (airport city3_3)
          (location city3_3)
          (airport city2_3)
          (location city2_3)
          (airport city1_3)
          (location city1_3)
          (in_city city20_3 city20)
          (in_city city20_2 city20)
          (in_city city20_1 city20)
          (in_city city19_3 city19)
          (in_city city19_2 city19)
          (in_city city19_1 city19)
          (in_city city18_3 city18)
          (in_city city18_2 city18)
          (in_city city18_1 city18)
          (in_city city17_3 city17)
          (in_city city17_2 city17)
          (in_city city17_1 city17)
          (in_city city16_3 city16)
          (in_city city16_2 city16)
          (in_city city16_1 city16)
          (in_city city15_3 city15)
          (in_city city15_2 city15)
          (in_city city15_1 city15)
          (in_city city14_3 city14)
          (in_city city14_2 city14)
          (in_city city14_1 city14)
          (in_city city13_3 city13)
          (in_city city13_2 city13)
          (in_city city13_1 city13)
          (in_city city12_3 city12)
          (in_city city12_2 city12)
          (in_city city12_1 city12)
          (in_city city11_3 city11)
          (in_city city11_2 city11)
          (in_city city11_1 city11)
          (in_city city10_3 city10)
          (in_city city10_2 city10)
          (in_city city10_1 city10)
          (in_city city9_3 city9)
          (in_city city9_2 city9)
          (in_city city9_1 city9)
          (in_city city8_3 city8)
          (in_city city8_2 city8)
          (in_city city8_1 city8)
          (in_city city7_3 city7)
          (in_city city7_2 city7)
          (in_city city7_1 city7)
          (in_city city6_3 city6)
          (in_city city6_2 city6)
          (in_city city6_1 city6)
          (in_city city5_3 city5)
          (in_city city5_2 city5)
          (in_city city5_1 city5)
          (in_city city4_3 city4)
          (in_city city4_2 city4)
          (in_city city4_1 city4)
          (in_city city3_3 city3)
          (in_city city3_2 city3)
          (in_city city3_1 city3)
          (in_city city2_3 city2)
          (in_city city2_2 city2)
          (in_city city2_1 city2)
          (in_city city1_3 city1)
          (in_city city1_2 city1)
          (in_city city1_1 city1)
          (at plane4 city7_3)
          (at plane3 city2_3)
          (at plane2 city16_3)
          (at plane1 city5_3)
          (at truck33 city20_1)
          (at truck32 city19_1)
          (at truck31 city18_2)
          (at truck30 city17_2)
          (at truck29 city16_2)
          (at truck28 city15_2)
          (at truck27 city14_1)
          (at truck26 city13_1)
          (at truck25 city12_2)
          (at truck24 city11_2)
          (at truck23 city10_2)
          (at truck22 city9_1)
          (at truck21 city8_1)
          (at truck20 city7_2)
          (at truck19 city6_2)
          (at truck18 city5_1)
          (at truck17 city4_1)
          (at truck16 city3_2)
          (at truck15 city2_2)
          (at truck14 city1_1)
          (at truck13 city1_3)
          (at truck12 city12_1)
          (at truck11 city5_3)
          (at truck10 city20_3)
          (at truck9 city4_1)
          (at truck8 city10_3)
          (at truck7 city4_2)
          (at truck6 city1_1)
          (at truck5 city5_3)
          (at truck4 city17_2)
          (at truck3 city8_2)
          (at truck2 city2_1)
          (at truck1 city17_2)
          (at package24 city13_1)
          (at package23 city13_3)
          (at package22 city15_3)
          (at package21 city20_3)
          (at package20 city20_2)
          (at package19 city3_3)
          (at package18 city16_1)
          (at package17 city5_2)
          (at package16 city13_1)
          (at package15 city18_2)
          (at package14 city13_1)
          (at package13 city14_1)
          (at package12 city7_2)
          (at package11 city18_3)
          (at package10 city7_1)
          (at package9 city11_3)
          (at package8 city11_3)
          (at package7 city3_3)
          (at package6 city4_2)
          (at package5 city7_3)
          (at package4 city5_2)
          (at package3 city1_1)
          (at package2 city20_3)
          (at package1 city13_1))
   (:goal (and (at package24 city7_1)
               (at package23 city2_1)
               (at package22 city1_3)
               (at package21 city6_3)
               (at package20 city7_1)
               (at package19 city1_2))))