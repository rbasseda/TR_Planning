(define (problem blocks_11_1)
(:domain blocks)
(:objects b c e a h k i g d f j - block)
(:init (clear j) (clear f) (clear d) (clear g) (ontable i) (ontable k)
 (ontable h) (ontable a) (on j i) (on f e) (on e k) (on d c) (on c h) (on g b)
 (on b a) )
(:goal (and (on b d) (on d j) (on j k) (on k h) (on h a) (on a c) (on c f)
            (on f g) (on g i) (on i e)))
)