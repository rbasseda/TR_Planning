(define (domain mystery-prime-typed)
   (:requirements :typing  :quantified-preconditions :conditional-effects)
   (:types province planet food emotion - object
           pleasure pain - emotion)
   (:predicates
       (eats ?n1 ?n2 - food)
       (craves ?v - emotion ?n - food)
       (fears ?c - pain ?v - pleasure)
       (locale ?n - food ?a - province)
       (harmony ?v - emotion ?s - planet)
       (attacks ?i ?j - province)
       (orbits ?i ?j - planet))

   (:action overcome
       :parameters (?c - pain ?v - pleasure)
       :vars (?n - food ?s1 ?s2 - planet)
       :precondition (and (craves ?c ?n)
                          (craves ?v ?n)
                          (harmony ?v ?s2)
                          (orbits ?s1 ?s2))
       :effect (and (not (craves ?c ?n))
                    (fears ?c ?v)
                    (not (harmony ?v ?s2))
                    (harmony ?v ?s1)))
   (:action feast
       :parameters (?v - pleasure ?n1 ?n2 - food)
       :vars (?l1 ?l2 - province)
       :precondition (and (craves ?v ?n1)
                          (eats ?n1 ?n2)
                          (locale ?n1 ?l2)
                          (attacks ?l1 ?l2))
       :effect (and (not (craves ?v ?n1))
                    (craves ?v ?n2)
                    (not (locale ?n1 ?l2))
                    (locale ?n1 ?l1)))
   (:action succumb
       :parameters (?c - pain ?v - pleasure)
       :vars (?n - food ?s1 ?s2 - planet)
       :precondition (and (fears ?c ?v)
                          (craves ?v ?n)
                          (harmony ?v ?s1)
                          (orbits ?s1 ?s2))
       :effect (and (not (fears ?c ?v))
                    (craves ?c ?n)
                    (not (harmony ?v ?s1))
                    (harmony ?v ?s2)))
   (:action drink
      :parameters (?n1 ?n2 - food)
      :vars (?l11 ?l12 ?l13 ?l21 ?l22 - province)
      :precondition (and (locale ?n1 ?l11)
                         (attacks ?l12 ?l11)
                         (attacks ?l13 ?l12)
                         (locale ?n2 ?l21)
                         (attacks ?l21 ?l22))
      :effect (and (not (locale ?n1 ?l11))
                   (locale ?n1 ?l12)
                   (not (locale ?n2 ?l21))
                   (locale ?n2 ?l22))))