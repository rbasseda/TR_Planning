


(define (problem mixed_f2_p1_u0_v0_g0_a0_n0_A0_B0_N0_F0_r1)
   (:domain elevator)
   (:objects p0 - passenger
             f0 f1 - floor)


(:init
(above f0 f1)



(origin p0 f0)
(destin p0 f1)






(lift_at f0)
)


(:goal (and 
(served p0)
))
)


