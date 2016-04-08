;; pipesworld

(define (domain pipesworld_strips)

(:requirements :strips :typing )

;; types
;;  pipe: a pipeline segment
;;  area: operational areas
;;  product: an oil derivative product, such as gasoline,
;;    kerosene, etc.
;;  batch_atom: an unitary batch

(:types pipe area product batch_atom )

;; define the products (petroleum derivatives)
(:constants lco gasoleo rat_a oca1 oc1b - product )
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
  (normal ?pipe - pipe)
  (push_updating ?pipe - pipe)
  (pop_updating ?pipe - pipe)
)

;; push_start action
;; moves a batch_atom from a tankage to a pipeline segment
;; the push_start action moves the pipeline segment contents towards
;; the ``to_area'' defined in the ``connect'' predicate
;; first part __ initialise the push and turn control
;; over to contents update operators

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
  )
  :precondition
   (and

   ;; normal planning mode
   (normal ?pipe)
   ;; binds :vars section
   (first ?first_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)
   ;; inserted batch must be in 'from_area'
   (on ?batch_atom_in ?from_area)
   ;; action is applicable only in non_unitary pipeline segments
   (not_unitary ?pipe)
   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?first_batch_atom ?product_first_batch)
   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_first_batch)

 )
  :effect
   (and 
     ;; switch into correct update mode for this pipe
     (push_updating ?pipe)
     (not (normal ?pipe))
     ;; the inserted unitary batch will be the pipeline segment
     ;; new first batch
     (first ?batch_atom_in ?pipe)
     (not (first ?first_batch_atom ?pipe))

     ;; updates the follow and last relationship to the new
     ;; pipeline segment configuration
     (follow ?first_batch_atom ?batch_atom_in)
     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?from_area))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
)
)
;; push_end action
;; moves a batch_atom from a tankage to a pipeline segment
;; the push_end action moves the pipeline segment contents towards
;; the ``to_area'' defined in the ``connect'' predicate
;; second part __ when start of pipe has been done, care about the
;; end of the pipe

(:action push_end
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?from_area - area
    ?to_area - area
    ?last_batch_atom - batch_atom
    ?next_last_batch_atom - batch_atom
  )
  :precondition
   (and

   ;; are we in the correct mode?
   (push_updating ?pipe)
   ;; binds :vars section
   (last ?last_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)
   ;; action is applicable only in non_unitary pipeline segments
   (not_unitary ?pipe)
   (follow ?last_batch_atom ?next_last_batch_atom)

 )
  :effect
   (and 
     ;; back to normal mode
     (not (push_updating ?pipe))
     (normal ?pipe)

     ;; updates the follow and last relationship to the new
     ;; pipeline segment configuration
     (not (follow ?last_batch_atom ?next_last_batch_atom))
     (last ?next_last_batch_atom ?pipe)
     ;; previous last batch is not last anymore
     (not (last ?last_batch_atom ?pipe))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
     (on ?last_batch_atom ?to_area)
)
)
;; pop_start action
;; moves a batch_atom from a tankage to a pipeline segment
;; the pop_start action moves the pipeline segment contents towards
;; the ``from_area'' defined in the ``connect'' predicate
;; first part __ initialise the pop and turn control
;; over to contents update operators

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
  )
  :precondition
   (and

   ;; normal planning mode
   (normal ?pipe)
   ;; binds :vars section
   (last ?last_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)
   ;; inserted batch must be in 'to_area'
   (on ?batch_atom_in ?to_area)
   ;; action is applicable only in non_unitary pipeline segments
   (not_unitary ?pipe)
   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?last_batch_atom ?product_last_batch)
   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_last_batch)

 )
  :effect
   (and 
     ;; switch into correct update mode for this pipe
     (pop_updating ?pipe)
     (not (normal ?pipe))
     ;; the inserted unitary batch will be the pipeline segment
     ;; new last batch
     (last ?batch_atom_in ?pipe)
     (not (last ?last_batch_atom ?pipe))

     ;; updates the follow and first relationship to the new
     ;; pipeline segment configuration
     (follow ?batch_atom_in ?last_batch_atom)
     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?to_area))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
)
)
;; pop_end action
;; moves a batch_atom from a tankage to a pipeline segment
;; the pop_end action moves the pipeline segment contents towards
;; the ``from_area'' defined in the ``connect'' predicate
;; second part __ when start of pipe has been done, care about the
;; end of the pipe

(:action pop_end
  :parameters(
    ;; pipeline segment that will be moved
    ?pipe - pipe
    ;; unitary batch that will be inserted into the pipeline
    ;; segment
    ?from_area - area
    ?to_area - area
    ?first_batch_atom - batch_atom
    ?next_first_batch_atom - batch_atom
  )
  :precondition
   (and

   ;; are we in the correct mode?
   (pop_updating ?pipe)
   ;; binds :vars section
   (first ?first_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)
   ;; action is applicable only in non_unitary pipeline segments
   (not_unitary ?pipe)
   (follow ?next_first_batch_atom ?first_batch_atom)

 )
  :effect
   (and 
     ;; back to normal mode
     (not (pop_updating ?pipe))
     (normal ?pipe)

     ;; updates the follow and first relationship to the new
     ;; pipeline segment configuration
     (not (follow ?next_first_batch_atom ?first_batch_atom))
     (first ?next_first_batch_atom ?pipe)
     ;; previous first batch is not first anymore
     (not (first ?first_batch_atom ?pipe))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
     (on ?first_batch_atom ?from_area)
)
)
;; push_unitarypipe action
;; moves a batch_atom from a tankage to a pipeline segment
;; the push_unitarypipe action moves the pipeline segment contents towards
;; the ``to_area'' defined in the ``connect'' predicate
;; first part __ initialise the push and turn control
;; over to contents update operators

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

 )
  :effect
   (and 
     ;; the inserted unitary batch will be the pipeline segment
     ;; new first batch
     (first ?batch_atom_in ?pipe)
     (not (first ?first_batch_atom ?pipe))

     ;; updates the follow and last relationship to the new
     ;; pipeline segment configuration
     (last ?batch_atom_in ?pipe)
     (not (last ?first_batch_atom ?pipe))
     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?from_area))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
     (on ?first_batch_atom ?to_area)
)
)
;; pop_unitarypipe action
;; moves a batch_atom from a tankage to a pipeline segment
;; the pop_unitarypipe action moves the pipeline segment contents towards
;; the ``from_area'' defined in the ``connect'' predicate
;; first part __ initialise the pop and turn control
;; over to contents update operators

(:action pop_unitarypipe
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
  )
  :precondition
   (and

   ;; binds :vars section
   (last ?last_batch_atom ?pipe)
   (connect ?from_area ?to_area ?pipe)
   ;; inserted batch must be in 'to_area'
   (on ?batch_atom_in ?to_area)
   ;; action is applicable only in unitary pipeline segments
   (unitary ?pipe)
   ;; bind batch_atom products
   (is_product ?batch_atom_in ?product_batch_atom_in)
   (is_product ?last_batch_atom ?product_last_batch)
   ;; interface restriction
   (may_interface ?product_batch_atom_in ?product_last_batch)

 )
  :effect
   (and 
     ;; the inserted unitary batch will be the pipeline segment
     ;; new last batch
     (last ?batch_atom_in ?pipe)
     (not (last ?last_batch_atom ?pipe))

     ;; updates the follow and first relationship to the new
     ;; pipeline segment configuration
     (first ?batch_atom_in ?pipe)
     (not (first ?last_batch_atom ?pipe))
     ;; inserted batch_atom is removed from area
     (not (on ?batch_atom_in ?to_area))
    ;; batch_atom removed from pipeline segment is inserted
    ;; into the destination area
     (on ?last_batch_atom ?from_area)
)
)
)
