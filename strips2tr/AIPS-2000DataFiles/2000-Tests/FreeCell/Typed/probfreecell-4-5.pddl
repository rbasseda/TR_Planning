(define (problem freecell_4_5)
(:domain freecell)
(:objects
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
    (value c2 n2)
    (value c3 n3)
    (value c4 n4)
    (value ca n1)
    (value d0 n0)
    (value d2 n2)
    (value d3 n3)
    (value d4 n4)
    (value da n1)
    (value h0 n0)
    (value h2 n2)
    (value h3 n3)
    (value h4 n4)
    (value ha n1)
    (value s0 n0)
    (value s2 n2)
    (value s3 n3)
    (value s4 n4)
    (value sa n1)
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
    (suit c2 c)
    (suit c3 c)
    (suit c4 c)
    (suit ca c)
    (suit d0 d)
    (suit d2 d)
    (suit d3 d)
    (suit d4 d)
    (suit da d)
    (suit h0 h)
    (suit h2 h)
    (suit h3 h)
    (suit h4 h)
    (suit ha h)
    (suit s0 s)
    (suit s2 s)
    (suit s3 s)
    (suit s4 s)
    (suit sa s)
    (canstack c2 d3)
    (canstack c2 h3)
    (canstack c3 d4)
    (canstack c3 h4)
    (canstack ca d2)
    (canstack ca h2)
    (canstack d2 c3)
    (canstack d2 s3)
    (canstack d3 c4)
    (canstack d3 s4)
    (canstack da c2)
    (canstack da s2)
    (canstack h2 c3)
    (canstack h2 s3)
    (canstack h3 c4)
    (canstack h3 s4)
    (canstack ha c2)
    (canstack ha s2)
    (canstack s2 d3)
    (canstack s2 h3)
    (canstack s3 d4)
    (canstack s3 h4)
    (canstack sa d2)
    (canstack sa h2)
    (home c0)
    (home d0)
    (home h0)
    (home s0)
    (cellspace n4)
    (colspace n0)
    (on c3 s2)
    (on ca s4)
    (on d4 c4)
    (on da sa)
    (on h2 s3)
    (on h4 c3)
    (on s3 ha)
    (on s4 d3)
    (clear c2)
    (clear ca)
    (clear d2)
    (clear d4)
    (clear da)
    (clear h2)
    (clear h3)
    (clear h4)
    (bottomcol c2)
    (bottomcol c4)
    (bottomcol d2)
    (bottomcol d3)
    (bottomcol h3)
    (bottomcol ha)
    (bottomcol s2)
    (bottomcol sa)
)
(:goal (and
    (home c4)
    (home d4)
    (home h4)
    (home s4)
)))
