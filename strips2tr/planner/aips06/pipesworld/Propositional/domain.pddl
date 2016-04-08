;; pipesworld

(define (domain pipesworld_strips)

(:requirements :strips :typing )

;; types
;;  pipe: a pipeline segment
;;  area: operational areas
;;  product: an oil derivative product, such as gasoline,
;;    kerosene, etc.
;;  batch_atom: an unitary batch

(:types pipe area product batch_atom tank_slot)

;; define the products (petroleum derivatives)
(:constants lco gasoleo rat_a oca1 oc1b - product)

(:predicates

  ;; indicates that a pipeline segment connects
  ;; two areas
  (connect ?from ?to - area ?pipe - pipe)

  ;; special case for unitary pipes
  (unitary ?pipe - pipe)
  (not_unitary ?pipe - pipe)

  ;; these predicates represent the pipeline segment contents
  ;; we define the first (nearest to  ``from'' area) and 
  ;; last (nearest to  ``to'' area) batch_atom in a pipeline 
  ;; segment, and their sequence is represented by the
  ;; (follow) predicate
  (last ?batch_atom - batch_atom ?pipe - pipe)
  (first ?batch_atom - batch_atom ?pipe - pipe)
  (follow ?next ?previous - batch_atom)

  ;; an unitary batch product
  (is_product ?batch_atom - batch_atom ?product - product)

  ;; unitary batches that are on areas
  (on ?batch_atom - batch_atom ?area - area)

  ;; indicates that two products may interface in the
  ;; pipeline segment
  (may_interface ?product_a ?product_b - product)

  ;; to control splitting process (push/pop vs. update)
  ;;
  (normal ?pipe - pipe)
  (push_updating ?pipe - pipe)  
  (pop_updating ?pipe - pipe)  

  ;; tank_slot product and location
  (tank_slot_product_location ?tank_slot - tank_slot ?product - product ?area - area)

  ;; tank_slot status
  (occupied ?tank_slot - tank_slot)
  (not_occupied ?tank_slot - tank_slot)

)

;; push action
;; moves a batch_atom from a tankage to a pipeline segment
;; the push action moves the pipeline segment contents towards
;; the ``to_area'' defined in the ``connect'' predicate

;; first part __ initialise the push and turn control
;; over to contents update operators
;;
(:action push_start
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?batch_atom_in - batch_atom
    ?from_area - area
    ?to_area - area
    ?first_batch_atom - batch_atom
    ?product_batch_atom_in - product
    ?product_first_batch - product
    ?tank_slot - tank_slot
  )
  :precondition
   (and
   ;; normal planning mode
   ;;
   (normal ?pipe)

   ;; we want to do this with non_unitary pipes only
   ;;
   (not_unitary ?pipe)

   ;; right area!
   ;; (?to_area we need here only to identify from_area from connect relation..
   ;;  maybe introduce a split, i.e. pipe_start and pipe_end; note: we still
   ;;  need connect for the unitary pipe operators below)
   (connect ?from_area ?to_area ?pipe)

   ;; current batches locs...
   ;;
   (first ?first_batch_atom ?pipe)
   (on ?batch_atom_in ?from_area)

   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?first_batch_atom ?product_first_batch)

   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_first_batch)

   ;; binds tank_slot, must be occupied
   (tank_slot_product_location ?tank_slot ?product_batch_atom_in ?from_area)
   (occupied ?tank_slot)

 )
  :effect
   (and 
     ;; switch into correct update mode for this pipe
     ;;
     (push_updating ?pipe)
     (not (normal ?pipe))

     ;; the inserted unitary batch will be the pipeline segment
     ;; new first batch; do the pipeline_start updates.
     (first ?batch_atom_in ?pipe)
     (not (first ?first_batch_atom ?pipe))
     (follow ?first_batch_atom ?batch_atom_in)

     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?from_area))

     ;; origin tank_slot is freed
     (not (occupied ?tank_slot))
     (not_occupied ?tank_slot)
)
)

;; push action
;; second part __ when start of pipe has been done, care about the
;; end of the pipe
;;
(:action push_end	
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ?from_area - area
    ?to_area - area
    ?last_batch_atom - batch_atom
    ?next_last_batch_atom - batch_atom
    ?product_last_batch - product
    ?tank_slot - tank_slot
  )
  :precondition
   (and
   ;; are we in the correct mode?
   (push_updating ?pipe)

   ;; we want to do this with non_unitary pipes only
   ;; (superfluous here because mode will be only invoked from
   ;;  non_unitary pipes; make that explicit, anyway.)
   ;;
   (not_unitary ?pipe)

   ;; right area!
   ;; (?to_area we need here only to identify from_area from connect relation..
   ;;  maybe introduce a split, i.e. pipe_start and pipe_end; note: we still
   ;;  need connect for the unitary pipe operators below)
   (connect ?from_area ?to_area ?pipe)

   ;; current batches locs...
   ;;
   (last ?last_batch_atom ?pipe)
   (follow ?last_batch_atom ?next_last_batch_atom)

   ;; binds last batch product
   (is_product ?last_batch_atom ?product_last_batch)

   ;; binds tank_slot, must be freed
   (tank_slot_product_location ?tank_slot ?product_last_batch ?to_area)
   (not_occupied ?tank_slot)

 )
  :effect
   (and 
     ;; back to normal mode.
     (not (push_updating ?pipe))
     (normal ?pipe)

     ;; the pipeline_end updates.
     ;;
     (not (follow ?last_batch_atom ?next_last_batch_atom))
     (last ?next_last_batch_atom ?pipe)
     (not (last ?last_batch_atom ?pipe))

     ;; batch_atom removed from pipeline segment is inserted 
     ;; into the destination area
     (on ?last_batch_atom ?to_area)

     ;; tank_slot that receives the batch is occupied
     (occupied ?tank_slot)
     (not (not_occupied ?tank_slot))

)
)

;; pop action
;; moves a batch_atom from a tankage to a pipeline segment
;; the pop action moves the pipeline segment contents towards
;; the ``from_area'' defined in the ``connect'' predicate

;; first part __ initialise the pop and turn control
;; over to contents update operators
;;
(:action pop_start
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?batch_atom_in - batch_atom
    ?from_area - area
    ?to_area - area
    ?last_batch_atom - batch_atom
    ?product_batch_atom_in - product
    ?product_last_batch - product
    ?tank_slot - tank_slot

  )
  :precondition
   (and
   ;; normal planning mode
   ;;
   (normal ?pipe)

   ;; we want to do this with non_unitary pipes only
   ;;
   (not_unitary ?pipe)

   ;; right area!
   ;; (?to_area we need here only to identify from_area from connect relation..
   ;;  maybe introduce a split, i.e. pipe_start and pipe_end; note: we still
   ;;  need connect for the unitary pipe operators below)
   (connect ?from_area ?to_area ?pipe)

   ;; current batches locs...
   ;;
   (last ?last_batch_atom ?pipe)
   (on ?batch_atom_in ?to_area)

   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?last_batch_atom ?product_last_batch)

   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_last_batch)

   ;; binds tank_slot, must be occupied
  (tank_slot_product_location ?tank_slot ?product_batch_atom_in ?to_area)
  (occupied ?tank_slot)


 )
  :effect
   (and 
     ;; switch into correct update mode for this pipe
     ;;
     (pop_updating ?pipe)
     (not (normal ?pipe))

     ;; the inserted unitary batch will be the pipeline segment
     ;; new first batch; do the pipeline_end updates.
     (last ?batch_atom_in ?pipe)
     (not (last ?last_batch_atom ?pipe))
     (follow ?batch_atom_in ?last_batch_atom)

     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?to_area))

     ;; origin tank_slot is freed
     (not (occupied ?tank_slot))
     (not_occupied ?tank_slot)

)
)
;; pop action
;; second part __ when end of pipe has been done, care about the
;; start of the pipe
;;
(:action pop_end
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ?from_area - area
    ?to_area - area
    ?first_batch_atom - batch_atom
    ?next_first_batch_atom - batch_atom
    ?product_first_batch - product
    ?tank_slot - tank_slot
  )
  :precondition
   (and
   ;; are we in the correct mode?
   (pop_updating ?pipe)

   ;; we want to do this with non_unitary pipes only
   ;; (superfluous here because mode will be only invoked from
   ;;  non_unitary pipes; make that explicit, anyway.)
   ;;
   (not_unitary ?pipe)

   ;; right area!
   ;; (?to_area we need here only to identify from_area from connect relation..
   ;;  maybe introduce a split, i.e. pipe_start and pipe_end; note: we still
   ;;  need connect for the unitary pipe operators below)
   (connect ?from_area ?to_area ?pipe)

   ;; current batches locs...
   ;;
   (first ?first_batch_atom ?pipe)
   (follow ?next_first_batch_atom ?first_batch_atom)

   ;; binds tank_slot, must be freed
   (tank_slot_product_location ?tank_slot ?product_first_batch ?from_area)
   (not_occupied ?tank_slot)

 )
  :effect
   (and 
     ;; back to normal mode.
     (not (pop_updating ?pipe))
     (normal ?pipe)

     ;; the pipeline_start updates.
     ;;
     (not (follow ?next_first_batch_atom ?first_batch_atom))
     (first ?next_first_batch_atom ?pipe)
     (not (first ?first_batch_atom ?pipe))

     ;; batch_atom removed from pipeline segment is inserted 
     ;; into the destination area
     (on ?first_batch_atom ?from_area)

     ;; tank_slot that receives the batch is occupied
     (occupied ?tank_slot)
     (not (not_occupied ?tank_slot))

)
)

;; push_unitarypipe action
;; moves a batch_atom from a tankage to a pipeline segment
;; the push_unitarypipe action moves the pipeline segment contents towards
;; the ``to_area'' defined in the ``connect'' predicate
(:action push_unitarypipe
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?batch_atom_in - batch_atom
    ?from_area - area
    ?to_area - area
    ?first_batch_atom - batch_atom
    ?product_batch_atom_in - product
    ?product_first_batch - product
    ?from_tank_slot - tank_slot
    ?to_tank_slot - tank_slot
  )
  :precondition
   (and

   ;; binds :vars section
   (first ?first_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)

   ;; inserted batch must be in 'from_area'
   (on ?batch_atom_in ?from_area)

   ;; action is applicable only in unitary pipeline segments
   (unitary ?pipe)

   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?first_batch_atom ?product_first_batch)

   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_first_batch)

   ;; binds tank_slot, must be occupied
   (tank_slot_product_location ?from_tank_slot ?product_batch_atom_in ?from_area)
   (occupied ?from_tank_slot)

   ;; binds tank_slot, must be freed
   (tank_slot_product_location ?to_tank_slot ?product_first_batch ?to_area)
   (not_occupied ?to_tank_slot)

 )
  :effect
   (and 
     ;; the inserted unitary batch will be the pipeline segment
     ;; new first and last batch
     (first ?batch_atom_in ?pipe)
     (not (first ?first_batch_atom ?pipe))
     (last ?batch_atom_in ?pipe)
     (not (last ?first_batch_atom ?pipe))

     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?from_area))

     ;; origin tank_slot is freed
     (not (occupied ?from_tank_slot))
     (not_occupied ?from_tank_slot)

     ;; batch_atom removed from pipeline segment is inserted 
     ;; into the destination area
     (on ?first_batch_atom ?to_area)

     ;; tank_slot that receives the batch is occupied
     (occupied ?to_tank_slot)
     (not (not_occupied ?to_tank_slot))

)
)

;; pop_unitarypipe action
;; moves a batch_atom from a tankage to a pipeline segment
;; the pop_unitarypipe action moves the pipeline segment contents towards
;; the ``from_area'' defined in the ``connect'' predicate
(:action pop_unitarypipe
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?batch_atom_in - batch_atom
    ?from_area - area
    ?to_area - area
    ?first_batch_atom - batch_atom
    ?product_batch_atom_in - product
    ?product_first_batch - product
    ?from_tank_slot - tank_slot
    ?to_tank_slot - tank_slot
  )
  :precondition
   (and

   ;; binds :vars section
   (first ?first_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)

   ;; inserted batch must be in 'to_area'
   (on ?batch_atom_in ?to_area)

   ;; action is applicable only in unitary pipeline segments
   (unitary ?pipe)

   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?first_batch_atom ?product_first_batch)

   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_first_batch)

   ;; binds tank_slot, must be occupied
   (tank_slot_product_location ?to_tank_slot ?product_batch_atom_in ?to_area)
   (occupied ?to_tank_slot)

   ;; binds tank_slot, must be freed
   (tank_slot_product_location ?from_tank_slot ?product_first_batch ?from_area)
   (not_occupied ?from_tank_slot)

 )
  :effect
   (and 
     ;; the inserted unitary batch will be the pipeline segment
     ;; new last batch
     (last ?batch_atom_in ?pipe)
     (not (last ?first_batch_atom ?pipe))
     (first ?batch_atom_in ?pipe)
     (not (first ?first_batch_atom ?pipe))

     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?to_area))

     ;; origin tank_slot is freed
     (not (occupied ?to_tank_slot))
     (not_occupied ?to_tank_slot)

     ;; batch_atom removed from pipeline segment is inserted 
     ;; into the destination area
     (on ?first_batch_atom ?from_area)

     ;; tank_slot that receives the batch is occupied
     (occupied ?from_tank_slot)
     (not (not_occupied ?from_tank_slot))


)
)
)
