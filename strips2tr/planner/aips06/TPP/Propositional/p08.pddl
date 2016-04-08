(define (problem tpp)
(:domain tpp)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 - goods
	truck1 truck2 - truck
	market1 market2 - market
	depot1 - depot
	level0 level1 level2 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(ready_to_load goods1 market1 level0)
	(ready_to_load goods1 market2 level0)
	(ready_to_load goods2 market1 level0)
	(ready_to_load goods2 market2 level0)
	(ready_to_load goods3 market1 level0)
	(ready_to_load goods3 market2 level0)
	(ready_to_load goods4 market1 level0)
	(ready_to_load goods4 market2 level0)
	(ready_to_load goods5 market1 level0)
	(ready_to_load goods5 market2 level0)
	(ready_to_load goods6 market1 level0)
	(ready_to_load goods6 market2 level0)
	(ready_to_load goods7 market1 level0)
	(ready_to_load goods7 market2 level0)
	(ready_to_load goods8 market1 level0)
	(ready_to_load goods8 market2 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
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
	(connected market1 market2)
	(connected market2 market1)
	(connected depot1 market2)
	(connected market2 depot1)
	(on_sale goods1 market1 level1)
	(on_sale goods2 market1 level2)
	(on_sale goods3 market1 level1)
	(on_sale goods4 market1 level2)
	(on_sale goods5 market1 level2)
	(on_sale goods6 market1 level2)
	(on_sale goods7 market1 level2)
	(on_sale goods8 market1 level2)
	(on_sale goods1 market2 level0)
	(on_sale goods2 market2 level0)
	(on_sale goods3 market2 level1)
	(on_sale goods4 market2 level0)
	(on_sale goods5 market2 level0)
	(on_sale goods6 market2 level0)
	(on_sale goods7 market2 level0)
	(on_sale goods8 market2 level0)
	(at truck1 depot1)
	(at truck2 depot1))

(:goal (and
	(stored goods1 level1)
	(stored goods2 level2)
	(stored goods3 level1)
	(stored goods4 level2)
	(stored goods5 level2)
	(stored goods6 level1)
	(stored goods7 level2)
	(stored goods8 level1)))

)
