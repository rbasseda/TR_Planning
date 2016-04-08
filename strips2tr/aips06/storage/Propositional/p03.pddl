; map of the depots:      
; 0*0 
;____ 
; 0: depot0 area
; *: depot access point
; =: transit area

(define (problem storage_3)
(:domain storage)
(:objects
	depot0_1_1 depot0_1_2 depot0_1_3 container_0_0 - storearea
	hoist0 hoist1 hoist2 - hoist
	crate0 - crate
	container0 - container
	depot0 - depot
	loadarea - transitarea)

(:init
	(connected depot0_1_1 depot0_1_2)
	(connected depot0_1_2 depot0_1_3)
	(connected depot0_1_2 depot0_1_1)
	(connected depot0_1_3 depot0_1_2)
	(in depot0_1_1 depot0)
	(in depot0_1_2 depot0)
	(in depot0_1_3 depot0)
	(on crate0 container_0_0)
	(in crate0 container0)
	(in container_0_0 container0)
	(connected loadarea container_0_0) 
	(connected container_0_0 loadarea)  
	(connected depot0_1_2 loadarea)
	(connected loadarea depot0_1_2)    
	(at hoist0 depot0_1_2)
	(available hoist0)
	(at hoist1 depot0_1_3)
	(available hoist1)
	(at hoist2 depot0_1_1)
	(available hoist2))

(:goal (and
	(in crate0 depot0)))
)
