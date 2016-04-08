


(define (problem mixed_f4_p2_u0_v0_g0_a0_n0_A0_B0_N0_F0_r4)
   (:domain elevator)
   (:objects p0 p1 - passenger
             f0 f1 f2 f3 - floor)


(:init
(above f0 f1)
(above f0 f2)
(above f0 f3)

(above f1 f2)
(above f1 f3)

(above f2 f3)



(origin p0 f3)
(destin p0 f2)

(origin p1 f2)
(destin p1 f0)






(lift_at f0)
)


(:goal (and 
(served p0)
(served p1)
))
)


