(define (problem blocks_8_0)
(:domain blocks)
(:objects h g f e c b d a - block)
(:init (clear a) (clear d) (clear b) (clear c) (ontable e) (ontable f)
 (ontable b) (ontable c) (on a g) (on g e) (on d h) (on h f) )
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)