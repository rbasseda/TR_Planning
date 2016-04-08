(define (problem logistics_9_1)
(:domain logistics)
(:objects
  apn1 - airplane
  apt3 apt2 apt1 - airport
  pos3 pos2 pos1 - location
  cit3 cit2 cit1 - city
  tru3 tru2 tru1 - truck
  obj33 obj32 obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package)

(:init
 (at apn1 apt1) (at tru1 pos1) (at obj11 pos1) (at obj12 pos1) (at obj13 pos1)
 (at tru2 pos2) (at obj21 pos2) (at obj22 pos2) (at obj23 pos2) (at tru3 pos3)
 (at obj31 pos3) (at obj32 pos3) (at obj33 pos3) (in_city pos1 cit1)
 (in_city apt1 cit1) (in_city pos2 cit2) (in_city apt2 cit2) (in_city pos3 cit3)
 (in_city apt3 cit3))

(:goal (and (at obj11 apt2) (at obj31 pos3) (at obj13 pos3) (at obj23 apt3)
            (at obj33 apt3) (at obj22 pos2) (at obj32 apt3) (at obj21 pos2)
            (at obj12 pos3)))
)

