(define (problem schedule-36-1)
(:domain schedule)
(:objects
    M1
    L1
    K1
    J1
    I1
    H1
    G1
    F1
    E1
    D1
    C1
    B1
    A1
    Z0
    W0
    V0
    U0
    S0
    R0
    P0
    Q0
    O0
    N0
    M0
    L0
    K0
    J0
    I0
    H0
    G0
    F0
    E0
    D0
    C0
    CIRCULAR
    TWO
    THREE
    BLUE
    YELLOW
    BACK
    RED
    B0
    FRONT
    ONE
    BLACK
    OBLONG
    A0
)
(:init
    (SHAPE A0 CYLINDRICAL)
    (SURFACE-CONDITION A0 POLISHED)
    (PAINTED A0 BLACK)
    (HAS-HOLE A0 THREE BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED B0 BLUE)
    (HAS-HOLE B0 THREE FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 OBLONG)
    (SURFACE-CONDITION C0 POLISHED)
    (PAINTED C0 YELLOW)
    (HAS-HOLE C0 ONE BACK)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CIRCULAR)
    (SURFACE-CONDITION D0 ROUGH)
    (PAINTED D0 RED)
    (HAS-HOLE D0 ONE BACK)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CIRCULAR)
    (SURFACE-CONDITION E0 ROUGH)
    (PAINTED E0 BLUE)
    (HAS-HOLE E0 THREE BACK)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CIRCULAR)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 BLUE)
    (HAS-HOLE F0 THREE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 OBLONG)
    (SURFACE-CONDITION G0 ROUGH)
    (PAINTED G0 BLACK)
    (HAS-HOLE G0 TWO BACK)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 OBLONG)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 YELLOW)
    (HAS-HOLE H0 THREE BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 OBLONG)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 BLUE)
    (HAS-HOLE I0 TWO FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CYLINDRICAL)
    (SURFACE-CONDITION J0 POLISHED)
    (PAINTED J0 YELLOW)
    (HAS-HOLE J0 ONE FRONT)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED K0 RED)
    (HAS-HOLE K0 ONE FRONT)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 OBLONG)
    (SURFACE-CONDITION L0 SMOOTH)
    (PAINTED L0 BLACK)
    (HAS-HOLE L0 ONE BACK)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CYLINDRICAL)
    (SURFACE-CONDITION M0 ROUGH)
    (PAINTED M0 BLUE)
    (HAS-HOLE M0 ONE BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CYLINDRICAL)
    (SURFACE-CONDITION N0 POLISHED)
    (PAINTED N0 YELLOW)
    (HAS-HOLE N0 TWO FRONT)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 CYLINDRICAL)
    (SURFACE-CONDITION O0 ROUGH)
    (PAINTED O0 BLUE)
    (HAS-HOLE O0 TWO BACK)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 SMOOTH)
    (PAINTED Q0 YELLOW)
    (HAS-HOLE Q0 TWO FRONT)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 OBLONG)
    (SURFACE-CONDITION P0 POLISHED)
    (PAINTED P0 RED)
    (HAS-HOLE P0 ONE FRONT)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CYLINDRICAL)
    (SURFACE-CONDITION R0 POLISHED)
    (PAINTED R0 BLACK)
    (HAS-HOLE R0 THREE FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CYLINDRICAL)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 BLUE)
    (HAS-HOLE S0 TWO BACK)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 CYLINDRICAL)
    (SURFACE-CONDITION U0 ROUGH)
    (PAINTED U0 BLACK)
    (HAS-HOLE U0 TWO BACK)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CIRCULAR)
    (SURFACE-CONDITION V0 POLISHED)
    (PAINTED V0 BLACK)
    (HAS-HOLE V0 TWO FRONT)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 CIRCULAR)
    (SURFACE-CONDITION W0 POLISHED)
    (PAINTED W0 YELLOW)
    (HAS-HOLE W0 TWO BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 CIRCULAR)
    (SURFACE-CONDITION Z0 ROUGH)
    (PAINTED Z0 BLUE)
    (HAS-HOLE Z0 ONE BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 CIRCULAR)
    (SURFACE-CONDITION A1 ROUGH)
    (PAINTED A1 BLACK)
    (HAS-HOLE A1 ONE FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 CYLINDRICAL)
    (SURFACE-CONDITION B1 POLISHED)
    (PAINTED B1 YELLOW)
    (HAS-HOLE B1 ONE FRONT)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 OBLONG)
    (SURFACE-CONDITION C1 ROUGH)
    (PAINTED C1 RED)
    (HAS-HOLE C1 ONE FRONT)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CIRCULAR)
    (SURFACE-CONDITION D1 POLISHED)
    (PAINTED D1 RED)
    (HAS-HOLE D1 THREE BACK)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CYLINDRICAL)
    (SURFACE-CONDITION E1 SMOOTH)
    (PAINTED E1 BLACK)
    (HAS-HOLE E1 TWO BACK)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 OBLONG)
    (SURFACE-CONDITION F1 SMOOTH)
    (PAINTED F1 YELLOW)
    (HAS-HOLE F1 THREE FRONT)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CIRCULAR)
    (SURFACE-CONDITION G1 POLISHED)
    (PAINTED G1 BLUE)
    (HAS-HOLE G1 THREE FRONT)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 CYLINDRICAL)
    (SURFACE-CONDITION H1 ROUGH)
    (PAINTED H1 BLACK)
    (HAS-HOLE H1 THREE FRONT)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 CIRCULAR)
    (SURFACE-CONDITION I1 SMOOTH)
    (PAINTED I1 BLUE)
    (HAS-HOLE I1 THREE FRONT)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 CIRCULAR)
    (SURFACE-CONDITION J1 ROUGH)
    (PAINTED J1 YELLOW)
    (HAS-HOLE J1 TWO BACK)
    (TEMPERATURE J1 COLD)
    (SHAPE K1 CIRCULAR)
    (SURFACE-CONDITION K1 ROUGH)
    (PAINTED K1 BLUE)
    (HAS-HOLE K1 ONE FRONT)
    (TEMPERATURE K1 COLD)
    (SHAPE L1 OBLONG)
    (SURFACE-CONDITION L1 ROUGH)
    (PAINTED L1 BLACK)
    (HAS-HOLE L1 TWO BACK)
    (TEMPERATURE L1 COLD)
    (SHAPE M1 OBLONG)
    (SURFACE-CONDITION M1 SMOOTH)
    (PAINTED M1 BLUE)
    (HAS-HOLE M1 THREE FRONT)
    (TEMPERATURE M1 COLD)
    (CAN-ORIENT DRILL-PRESS BACK)
    (CAN-ORIENT PUNCH BACK)
    (CAN-ORIENT DRILL-PRESS FRONT)
    (CAN-ORIENT PUNCH FRONT)
    (HAS-PAINT IMMERSION-PAINTER YELLOW)
    (HAS-PAINT SPRAY-PAINTER YELLOW)
    (HAS-PAINT IMMERSION-PAINTER BLUE)
    (HAS-PAINT SPRAY-PAINTER BLUE)
    (HAS-PAINT IMMERSION-PAINTER BLACK)
    (HAS-PAINT SPRAY-PAINTER BLACK)
    (HAS-PAINT IMMERSION-PAINTER RED)
    (HAS-PAINT SPRAY-PAINTER RED)
    (HAS-BIT DRILL-PRESS THREE)
    (HAS-BIT PUNCH THREE)
    (HAS-BIT DRILL-PRESS TWO)
    (HAS-BIT PUNCH TWO)
    (HAS-BIT DRILL-PRESS ONE)
    (HAS-BIT PUNCH ONE)
    (PART M1)
    (PART L1)
    (PART K1)
    (PART J1)
    (PART I1)
    (PART H1)
    (PART G1)
    (PART F1)
    (PART E1)
    (PART D1)
    (PART C1)
    (PART B1)
    (PART A1)
    (PART Z0)
    (PART W0)
    (PART V0)
    (PART U0)
    (PART S0)
    (PART R0)
    (PART P0)
    (PART Q0)
    (PART O0)
    (PART N0)
    (PART M0)
    (PART L0)
    (PART K0)
    (PART J0)
    (PART I0)
    (PART H0)
    (PART G0)
    (PART F0)
    (PART E0)
    (PART D0)
    (PART C0)
    (PART B0)
    (PART A0)
)
(:goal (and
    (SHAPE F1 CYLINDRICAL)
    (PAINTED G0 BLUE)
    (SURFACE-CONDITION M1 POLISHED)
    (SURFACE-CONDITION A1 POLISHED)
    (SURFACE-CONDITION P0 SMOOTH)
    (SHAPE F0 CYLINDRICAL)
    (SURFACE-CONDITION G1 ROUGH)
    (SURFACE-CONDITION I1 ROUGH)
    (SURFACE-CONDITION Q0 POLISHED)
    (PAINTED G1 YELLOW)
    (PAINTED M1 BLACK)
    (SURFACE-CONDITION H1 POLISHED)
    (SHAPE V0 CYLINDRICAL)
    (SURFACE-CONDITION D1 ROUGH)
    (SURFACE-CONDITION S0 POLISHED)
    (SURFACE-CONDITION O0 SMOOTH)
    (PAINTED Z0 YELLOW)
    (SHAPE J1 CYLINDRICAL)
    (PAINTED D0 BLUE)
    (PAINTED N0 BLACK)
    (SHAPE K1 CYLINDRICAL)
    (PAINTED I0 BLACK)
    (SURFACE-CONDITION B1 SMOOTH)
    (PAINTED A1 BLUE)
    (SURFACE-CONDITION D0 POLISHED)
    (PAINTED O0 YELLOW)
    (PAINTED K0 BLACK)
    (SHAPE I1 CYLINDRICAL)
    (PAINTED H1 RED)
    (PAINTED S0 BLACK)
    (SURFACE-CONDITION A0 ROUGH)
    (PAINTED K1 RED)
    (SURFACE-CONDITION L0 POLISHED)
    (PAINTED J1 BLACK)
    (SHAPE Q0 CYLINDRICAL)
    (SHAPE W0 CYLINDRICAL)
)))
