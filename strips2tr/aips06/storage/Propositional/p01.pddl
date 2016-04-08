; map of the depots:    
; * 
;__ 
; 0: depot0 area
; *: depot access point
; =: transit area

(define (problem storage_1)
(:domain storage)
(:objects
	depot0_1_1 container_0_0 - storearea
	hoist0 - hoist
	crate0 - crate
	container0 - container
	depot0 - depot
	loadarea - transitarea)

(:init
	(in depot0_1_1 depot0)
	(on crate0 container_0_0)
	(in crate0 container0)
	(in container_0_0 container0)
	(connected loadarea container_0_0) 
	(connected container_0_0 loadarea)  
	(connected depot0_1_1 loadarea)
	(connected loadarea depot0_1_1)    
	(at hoist0 depot0_1_1)
	(available hoist0))

(:goal (and
	(in crate0 depot0)))
)
