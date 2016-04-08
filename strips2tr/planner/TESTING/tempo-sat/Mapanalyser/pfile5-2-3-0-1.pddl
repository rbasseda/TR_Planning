(define (problem citycar-5-5-2)
(:domain mapanalyzer)
(:objects  
junction0-0 junction0-1 junction0-2 junction0-3 junction0-4 
junction1-0 junction1-1 junction1-2 junction1-3 junction1-4 
junction2-0 junction2-1 junction2-2 junction2-3 junction2-4 
junction3-0 junction3-1 junction3-2 junction3-3 junction3-4 
junction4-0 junction4-1 junction4-2 junction4-3 junction4-4 - junction
car0 car1 - car
garage0 garage1 garage2 - garage
road0 road1 road2 road3 road4 road5 road6 - road
)
(:init
	(=(build-time) 5)
	(=(remove-time) 3)
	(=(arrived-time) 1)
	(=(start-time) 1)
	(=(speed car0) 7)
	(=(speed car1) 13)
(available road0)
(available road1)
(available road2)
(available road3)
(available road4)
(available road5)
(available road6)
(connected junction0-0 junction0-1)
(connected junction0-1 junction0-0)
(=(distance junction0-0 junction0-1) 8)
(=(distance junction0-1 junction0-0) 8)
(connected junction0-1 junction0-2)
(connected junction0-2 junction0-1)
(=(distance junction0-1 junction0-2) 64)
(=(distance junction0-2 junction0-1) 64)
(connected junction0-2 junction0-3)
(connected junction0-3 junction0-2)
(=(distance junction0-2 junction0-3) 3)
(=(distance junction0-3 junction0-2) 3)
(connected junction0-3 junction0-4)
(connected junction0-4 junction0-3)
(=(distance junction0-3 junction0-4) 42)
(=(distance junction0-4 junction0-3) 42)
(connected junction1-0 junction1-1)
(connected junction1-1 junction1-0)
(=(distance junction1-0 junction1-1) 74)
(=(distance junction1-1 junction1-0) 74)
(connected junction1-1 junction1-2)
(connected junction1-2 junction1-1)
(=(distance junction1-1 junction1-2) 7)
(=(distance junction1-2 junction1-1) 7)
(connected junction1-2 junction1-3)
(connected junction1-3 junction1-2)
(=(distance junction1-2 junction1-3) 33)
(=(distance junction1-3 junction1-2) 33)
(connected junction1-3 junction1-4)
(connected junction1-4 junction1-3)
(=(distance junction1-3 junction1-4) 62)
(=(distance junction1-4 junction1-3) 62)
(connected junction2-0 junction2-1)
(connected junction2-1 junction2-0)
(=(distance junction2-0 junction2-1) 2)
(=(distance junction2-1 junction2-0) 2)
(connected junction2-1 junction2-2)
(connected junction2-2 junction2-1)
(=(distance junction2-1 junction2-2) 12)
(=(distance junction2-2 junction2-1) 12)
(connected junction2-2 junction2-3)
(connected junction2-3 junction2-2)
(=(distance junction2-2 junction2-3) 47)
(=(distance junction2-3 junction2-2) 47)
(connected junction2-3 junction2-4)
(connected junction2-4 junction2-3)
(=(distance junction2-3 junction2-4) 81)
(=(distance junction2-4 junction2-3) 81)
(connected junction3-0 junction3-1)
(connected junction3-1 junction3-0)
(=(distance junction3-0 junction3-1) 28)
(=(distance junction3-1 junction3-0) 28)
(connected junction3-1 junction3-2)
(connected junction3-2 junction3-1)
(=(distance junction3-1 junction3-2) 81)
(=(distance junction3-2 junction3-1) 81)
(connected junction3-2 junction3-3)
(connected junction3-3 junction3-2)
(=(distance junction3-2 junction3-3) 26)
(=(distance junction3-3 junction3-2) 26)
(connected junction3-3 junction3-4)
(connected junction3-4 junction3-3)
(=(distance junction3-3 junction3-4) 50)
(=(distance junction3-4 junction3-3) 50)
(connected junction4-0 junction4-1)
(connected junction4-1 junction4-0)
(=(distance junction4-0 junction4-1) 74)
(=(distance junction4-1 junction4-0) 74)
(connected junction4-1 junction4-2)
(connected junction4-2 junction4-1)
(=(distance junction4-1 junction4-2) 10)
(=(distance junction4-2 junction4-1) 10)
(connected junction4-2 junction4-3)
(connected junction4-3 junction4-2)
(=(distance junction4-2 junction4-3) 77)
(=(distance junction4-3 junction4-2) 77)
(connected junction4-3 junction4-4)
(connected junction4-4 junction4-3)
(=(distance junction4-3 junction4-4) 90)
(=(distance junction4-4 junction4-3) 90)
(connected junction0-0 junction1-0)
(connected junction1-0 junction0-0)
(=(distance junction0-0 junction1-0) 68)
(=(distance junction1-0 junction0-0) 68)
(connected junction1-0 junction2-0)
(connected junction2-0 junction1-0)
(=(distance junction1-0 junction2-0) 21)
(=(distance junction2-0 junction1-0) 21)
(connected junction2-0 junction3-0)
(connected junction3-0 junction2-0)
(=(distance junction2-0 junction3-0) 77)
(=(distance junction3-0 junction2-0) 77)
(connected junction3-0 junction4-0)
(connected junction4-0 junction3-0)
(=(distance junction3-0 junction4-0) 98)
(=(distance junction4-0 junction3-0) 98)
(connected junction0-1 junction1-1)
(connected junction1-1 junction0-1)
(=(distance junction0-1 junction1-1) 50)
(=(distance junction1-1 junction0-1) 50)
(connected junction1-1 junction2-1)
(connected junction2-1 junction1-1)
(=(distance junction1-1 junction2-1) 89)
(=(distance junction2-1 junction1-1) 89)
(connected junction2-1 junction3-1)
(connected junction3-1 junction2-1)
(=(distance junction2-1 junction3-1) 38)
(=(distance junction3-1 junction2-1) 38)
(connected junction3-1 junction4-1)
(connected junction4-1 junction3-1)
(=(distance junction3-1 junction4-1) 82)
(=(distance junction4-1 junction3-1) 82)
(connected junction0-2 junction1-2)
(connected junction1-2 junction0-2)
(=(distance junction0-2 junction1-2) 39)
(=(distance junction1-2 junction0-2) 39)
(connected junction1-2 junction2-2)
(connected junction2-2 junction1-2)
(=(distance junction1-2 junction2-2) 64)
(=(distance junction2-2 junction1-2) 64)
(connected junction2-2 junction3-2)
(connected junction3-2 junction2-2)
(=(distance junction2-2 junction3-2) 61)
(=(distance junction3-2 junction2-2) 61)
(connected junction3-2 junction4-2)
(connected junction4-2 junction3-2)
(=(distance junction3-2 junction4-2) 55)
(=(distance junction4-2 junction3-2) 55)
(connected junction0-3 junction1-3)
(connected junction1-3 junction0-3)
(=(distance junction0-3 junction1-3) 41)
(=(distance junction1-3 junction0-3) 41)
(connected junction1-3 junction2-3)
(connected junction2-3 junction1-3)
(=(distance junction1-3 junction2-3) 59)
(=(distance junction2-3 junction1-3) 59)
(connected junction2-3 junction3-3)
(connected junction3-3 junction2-3)
(=(distance junction2-3 junction3-3) 66)
(=(distance junction3-3 junction2-3) 66)
(connected junction3-3 junction4-3)
(connected junction4-3 junction3-3)
(=(distance junction3-3 junction4-3) 35)
(=(distance junction4-3 junction3-3) 35)
(connected junction0-4 junction1-4)
(connected junction1-4 junction0-4)
(=(distance junction0-4 junction1-4) 55)
(=(distance junction1-4 junction0-4) 55)
(connected junction1-4 junction2-4)
(connected junction2-4 junction1-4)
(=(distance junction1-4 junction2-4) 18)
(=(distance junction2-4 junction1-4) 18)
(connected junction2-4 junction3-4)
(connected junction3-4 junction2-4)
(=(distance junction2-4 junction3-4) 68)
(=(distance junction3-4 junction2-4) 68)
(connected junction3-4 junction4-4)
(connected junction4-4 junction3-4)
(=(distance junction3-4 junction4-4) 97)
(=(distance junction4-4 junction3-4) 97)
(clear junction0-0)
(clear junction0-1)
(clear junction0-2)
(clear junction0-3)
(clear junction0-4)
(clear junction1-0)
(clear junction1-1)
(clear junction1-2)
(clear junction1-3)
(clear junction1-4)
(clear junction2-0)
(clear junction2-1)
(clear junction2-2)
(clear junction2-3)
(clear junction2-4)
(clear junction3-0)
(clear junction3-1)
(clear junction3-2)
(clear junction3-3)
(clear junction3-4)
(clear junction4-0)
(clear junction4-1)
(clear junction4-2)
(clear junction4-3)
(clear junction4-4)
(at_garage garage0 junction0-2)
(at_garage garage1 junction0-1)
(at_garage garage2 junction0-4)
(starting car0 garage0)
(starting car1 garage1)
)
(:goal
(and
(arrived car0 junction4-1)
(arrived car1 junction4-1)
)
)
(:metric minimize (total-time))
)
