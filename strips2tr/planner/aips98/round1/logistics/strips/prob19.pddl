(define (problem strips_log_x_19)
   (:domain logistics_strips)
   (:objects package19 package18 package17 package16 package15
             package14 package13 package12 package11 package10 package9
             package8 package7 package6 package5 package4 package3 package2
             package1 city8 city7 city6 city5 city4 city3 city2 city1 truck30
             truck29 truck28 truck27 truck26 truck25 truck24 truck23
             truck22 truck21 truck20 truck19 truck18 truck17 truck16
             truck15 truck14 truck13 truck12 truck11 truck10 truck9 truck8
             truck7 truck6 truck5 truck4 truck3 truck2 truck1 plane11
             plane10 plane9 plane8 plane7 plane6 plane5 plane4 plane3 plane2
             plane1 city8_7 city8_6 city8_5 city8_4 city8_3 city8_2
             city8_1 city7_7 city7_6 city7_5 city7_4 city7_3 city7_2
             city7_1 city6_7 city6_6 city6_5 city6_4 city6_3 city6_2
             city6_1 city5_7 city5_6 city5_5 city5_4 city5_3 city5_2
             city5_1 city4_7 city4_6 city4_5 city4_4 city4_3 city4_2
             city4_1 city3_7 city3_6 city3_5 city3_4 city3_3 city3_2
             city3_1 city2_7 city2_6 city2_5 city2_4 city2_3 city2_2
             city2_1 city1_7 city1_6 city1_5 city1_4 city1_3 city1_2
             city1_1 city8_8 city7_8 city6_8 city5_8 city4_8 city3_8
             city2_8 city1_8)
   (:init (obj package19)
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
          (city city8)
          (city city7)
          (city city6)
          (city city5)
          (city city4)
          (city city3)
          (city city2)
          (city city1)
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
          (airplane plane11)
          (airplane plane10)
          (airplane plane9)
          (airplane plane8)
          (airplane plane7)
          (airplane plane6)
          (airplane plane5)
          (airplane plane4)
          (airplane plane3)
          (airplane plane2)
          (airplane plane1)
          (location city8_7)
          (location city8_6)
          (location city8_5)
          (location city8_4)
          (location city8_3)
          (location city8_2)
          (location city8_1)
          (location city7_7)
          (location city7_6)
          (location city7_5)
          (location city7_4)
          (location city7_3)
          (location city7_2)
          (location city7_1)
          (location city6_7)
          (location city6_6)
          (location city6_5)
          (location city6_4)
          (location city6_3)
          (location city6_2)
          (location city6_1)
          (location city5_7)
          (location city5_6)
          (location city5_5)
          (location city5_4)
          (location city5_3)
          (location city5_2)
          (location city5_1)
          (location city4_7)
          (location city4_6)
          (location city4_5)
          (location city4_4)
          (location city4_3)
          (location city4_2)
          (location city4_1)
          (location city3_7)
          (location city3_6)
          (location city3_5)
          (location city3_4)
          (location city3_3)
          (location city3_2)
          (location city3_1)
          (location city2_7)
          (location city2_6)
          (location city2_5)
          (location city2_4)
          (location city2_3)
          (location city2_2)
          (location city2_1)
          (location city1_7)
          (location city1_6)
          (location city1_5)
          (location city1_4)
          (location city1_3)
          (location city1_2)
          (location city1_1)
          (airport city8_8)
          (location city8_8)
          (airport city7_8)
          (location city7_8)
          (airport city6_8)
          (location city6_8)
          (airport city5_8)
          (location city5_8)
          (airport city4_8)
          (location city4_8)
          (airport city3_8)
          (location city3_8)
          (airport city2_8)
          (location city2_8)
          (airport city1_8)
          (location city1_8)
          (in_city city8_8 city8)
          (in_city city8_7 city8)
          (in_city city8_6 city8)
          (in_city city8_5 city8)
          (in_city city8_4 city8)
          (in_city city8_3 city8)
          (in_city city8_2 city8)
          (in_city city8_1 city8)
          (in_city city7_8 city7)
          (in_city city7_7 city7)
          (in_city city7_6 city7)
          (in_city city7_5 city7)
          (in_city city7_4 city7)
          (in_city city7_3 city7)
          (in_city city7_2 city7)
          (in_city city7_1 city7)
          (in_city city6_8 city6)
          (in_city city6_7 city6)
          (in_city city6_6 city6)
          (in_city city6_5 city6)
          (in_city city6_4 city6)
          (in_city city6_3 city6)
          (in_city city6_2 city6)
          (in_city city6_1 city6)
          (in_city city5_8 city5)
          (in_city city5_7 city5)
          (in_city city5_6 city5)
          (in_city city5_5 city5)
          (in_city city5_4 city5)
          (in_city city5_3 city5)
          (in_city city5_2 city5)
          (in_city city5_1 city5)
          (in_city city4_8 city4)
          (in_city city4_7 city4)
          (in_city city4_6 city4)
          (in_city city4_5 city4)
          (in_city city4_4 city4)
          (in_city city4_3 city4)
          (in_city city4_2 city4)
          (in_city city4_1 city4)
          (in_city city3_8 city3)
          (in_city city3_7 city3)
          (in_city city3_6 city3)
          (in_city city3_5 city3)
          (in_city city3_4 city3)
          (in_city city3_3 city3)
          (in_city city3_2 city3)
          (in_city city3_1 city3)
          (in_city city2_8 city2)
          (in_city city2_7 city2)
          (in_city city2_6 city2)
          (in_city city2_5 city2)
          (in_city city2_4 city2)
          (in_city city2_3 city2)
          (in_city city2_2 city2)
          (in_city city2_1 city2)
          (in_city city1_8 city1)
          (in_city city1_7 city1)
          (in_city city1_6 city1)
          (in_city city1_5 city1)
          (in_city city1_4 city1)
          (in_city city1_3 city1)
          (in_city city1_2 city1)
          (in_city city1_1 city1)
          (at plane11 city3_8)
          (at plane10 city7_8)
          (at plane9 city3_8)
          (at plane8 city4_8)
          (at plane7 city2_8)
          (at plane6 city1_8)
          (at plane5 city1_8)
          (at plane4 city2_8)
          (at plane3 city3_8)
          (at plane2 city2_8)
          (at plane1 city7_8)
          (at truck30 city8_5)
          (at truck29 city7_3)
          (at truck28 city6_2)
          (at truck27 city5_6)
          (at truck26 city4_3)
          (at truck25 city3_5)
          (at truck24 city2_1)
          (at truck23 city1_7)
          (at truck22 city2_4)
          (at truck21 city3_8)
          (at truck20 city4_7)
          (at truck19 city6_7)
          (at truck18 city7_6)
          (at truck17 city6_6)
          (at truck16 city7_3)
          (at truck15 city1_8)
          (at truck14 city8_8)
          (at truck13 city1_8)
          (at truck12 city5_7)
          (at truck11 city2_6)
          (at truck10 city1_5)
          (at truck9 city2_7)
          (at truck8 city8_5)
          (at truck7 city4_1)
          (at truck6 city3_5)
          (at truck5 city3_8)
          (at truck4 city2_1)
          (at truck3 city3_1)
          (at truck2 city1_8)
          (at truck1 city5_6)
          (at package19 city7_7)
          (at package18 city4_5)
          (at package17 city3_6)
          (at package16 city1_5)
          (at package15 city8_2)
          (at package14 city8_3)
          (at package13 city6_8)
          (at package12 city8_1)
          (at package11 city2_6)
          (at package10 city6_5)
          (at package9 city7_2)
          (at package8 city6_1)
          (at package7 city4_8)
          (at package6 city6_3)
          (at package5 city4_3)
          (at package4 city1_5)
          (at package3 city2_2)
          (at package2 city4_5)
          (at package1 city7_3))
   (:goal (and (at package19 city6_1)
               (at package18 city2_2)
               (at package17 city1_8)
               (at package16 city2_5)
               (at package15 city3_6)
               (at package14 city7_6)
               (at package13 city8_2)
               (at package12 city7_4)
               (at package11 city8_5)
               (at package10 city1_7)
               (at package9 city1_7)
               (at package8 city6_4)
               (at package7 city4_5)
               (at package6 city2_7)
               (at package5 city3_8)
               (at package4 city7_5)
               (at package3 city2_1)
               (at package2 city7_4)
               (at package1 city5_2))))