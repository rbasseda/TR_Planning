(define (problem grounded-STRIPS-TPP)
(:domain grounded-STRIPS-TPP-PROPOSITIONAL)
(:init
(AT-TRUCK4-DEPOT2)
(AT-TRUCK3-DEPOT2)
(AT-TRUCK2-DEPOT1)
(AT-TRUCK1-DEPOT1)
(ON-SALE-GOODS8-MARKET4-LEVEL1)
(ON-SALE-GOODS7-MARKET4-LEVEL1)
(ON-SALE-GOODS6-MARKET4-LEVEL2)
(ON-SALE-GOODS4-MARKET4-LEVEL2)
(ON-SALE-GOODS1-MARKET4-LEVEL1)
(ON-SALE-GOODS8-MARKET3-LEVEL2)
(ON-SALE-GOODS3-MARKET3-LEVEL1)
(ON-SALE-GOODS7-MARKET2-LEVEL2)
(ON-SALE-GOODS6-MARKET2-LEVEL1)
(ON-SALE-GOODS5-MARKET2-LEVEL2)
(ON-SALE-GOODS3-MARKET2-LEVEL1)
(ON-SALE-GOODS2-MARKET2-LEVEL2)
(ON-SALE-GOODS1-MARKET2-LEVEL2)
(ON-SALE-GOODS5-MARKET1-LEVEL1)
(ON-SALE-GOODS3-MARKET1-LEVEL1)
(ON-SALE-GOODS2-MARKET1-LEVEL1)
(LOADED-GOODS8-TRUCK4-LEVEL0)
(LOADED-GOODS8-TRUCK3-LEVEL0)
(LOADED-GOODS8-TRUCK2-LEVEL0)
(LOADED-GOODS8-TRUCK1-LEVEL0)
(LOADED-GOODS7-TRUCK4-LEVEL0)
(LOADED-GOODS7-TRUCK3-LEVEL0)
(LOADED-GOODS7-TRUCK2-LEVEL0)
(LOADED-GOODS7-TRUCK1-LEVEL0)
(LOADED-GOODS6-TRUCK4-LEVEL0)
(LOADED-GOODS6-TRUCK3-LEVEL0)
(LOADED-GOODS6-TRUCK2-LEVEL0)
(LOADED-GOODS6-TRUCK1-LEVEL0)
(LOADED-GOODS5-TRUCK4-LEVEL0)
(LOADED-GOODS5-TRUCK3-LEVEL0)
(LOADED-GOODS5-TRUCK2-LEVEL0)
(LOADED-GOODS5-TRUCK1-LEVEL0)
(LOADED-GOODS4-TRUCK4-LEVEL0)
(LOADED-GOODS4-TRUCK3-LEVEL0)
(LOADED-GOODS4-TRUCK2-LEVEL0)
(LOADED-GOODS4-TRUCK1-LEVEL0)
(LOADED-GOODS3-TRUCK4-LEVEL0)
(LOADED-GOODS3-TRUCK3-LEVEL0)
(LOADED-GOODS3-TRUCK2-LEVEL0)
(LOADED-GOODS3-TRUCK1-LEVEL0)
(LOADED-GOODS2-TRUCK4-LEVEL0)
(LOADED-GOODS2-TRUCK3-LEVEL0)
(LOADED-GOODS2-TRUCK2-LEVEL0)
(LOADED-GOODS2-TRUCK1-LEVEL0)
(LOADED-GOODS1-TRUCK4-LEVEL0)
(LOADED-GOODS1-TRUCK3-LEVEL0)
(LOADED-GOODS1-TRUCK2-LEVEL0)
(LOADED-GOODS1-TRUCK1-LEVEL0)
(STORED-GOODS8-LEVEL0)
(STORED-GOODS7-LEVEL0)
(STORED-GOODS6-LEVEL0)
(STORED-GOODS5-LEVEL0)
(STORED-GOODS4-LEVEL0)
(STORED-GOODS3-LEVEL0)
(STORED-GOODS2-LEVEL0)
(STORED-GOODS1-LEVEL0)
(READY-TO-LOAD-GOODS8-MARKET4-LEVEL0)
(READY-TO-LOAD-GOODS8-MARKET3-LEVEL0)
(READY-TO-LOAD-GOODS7-MARKET4-LEVEL0)
(READY-TO-LOAD-GOODS7-MARKET2-LEVEL0)
(READY-TO-LOAD-GOODS6-MARKET4-LEVEL0)
(READY-TO-LOAD-GOODS6-MARKET2-LEVEL0)
(READY-TO-LOAD-GOODS5-MARKET2-LEVEL0)
(READY-TO-LOAD-GOODS5-MARKET1-LEVEL0)
(READY-TO-LOAD-GOODS4-MARKET4-LEVEL0)
(READY-TO-LOAD-GOODS3-MARKET3-LEVEL0)
(READY-TO-LOAD-GOODS3-MARKET2-LEVEL0)
(READY-TO-LOAD-GOODS3-MARKET1-LEVEL0)
(READY-TO-LOAD-GOODS2-MARKET2-LEVEL0)
(READY-TO-LOAD-GOODS2-MARKET1-LEVEL0)
(READY-TO-LOAD-GOODS1-MARKET4-LEVEL0)
(READY-TO-LOAD-GOODS1-MARKET2-LEVEL0)
)
(:goal
(and
(STORED-GOODS8-LEVEL2)
(STORED-GOODS7-LEVEL1)
(STORED-GOODS6-LEVEL1)
(STORED-GOODS5-LEVEL3)
(STORED-GOODS4-LEVEL2)
(STORED-GOODS3-LEVEL1)
(STORED-GOODS2-LEVEL1)
(STORED-GOODS1-LEVEL2)
)
)
)
