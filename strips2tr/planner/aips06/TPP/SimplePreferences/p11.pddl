(define (problem TPP)
(:domain TPP-PropositionalSimplePreferences)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 - goods
	truck1 truck2 - truck
	market1 market2 market3 - market
	depot1 depot2 - depot
	level1 level2 level3 level4 level5 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(next level5 level4)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 market3 level0)
	(ready-to-load goods1 depot1 level0)
	(ready-to-load goods1 depot2 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods2 market2 level0)
	(ready-to-load goods2 market3 level0)
	(ready-to-load goods2 depot1 level0)
	(ready-to-load goods2 depot2 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods3 market2 level0)
	(ready-to-load goods3 market3 level0)
	(ready-to-load goods3 depot1 level0)
	(ready-to-load goods3 depot2 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods4 market2 level0)
	(ready-to-load goods4 market3 level0)
	(ready-to-load goods4 depot1 level0)
	(ready-to-load goods4 depot2 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods5 market2 level0)
	(ready-to-load goods5 market3 level0)
	(ready-to-load goods5 depot1 level0)
	(ready-to-load goods5 depot2 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods6 market2 level0)
	(ready-to-load goods6 market3 level0)
	(ready-to-load goods6 depot1 level0)
	(ready-to-load goods6 depot2 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods7 market2 level0)
	(ready-to-load goods7 market3 level0)
	(ready-to-load goods7 depot1 level0)
	(ready-to-load goods7 depot2 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods8 market2 level0)
	(ready-to-load goods8 market3 level0)
	(ready-to-load goods8 depot1 level0)
	(ready-to-load goods8 depot2 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods9 market2 level0)
	(ready-to-load goods9 market3 level0)
	(ready-to-load goods9 depot1 level0)
	(ready-to-load goods9 depot2 level0)
	(ready-to-load goods10 market1 level0)
	(ready-to-load goods10 market2 level0)
	(ready-to-load goods10 market3 level0)
	(ready-to-load goods10 depot1 level0)
	(ready-to-load goods10 depot2 level0)
	(ready-to-load goods11 market1 level0)
	(ready-to-load goods11 market2 level0)
	(ready-to-load goods11 market3 level0)
	(ready-to-load goods11 depot1 level0)
	(ready-to-load goods11 depot2 level0)
	(ready-to-load goods12 market1 level0)
	(ready-to-load goods12 market2 level0)
	(ready-to-load goods12 market3 level0)
	(ready-to-load goods12 depot1 level0)
	(ready-to-load goods12 depot2 level0)
	(ready-to-load goods13 market1 level0)
	(ready-to-load goods13 market2 level0)
	(ready-to-load goods13 market3 level0)
	(ready-to-load goods13 depot1 level0)
	(ready-to-load goods13 depot2 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(stored goods10 level0)
	(stored goods11 level0)
	(stored goods12 level0)
	(stored goods13 level0)
	(loaded goods1 truck1 level0)
	(loaded goods1 truck2 level0)
	(loaded goods2 truck1 level0)
	(loaded goods2 truck2 level0)
	(loaded goods3 truck1 level0)
	(loaded goods3 truck2 level0)
	(loaded goods4 truck1 level0)
	(loaded goods4 truck2 level0)
	(loaded goods5 truck1 level0)
	(loaded goods5 truck2 level0)
	(loaded goods6 truck1 level0)
	(loaded goods6 truck2 level0)
	(loaded goods7 truck1 level0)
	(loaded goods7 truck2 level0)
	(loaded goods8 truck1 level0)
	(loaded goods8 truck2 level0)
	(loaded goods9 truck1 level0)
	(loaded goods9 truck2 level0)
	(loaded goods10 truck1 level0)
	(loaded goods10 truck2 level0)
	(loaded goods11 truck1 level0)
	(loaded goods11 truck2 level0)
	(loaded goods12 truck1 level0)
	(loaded goods12 truck2 level0)
	(loaded goods13 truck1 level0)
	(loaded goods13 truck2 level0)
	(connected market1 market2)
	(connected market1 market3)
	(connected market2 market1)
	(connected market2 market3)
	(connected market3 market1)
	(connected market3 market2)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot1 market2)
	(connected market2 depot1)
	(connected depot1 market3)
	(connected market3 depot1)
	(connected depot2 market1)
	(connected market1 depot2)
	(connected depot2 market2)
	(connected market2 depot2)
	(connected depot2 market3)
	(connected market3 depot2)
	(on-sale goods1 market1 level0)
	(on-sale goods2 market1 level5)
	(on-sale goods3 market1 level0)
	(on-sale goods4 market1 level4)
	(on-sale goods5 market1 level2)
	(on-sale goods6 market1 level0)
	(on-sale goods7 market1 level0)
	(on-sale goods8 market1 level5)
	(on-sale goods9 market1 level0)
	(on-sale goods10 market1 level2)
	(on-sale goods11 market1 level0)
	(on-sale goods12 market1 level2)
	(on-sale goods13 market1 level1)
	(on-sale goods1 market2 level4)
	(on-sale goods2 market2 level0)
	(on-sale goods3 market2 level4)
	(on-sale goods4 market2 level1)
	(on-sale goods5 market2 level2)
	(on-sale goods6 market2 level3)
	(on-sale goods7 market2 level3)
	(on-sale goods8 market2 level0)
	(on-sale goods9 market2 level2)
	(on-sale goods10 market2 level3)
	(on-sale goods11 market2 level1)
	(on-sale goods12 market2 level2)
	(on-sale goods13 market2 level1)
	(on-sale goods1 market3 level1)
	(on-sale goods2 market3 level0)
	(on-sale goods3 market3 level1)
	(on-sale goods4 market3 level0)
	(on-sale goods5 market3 level0)
	(on-sale goods6 market3 level2)
	(on-sale goods7 market3 level0)
	(on-sale goods8 market3 level0)
	(on-sale goods9 market3 level0)
	(on-sale goods10 market3 level0)
	(on-sale goods11 market3 level4)
	(on-sale goods12 market3 level0)
	(on-sale goods13 market3 level3)
	(at truck1 depot1)
	(at truck2 depot2))

(:goal (and
	(forall (?g - goods) (preference p0A (stored ?g level1)))
	(forall (?g - goods) (preference p1A (stored ?g level2)))
	(forall (?g - goods) (preference p2A (stored ?g level3)))
	(forall (?g - goods) (preference p3A (stored ?g level4)))
	(forall (?g - goods) (preference p4A (stored ?g level5)))

	(forall (?l - level)
	   (preference p5A (imply (stored goods8 ?l) (stored goods12 ?l))))

	(preference p5B (imply (stored goods8 level1) (stored goods9 level2)))
	(preference p5C (imply (stored goods8 level2) (stored goods9 level4)))
	(preference p5D (not (stored goods8 level3)))
	(preference p5E (not (stored goods8 level4)))
	(preference p5F (not (stored goods8 level5)))

	(forall (?l - level)
	   (preference p5G (imply (stored goods9 ?l) (stored goods13 ?l))))

	(forall (?l - level)
	   (preference p5H (imply (stored goods5 ?l) (stored goods8 ?l))))

	(forall (?l - level)
	   (preference p5I (imply (stored goods2 ?l) (stored goods8 ?l))))

	(forall (?g - goods)
	   (preference p6A
	      (and (forall (?m - market) (ready-to-load ?g ?m level0))
		   (forall (?t - truck) (loaded ?g ?t level0)))))))


(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 2 (is-violated p1A))
		     (* 4 (is-violated p2A))
		     (* 8 (is-violated p3A))
		     (* 16 (is-violated p4A))
		     (* 32 (is-violated p5A))
		     (* 32 (is-violated p5B))
		     (* 32 (is-violated p5C))
		     (* 32 (is-violated p5D))
		     (* 32 (is-violated p5E))
		     (* 32 (is-violated p5F))
		     (* 32 (is-violated p5G))
		     (* 32 (is-violated p5H))
		     (* 32 (is-violated p5I))
		     (* 64 (is-violated p6A))
		     (* 1 (is-violated p-drive))))
)
