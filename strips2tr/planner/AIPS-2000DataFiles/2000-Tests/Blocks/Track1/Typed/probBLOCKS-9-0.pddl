(define (problem blocks_9_0)
(:domain blocks)
(:objects h d i a e g b f c - block)
(:init (clear c) (clear f) (ontable c) (ontable b) (on f g) (on g e) (on e a)
 (on a i) (on i d) (on d h) (on h b) )
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)