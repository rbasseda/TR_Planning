(define (problem logistics_15_0)
(:domain logistics)
(:objects apn2 apn1 - airplane
  apt5 apt4 apt3 apt2 apt1 - airport
  pos5 pos4 pos3 pos2 pos1 - location 
  cit5 cit4 cit3 cit2 cit1 - city
  tru5 tru4 tru3 tru2 tru1 - truck
  obj53 obj52 obj51 obj43 obj42 obj41 obj33 obj32
  obj31 obj23 obj22 obj21 obj13 obj12 obj11 - package)

(:init (at apn1 apt5) (at apn2 apt2) (at tru1 pos1) (at obj11 pos1)
 (at obj12 pos1) (at obj13 pos1) (at tru2 pos2) (at obj21 pos2) (at obj22 pos2)
 (at obj23 pos2) (at tru3 pos3) (at obj31 pos3) (at obj32 pos3) (at obj33 pos3)
 (at tru4 pos4) (at obj41 pos4) (at obj42 pos4) (at obj43 pos4) (at tru5 pos5)
 (at obj51 pos5) (at obj52 pos5) (at obj53 pos5) (in_city pos1 cit1)
 (in_city apt1 cit1) (in_city pos2 cit2) (in_city apt2 cit2) (in_city pos3 cit3)
 (in_city apt3 cit3) (in_city pos4 cit4) (in_city apt4 cit4) (in_city pos5 cit5)
 (in_city apt5 cit5))

(:goal (and (at obj22 apt4) (at obj31 apt4) (at obj43 pos5) (at obj13 apt1)
            (at obj23 pos4) (at obj12 pos2) (at obj51 pos3) (at obj32 pos3)
            (at obj11 apt3) (at obj42 apt2) (at obj52 apt4) (at obj33 apt3)
            (at obj21 pos3) (at obj53 apt2) (at obj41 apt1)))
)