(define (problem strips_log_x_3)
   (:domain logistics_strips)
   (:objects package9 package8 package7 package6 package5 package4
             package3 package2 package1 city14 city13 city12 city11 city10
             city9 city8 city7 city6 city5 city4 city3 city2 city1 truck14
             truck13 truck12 truck11 truck10 truck9 truck8 truck7 truck6
             truck5 truck4 truck3 truck2 truck1 plane4 plane3 plane2 plane1
             city14_2 city14_1 city13_2 city13_1 city12_2 city12_1 city11_2
             city11_1 city10_2 city10_1 city9_2 city9_1 city8_2 city8_1
             city7_2 city7_1 city6_2 city6_1 city5_2 city5_1 city4_2
             city4_1 city3_2 city3_1 city2_2 city2_1 city1_2 city1_1
             city14_3 city13_3 city12_3 city11_3 city10_3 city9_3 city8_3
             city7_3 city6_3 city5_3 city4_3 city3_3 city2_3 city1_3)
   (:init (obj package9)
          (obj package8)
          (obj package7)
          (obj package6)
          (obj package5)
          (obj package4)
          (obj package3)
          (obj package2)
          (obj package1)
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
          (at plane4 city10_3)
          (at plane3 city1_3)
          (at plane2 city11_3)
          (at plane1 city11_3)
          (at truck14 city14_1)
          (at truck13 city13_1)
          (at truck12 city12_1)
          (at truck11 city11_1)
          (at truck10 city10_1)
          (at truck9 city9_2)
          (at truck8 city8_2)
          (at truck7 city7_1)
          (at truck6 city6_2)
          (at truck5 city5_1)
          (at truck4 city4_2)
          (at truck3 city3_2)
          (at truck2 city2_1)
          (at truck1 city1_1)
          (at package9 city4_2)
          (at package8 city9_1)
          (at package7 city1_2)
          (at package6 city9_1)
          (at package5 city12_2)
          (at package4 city8_1)
          (at package3 city12_3)
          (at package2 city12_2)
          (at package1 city8_3))
   (:goal (and (at package9 city11_2)
               (at package8 city5_3)
               (at package7 city10_3)
               (at package6 city9_3)
               (at package5 city10_1)
               (at package4 city13_1)
               (at package3 city1_3))))