(define (problem blocks_12_1)
(:domain blocks)
(:objects e l a b f i h g d j k c - block)
(:init (clear c) (clear k) (ontable j) (ontable d) (on c g) (on g h) (on h i)
 (on i f) (on f b) (on b a) (on a l) (on l e) (on e j) (on k d) (handempty))
(:goal (and (on j c) (on c e) (on e k) (on k h) (on h a) (on a f) (on f l)
            (on l g) (on g b) (on b i) (on i d)))
)