; ipc5 domain: openstacks propositional __ strips forced sequential version
; author: patrik haslum
; the problem instances for this domain were taken from the problem
; collection of the 2005 constraint modelling challenge, organized by
; barbara smith & ian gent (see http://www.dcs.st_and.ac.uk/~ipg/challenge/).

(define (domain openstacks_sequencedstrips)
  (:requirements :typing :adl)
  (:types order product count)
  (:predicates (includes ?o - order ?p - product)
	       (waiting ?o - order)
	       (started ?o - order)
	       (shipped ?o - order)
	       (made ?p - product)
	       (machine_available)
	       (machine_configured ?p - product)
	       (stacks_avail ?s - count)
	       (next_count ?s ?ns - count))

  (:action setup_machine
    :parameters (?p - product ?avail - count)
    :precondition (and (machine_available)
		       (not (made ?p))
		       (stacks_avail ?avail))
    :effect (and (not (machine_available)) (machine_configured ?p)))

  (:action make_product
    :parameters (?p - product ?avail - count)
    :precondition (and (machine_configured ?p)
		       (forall (?o - order)
			       (imply (includes ?o ?p) (started ?o)))
		       (stacks_avail ?avail))
    :effect (and (not (machine_configured ?p))
		 (machine_available)
		 (made ?p)))

  (:action start_order
    :parameters (?o - order ?avail ?new_avail - count)
    :precondition (and (waiting ?o)
		       (stacks_avail ?avail)
		       (next_count ?new_avail ?avail))
    :effect (and (not (waiting ?o))
		 (started ?o)
		 (not (stacks_avail ?avail))
		 (stacks_avail ?new_avail))
    )

  (:action ship_order
    :parameters (?o - order ?avail ?new_avail - count)
    :precondition (and (started ?o)
		       (forall (?p - product)
			       (imply (includes ?o ?p) (made ?p)))
		       (stacks_avail ?avail)
		       (next_count ?avail ?new_avail))
    :effect (and (not (started ?o))
		 (shipped ?o)
		 (not (stacks_avail ?avail))
		 (stacks_avail ?new_avail))
    )

  (:action open_new_stack
    :parameters (?open ?new_open - count)
    :precondition (and (stacks_avail ?open)
		       (next_count ?open ?new_open))
    :effect (and (not (stacks_avail ?open))
		 (stacks_avail ?new_open))
    )

  )
