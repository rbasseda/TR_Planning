(define (problem blocks_13_0)
(:domain blocks)
(:objects l h e a j c d f g k m i b - block)
(:init (clear b) (clear i) (clear m) (ontable k) (ontable g) (ontable m)
 (on b f) (on f d) (on d c) (on c j) (on j a) (on a e) (on e h) (on h l)
 (on l k) (on i g) (handempty))
(:goal (and (on g i) (on i c) (on c d) (on d f) (on f a) (on a m) (on m h)
            (on h e) (on e l) (on l j) (on j b) (on b k)))
)