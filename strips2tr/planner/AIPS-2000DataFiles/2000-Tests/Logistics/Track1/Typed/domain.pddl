;; logistics domain typed version.
;;

(define (domain logistics)
  (:requirements :strips :typing) 
  (:types truck
          airplane - vehicle
          package
          vehicle - physobj
          airport
          location - place
          city
          place 
          physobj - object)
  
  (:predicates 	(in_city ?loc - place ?city - city)
		(at ?obj - physobj ?loc - place)
		(in ?pkg - package ?veh - vehicle))
  
(:action load_truck
   :parameters    (?pkg - package ?truck - truck ?loc - place)
   :precondition  (and (at ?truck ?loc) (at ?pkg ?loc))
   :effect        (and (not (at ?pkg ?loc)) (in ?pkg ?truck)))

(:action load_airplane
  :parameters   (?pkg - package ?airplane - airplane ?loc - place)
  :precondition (and (at ?pkg ?loc) (at ?airplane ?loc))
  :effect       (and (not (at ?pkg ?loc)) (in ?pkg ?airplane)))

(:action unload_truck
  :parameters   (?pkg - package ?truck - truck ?loc - place)
  :precondition (and (at ?truck ?loc) (in ?pkg ?truck))
  :effect       (and (not (in ?pkg ?truck)) (at ?pkg ?loc)))

(:action unload_airplane
  :parameters    (?pkg - package ?airplane - airplane ?loc - place)
  :precondition  (and (in ?pkg ?airplane) (at ?airplane ?loc))
  :effect        (and (not (in ?pkg ?airplane)) (at ?pkg ?loc)))

(:action drive_truck
  :parameters (?truck - truck ?loc_from - place ?loc_to - place ?city - city)
  :precondition
   (and (at ?truck ?loc_from) (in_city ?loc_from ?city) (in_city ?loc_to ?city))
  :effect
   (and (not (at ?truck ?loc_from)) (at ?truck ?loc_to)))

(:action fly_airplane
  :parameters (?airplane - airplane ?loc_from - airport ?loc_to - airport)
  :precondition
   (at ?airplane ?loc_from)
  :effect
   (and (not (at ?airplane ?loc_from)) (at ?airplane ?loc_to)))
)
