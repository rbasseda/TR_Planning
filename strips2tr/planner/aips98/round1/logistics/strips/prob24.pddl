(define (problem strips_log_x_24)
   (:domain logistics_strips)
   (:objects package11 package10 package9 package8 package7
             package6 package5 package4 package3 package2 package1 city9
             city8 city7 city6 city5 city4 city3 city2 city1 truck54
             truck53 truck52 truck51 truck50 truck49 truck48 truck47
             truck46 truck45 truck44 truck43 truck42 truck41 truck40
             truck39 truck38 truck37 truck36 truck35 truck34 truck33
             truck32 truck31 truck30 truck29 truck28 truck27 truck26
             truck25 truck24 truck23 truck22 truck21 truck20 truck19
             truck18 truck17 truck16 truck15 truck14 truck13 truck12
             truck11 truck10 truck9 truck8 truck7 truck6 truck5 truck4
             truck3 truck2 truck1 plane8 plane7 plane6 plane5 plane4 plane3
             plane2 plane1 city9_11 city9_10 city9_9 city9_8 city9_7
             city9_6 city9_5 city9_4 city9_3 city9_2 city9_1 city8_11
             city8_10 city8_9 city8_8 city8_7 city8_6 city8_5 city8_4
             city8_3 city8_2 city8_1 city7_11 city7_10 city7_9 city7_8
             city7_7 city7_6 city7_5 city7_4 city7_3 city7_2 city7_1
             city6_11 city6_10 city6_9 city6_8 city6_7 city6_6 city6_5
             city6_4 city6_3 city6_2 city6_1 city5_11 city5_10 city5_9
             city5_8 city5_7 city5_6 city5_5 city5_4 city5_3 city5_2
             city5_1 city4_11 city4_10 city4_9 city4_8 city4_7 city4_6
             city4_5 city4_4 city4_3 city4_2 city4_1 city3_11 city3_10
             city3_9 city3_8 city3_7 city3_6 city3_5 city3_4 city3_3
             city3_2 city3_1 city2_11 city2_10 city2_9 city2_8 city2_7
             city2_6 city2_5 city2_4 city2_3 city2_2 city2_1 city1_11
             city1_10 city1_9 city1_8 city1_7 city1_6 city1_5 city1_4
             city1_3 city1_2 city1_1 city9_12 city8_12 city7_12 city6_12
             city5_12 city4_12 city3_12 city2_12 city1_12)
   (:init (obj package11)
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
          (city city9)
          (city city8)
          (city city7)
          (city city6)
          (city city5)
          (city city4)
          (city city3)
          (city city2)
          (city city1)
          (truck truck54)
          (truck truck53)
          (truck truck52)
          (truck truck51)
          (truck truck50)
          (truck truck49)
          (truck truck48)
          (truck truck47)
          (truck truck46)
          (truck truck45)
          (truck truck44)
          (truck truck43)
          (truck truck42)
          (truck truck41)
          (truck truck40)
          (truck truck39)
          (truck truck38)
          (truck truck37)
          (truck truck36)
          (truck truck35)
          (truck truck34)
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
          (airplane plane8)
          (airplane plane7)
          (airplane plane6)
          (airplane plane5)
          (airplane plane4)
          (airplane plane3)
          (airplane plane2)
          (airplane plane1)
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
          (airport city9_12)
          (location city9_12)
          (airport city8_12)
          (location city8_12)
          (airport city7_12)
          (location city7_12)
          (airport city6_12)
          (location city6_12)
          (airport city5_12)
          (location city5_12)
          (airport city4_12)
          (location city4_12)
          (airport city3_12)
          (location city3_12)
          (airport city2_12)
          (location city2_12)
          (airport city1_12)
          (location city1_12)
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
          (at plane8 city6_12)
          (at plane7 city6_12)
          (at plane6 city9_12)
          (at plane5 city3_12)
          (at plane4 city9_12)
          (at plane3 city2_12)
          (at plane2 city7_12)
          (at plane1 city6_12)
          (at truck54 city9_4)
          (at truck53 city8_5)
          (at truck52 city7_11)
          (at truck51 city6_1)
          (at truck50 city5_4)
          (at truck49 city4_5)
          (at truck48 city3_2)
          (at truck47 city2_8)
          (at truck46 city1_9)
          (at truck45 city5_4)
          (at truck44 city7_6)
          (at truck43 city8_5)
          (at truck42 city3_2)
          (at truck41 city6_8)
          (at truck40 city2_3)
          (at truck39 city2_10)
          (at truck38 city2_12)
          (at truck37 city2_5)
          (at truck36 city5_7)
          (at truck35 city1_3)
          (at truck34 city1_11)
          (at truck33 city6_10)
          (at truck32 city1_2)
          (at truck31 city3_3)
          (at truck30 city5_12)
          (at truck29 city2_4)
          (at truck28 city3_3)
          (at truck27 city2_3)
          (at truck26 city3_3)
          (at truck25 city4_1)
          (at truck24 city1_12)
          (at truck23 city1_1)
          (at truck22 city7_11)
          (at truck21 city4_5)
          (at truck20 city8_6)
          (at truck19 city1_4)
          (at truck18 city4_7)
          (at truck17 city4_10)
          (at truck16 city1_11)
          (at truck15 city9_7)
          (at truck14 city3_3)
          (at truck13 city1_4)
          (at truck12 city4_8)
          (at truck11 city8_9)
          (at truck10 city6_7)
          (at truck9 city6_10)
          (at truck8 city1_1)
          (at truck7 city4_3)
          (at truck6 city4_5)
          (at truck5 city4_5)
          (at truck4 city9_8)
          (at truck3 city4_8)
          (at truck2 city1_5)
          (at truck1 city9_7)
          (at package11 city5_4)
          (at package10 city2_5)
          (at package9 city6_5)
          (at package8 city1_5)
          (at package7 city3_9)
          (at package6 city6_9)
          (at package5 city4_12)
          (at package4 city7_1)
          (at package3 city6_6)
          (at package2 city2_7)
          (at package1 city8_1))
   (:goal (and (at package11 city8_8)
               (at package10 city3_2)
               (at package9 city1_11)
               (at package8 city3_4))))