(define (problem freecell_13_4)
(:domain freecell)
(:objects
    sk
    hk
    dk
    ck
    sq
    hq
    dq
    cq
    sj
    hj
    dj
    cj
    s10
    h10
    d10
    c10
    s9
    h9
    d9
    c9
    s8
    h8
    d8
    c8
    s7
    h7
    d7
    c7
    s6
    h6
    d6
    c6
    s5
    h5
    d5
    c5
    s4
    h4
    d4
    c4
    s3
    h3
    d3
    c3
    sa
    s2
    s0
    ha
    h2
    h0
    da
    d2
    d0
    ca
    c2
    c0
 - card
    n8
    n7
    n6
    n5
    n4
    n3
    n13
    n12
    n11
    n9
    n10
    n1
    n2
    n0
 - num
    s
    h
    d
    c
 - suit
)
(:init
    (value c0 n0)
    (value c10 n10)
    (value c2 n2)
    (value c3 n3)
    (value c4 n4)
    (value c5 n5)
    (value c6 n6)
    (value c7 n7)
    (value c8 n8)
    (value c9 n9)
    (value ca n1)
    (value cj n11)
    (value ck n13)
    (value cq n12)
    (value d0 n0)
    (value d10 n10)
    (value d2 n2)
    (value d3 n3)
    (value d4 n4)
    (value d5 n5)
    (value d6 n6)
    (value d7 n7)
    (value d8 n8)
    (value d9 n9)
    (value da n1)
    (value dj n11)
    (value dk n13)
    (value dq n12)
    (value h0 n0)
    (value h10 n10)
    (value h2 n2)
    (value h3 n3)
    (value h4 n4)
    (value h5 n5)
    (value h6 n6)
    (value h7 n7)
    (value h8 n8)
    (value h9 n9)
    (value ha n1)
    (value hj n11)
    (value hk n13)
    (value hq n12)
    (value s0 n0)
    (value s10 n10)
    (value s2 n2)
    (value s3 n3)
    (value s4 n4)
    (value s5 n5)
    (value s6 n6)
    (value s7 n7)
    (value s8 n8)
    (value s9 n9)
    (value sa n1)
    (value sj n11)
    (value sk n13)
    (value sq n12)
    (successor n1 n0)
    (successor n10 n9)
    (successor n11 n10)
    (successor n12 n11)
    (successor n13 n12)
    (successor n2 n1)
    (successor n3 n2)
    (successor n4 n3)
    (successor n5 n4)
    (successor n6 n5)
    (successor n7 n6)
    (successor n8 n7)
    (successor n9 n8)
    (suit c0 c)
    (suit c10 c)
    (suit c2 c)
    (suit c3 c)
    (suit c4 c)
    (suit c5 c)
    (suit c6 c)
    (suit c7 c)
    (suit c8 c)
    (suit c9 c)
    (suit ca c)
    (suit cj c)
    (suit ck c)
    (suit cq c)
    (suit d0 d)
    (suit d10 d)
    (suit d2 d)
    (suit d3 d)
    (suit d4 d)
    (suit d5 d)
    (suit d6 d)
    (suit d7 d)
    (suit d8 d)
    (suit d9 d)
    (suit da d)
    (suit dj d)
    (suit dk d)
    (suit dq d)
    (suit h0 h)
    (suit h10 h)
    (suit h2 h)
    (suit h3 h)
    (suit h4 h)
    (suit h5 h)
    (suit h6 h)
    (suit h7 h)
    (suit h8 h)
    (suit h9 h)
    (suit ha h)
    (suit hj h)
    (suit hk h)
    (suit hq h)
    (suit s0 s)
    (suit s10 s)
    (suit s2 s)
    (suit s3 s)
    (suit s4 s)
    (suit s5 s)
    (suit s6 s)
    (suit s7 s)
    (suit s8 s)
    (suit s9 s)
    (suit sa s)
    (suit sj s)
    (suit sk s)
    (suit sq s)
    (canstack c10 dj)
    (canstack c10 hj)
    (canstack c2 d3)
    (canstack c2 h3)
    (canstack c3 d4)
    (canstack c3 h4)
    (canstack c4 d5)
    (canstack c4 h5)
    (canstack c5 d6)
    (canstack c5 h6)
    (canstack c6 d7)
    (canstack c6 h7)
    (canstack c7 d8)
    (canstack c7 h8)
    (canstack c8 d9)
    (canstack c8 h9)
    (canstack c9 d10)
    (canstack c9 h10)
    (canstack ca d2)
    (canstack ca h2)
    (canstack cj dq)
    (canstack cj hq)
    (canstack cq dk)
    (canstack cq hk)
    (canstack d10 cj)
    (canstack d10 sj)
    (canstack d2 c3)
    (canstack d2 s3)
    (canstack d3 c4)
    (canstack d3 s4)
    (canstack d4 c5)
    (canstack d4 s5)
    (canstack d5 c6)
    (canstack d5 s6)
    (canstack d6 c7)
    (canstack d6 s7)
    (canstack d7 c8)
    (canstack d7 s8)
    (canstack d8 c9)
    (canstack d8 s9)
    (canstack d9 c10)
    (canstack d9 s10)
    (canstack da c2)
    (canstack da s2)
    (canstack dj cq)
    (canstack dj sq)
    (canstack dq ck)
    (canstack dq sk)
    (canstack h10 cj)
    (canstack h10 sj)
    (canstack h2 c3)
    (canstack h2 s3)
    (canstack h3 c4)
    (canstack h3 s4)
    (canstack h4 c5)
    (canstack h4 s5)
    (canstack h5 c6)
    (canstack h5 s6)
    (canstack h6 c7)
    (canstack h6 s7)
    (canstack h7 c8)
    (canstack h7 s8)
    (canstack h8 c9)
    (canstack h8 s9)
    (canstack h9 c10)
    (canstack h9 s10)
    (canstack ha c2)
    (canstack ha s2)
    (canstack hj cq)
    (canstack hj sq)
    (canstack hq ck)
    (canstack hq sk)
    (canstack s10 dj)
    (canstack s10 hj)
    (canstack s2 d3)
    (canstack s2 h3)
    (canstack s3 d4)
    (canstack s3 h4)
    (canstack s4 d5)
    (canstack s4 h5)
    (canstack s5 d6)
    (canstack s5 h6)
    (canstack s6 d7)
    (canstack s6 h7)
    (canstack s7 d8)
    (canstack s7 h8)
    (canstack s8 d9)
    (canstack s8 h9)
    (canstack s9 d10)
    (canstack s9 h10)
    (canstack sa d2)
    (canstack sa h2)
    (canstack sj dq)
    (canstack sj hq)
    (canstack sq dk)
    (canstack sq hk)
    (home c0)
    (home d0)
    (home h0)
    (home s0)
    (cellspace n4)
    (colspace n0)
    (on c10 s9)
    (on c2 sk)
    (on c3 s7)
    (on c4 s2)
    (on c5 s3)
    (on c6 s6)
    (on c7 sa)
    (on c8 sj)
    (on c9 cj)
    (on ca cq)
    (on cj c10)
    (on ck c7)
    (on d10 c3)
    (on d2 h3)
    (on d4 c8)
    (on d6 c2)
    (on d7 dq)
    (on d8 h4)
    (on d9 dk)
    (on da d2)
    (on dj d10)
    (on dq h10)
    (on h10 s5)
    (on h2 c4)
    (on h3 h8)
    (on h4 ha)
    (on h5 hq)
    (on h6 h2)
    (on h7 d8)
    (on h8 d4)
    (on h9 hj)
    (on ha d5)
    (on hj h5)
    (on hk d3)
    (on hq c6)
    (on s10 ca)
    (on s2 d9)
    (on s4 ck)
    (on s5 s10)
    (on s7 c5)
    (on s8 h7)
    (on s9 d6)
    (on sa sq)
    (on sq hk)
    (clear c9)
    (clear d7)
    (clear da)
    (clear dj)
    (clear h6)
    (clear h9)
    (clear s4)
    (clear s8)
    (bottomcol cq)
    (bottomcol d3)
    (bottomcol d5)
    (bottomcol dk)
    (bottomcol s3)
    (bottomcol s6)
    (bottomcol sj)
    (bottomcol sk)
)
(:goal (and
    (home ck)
    (home dk)
    (home hk)
    (home sk)
)))
