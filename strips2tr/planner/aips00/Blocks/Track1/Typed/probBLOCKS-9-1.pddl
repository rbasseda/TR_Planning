(define (problem blocks_9_1)
(:domain blocks)
(:objects h g i c d b e a f - block)
(:init (clear f) (ontable a) (on f e) (on e b) (on b d) (on d c) (on c i)
 (on i g) (on g h) (on h a) (handempty))
(:goal (and (on d i) (on i a) (on a b) (on b h) (on h g) (on g f) (on f e)
            (on e c)))
)