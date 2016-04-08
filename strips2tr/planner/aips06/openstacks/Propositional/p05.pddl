
(define (problem os_sequencedstrips_small_8)
        (:domain openstacks_sequencedstrips)
        (:objects n0 n1 n2 n3 n4 n5 - count o1 o2 o3 o4 o5 - order p1 p2 p3 p4
         p5 - product)
        (:init (machine_available) (next_count n0 n1) (next_count n1 n2)
         (next_count n2 n3) (next_count n3 n4) (next_count n4 n5)
         (stacks_avail n0) (waiting o1) (includes o1 p1) (includes o1 p2)
         (waiting o2) (includes o2 p3) (includes o2 p4) (waiting o3)
         (includes o3 p3) (includes o3 p5) (waiting o4) (includes o4 p2)
         (includes o4 p5) (waiting o5) (includes o5 p1) (includes o5 p4))
        (:goal
         (and (shipped o1)
              (shipped o2)
              (shipped o3)
              (shipped o4)
              (shipped o5))))