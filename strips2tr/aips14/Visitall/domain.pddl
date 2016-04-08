(define (domain visitall)
(:requirements :typing)
(:types        place - object)
(:predicates (connected ?x ?y - place)
	     (at_robot ?x - place)
	     (visited ?x - place)
)
	
(:action move
:parameters (?curpos ?nextpos - place)
:precondition (and (at_robot ?curpos) (connected ?curpos ?nextpos))
:effect (and (at_robot ?nextpos) (not (at_robot ?curpos)) (visited ?nextpos))
)

)

