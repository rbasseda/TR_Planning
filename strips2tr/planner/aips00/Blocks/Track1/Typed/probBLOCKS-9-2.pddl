(define (problem blocks_9_2)
(:domain blocks)
(:objects b i c e d a g f h - block)
(:init (clear h) (clear f) (ontable g) (ontable f) (on h a) (on a d) (on d e)
 (on e c) (on c i) (on i b) (on b g) (handempty))
(:goal (and (on f g) (on g h) (on h d) (on d i) (on i e) (on e b) (on b c)
            (on c a)))
)
