; map of the depots:           
; 0000     
; *000     
;_____     
; 0: depot0 area
; *: depot access point
; =: transit area

(define (problem storage_11)
(:domain storage)
(:objects
	depot0_1_1 depot0_1_2 depot0_1_3 depot0_1_4 depot0_2_1 depot0_2_2 depot0_2_3 depot0_2_4 container_0_0 container_0_1 container_0_2 container_0_3 - storearea
	hoist0 hoist1 - hoist
	crate0 crate1 crate2 crate3 - crate
	container0 - container
	depot0 - depot
	loadarea - transitarea)

(:init
	(connected depot0_1_1 depot0_2_1)
	(connected depot0_1_1 depot0_1_2)
	(connected depot0_1_2 depot0_2_2)
	(connected depot0_1_2 depot0_1_3)
	(connected depot0_1_2 depot0_1_1)
	(connected depot0_1_3 depot0_2_3)
	(connected depot0_1_3 depot0_1_4)
	(connected depot0_1_3 depot0_1_2)
	(connected depot0_1_4 depot0_2_4)
	(connected depot0_1_4 depot0_1_3)
	(connected depot0_2_1 depot0_1_1)
	(connected depot0_2_1 depot0_2_2)
	(connected depot0_2_2 depot0_1_2)
	(connected depot0_2_2 depot0_2_3)
	(connected depot0_2_2 depot0_2_1)
	(connected depot0_2_3 depot0_1_3)
	(connected depot0_2_3 depot0_2_4)
	(connected depot0_2_3 depot0_2_2)
	(connected depot0_2_4 depot0_1_4)
	(connected depot0_2_4 depot0_2_3)
	(in depot0_1_1 depot0)
	(in depot0_1_2 depot0)
	(in depot0_1_3 depot0)
	(in depot0_1_4 depot0)
	(in depot0_2_1 depot0)
	(in depot0_2_2 depot0)
	(in depot0_2_3 depot0)
	(in depot0_2_4 depot0)
	(on crate0 container_0_0)
	(on crate1 container_0_1)
	(on crate2 container_0_2)
	(on crate3 container_0_3)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in container_0_0 container0)
	(in container_0_1 container0)
	(in container_0_2 container0)
	(in container_0_3 container0)
	(connected loadarea container_0_0) 
	(connected container_0_0 loadarea)
	(connected loadarea container_0_1) 
	(connected container_0_1 loadarea)
	(connected loadarea container_0_2) 
	(connected container_0_2 loadarea)
	(connected loadarea container_0_3) 
	(connected container_0_3 loadarea)  
	(connected depot0_2_1 loadarea)
	(connected loadarea depot0_2_1)  
	(clear depot0_1_1)
	(clear depot0_1_2)
	(clear depot0_1_3)
	(clear depot0_2_3)
	(clear depot0_2_4)
	(clear depot0_2_2)  
	(at hoist0 depot0_2_1)
	(available hoist0)
	(at hoist1 depot0_1_4)
	(available hoist1))

(:goal (and
	(in crate0 depot0)
	(in crate1 depot0)
	(in crate2 depot0)
	(in crate3 depot0)))
)
