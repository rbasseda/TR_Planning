(define (problem schedule-33-7)
(:domain schedule)
(:objects
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
    (idle punch) (idle drill-press) (idle lathe) (idle roller) (idle polisher)
    (idle immersion-painter) (idle spray-painter) (idle grinder) (ru unwantedargs)
    (SHAPE A0 OBLONG)
    (SURFACE-CONDITION A0 POLISHED)
    (PAINTED A0 YELLOW)
    (HAS-HOLE A0 ONE BACK) (lasthole A0 ONE BACK) (linked A0 nowidth noorient ONE BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CIRCULAR)
    (SURFACE-CONDITION B0 SMOOTH)
    (PAINTED B0 RED)
    (HAS-HOLE B0 TWO FRONT) (lasthole B0 TWO FRONT) (linked B0 nowidth noorient TWO FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 SMOOTH)
    (PAINTED C0 BLUE)
    (HAS-HOLE C0 ONE BACK) (lasthole C0 ONE BACK) (linked C0 nowidth noorient ONE BACK)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 OBLONG)
    (SURFACE-CONDITION D0 ROUGH)
    (PAINTED D0 BLUE)
    (HAS-HOLE D0 ONE BACK) (lasthole D0 ONE BACK) (linked D0 nowidth noorient ONE BACK)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CIRCULAR)
    (SURFACE-CONDITION E0 POLISHED)
    (PAINTED E0 RED)
    (HAS-HOLE E0 TWO FRONT) (lasthole E0 TWO FRONT) (linked E0 nowidth noorient TWO FRONT)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 OBLONG)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 BLACK)
    (HAS-HOLE F0 TWO BACK) (lasthole F0 TWO BACK) (linked F0 nowidth noorient TWO BACK)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 OBLONG)
    (SURFACE-CONDITION G0 ROUGH)
    (PAINTED G0 YELLOW)
    (HAS-HOLE G0 THREE BACK) (lasthole G0 THREE BACK) (linked G0 nowidth noorient THREE BACK)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CIRCULAR)
    (SURFACE-CONDITION H0 SMOOTH)
    (PAINTED H0 RED)
    (HAS-HOLE H0 ONE FRONT) (lasthole H0 ONE FRONT) (linked H0 nowidth noorient ONE FRONT)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 OBLONG)
    (SURFACE-CONDITION I0 SMOOTH)
    (PAINTED I0 RED)
    (HAS-HOLE I0 ONE FRONT) (lasthole I0 ONE FRONT) (linked I0 nowidth noorient ONE FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CIRCULAR)
    (SURFACE-CONDITION J0 POLISHED)
    (PAINTED J0 YELLOW)
    (HAS-HOLE J0 ONE BACK) (lasthole J0 ONE BACK) (linked J0 nowidth noorient ONE BACK)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 CIRCULAR)
    (SURFACE-CONDITION K0 SMOOTH)
    (PAINTED K0 BLUE)
    (HAS-HOLE K0 TWO BACK) (lasthole K0 TWO BACK) (linked K0 nowidth noorient TWO BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CIRCULAR)
    (SURFACE-CONDITION L0 SMOOTH)
    (PAINTED L0 BLACK)
    (HAS-HOLE L0 THREE FRONT) (lasthole L0 THREE FRONT) (linked L0 nowidth noorient THREE FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 OBLONG)
    (SURFACE-CONDITION M0 ROUGH)
    (PAINTED M0 BLUE)
    (HAS-HOLE M0 TWO BACK) (lasthole M0 TWO BACK) (linked M0 nowidth noorient TWO BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CIRCULAR)
    (SURFACE-CONDITION N0 ROUGH)
    (PAINTED N0 RED)
    (HAS-HOLE N0 THREE BACK) (lasthole N0 THREE BACK) (linked N0 nowidth noorient THREE BACK)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 OBLONG)
    (SURFACE-CONDITION O0 ROUGH)
    (PAINTED O0 RED)
    (HAS-HOLE O0 THREE BACK) (lasthole O0 THREE BACK) (linked O0 nowidth noorient THREE BACK)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 SMOOTH)
    (PAINTED Q0 RED)
    (HAS-HOLE Q0 TWO BACK) (lasthole Q0 TWO BACK) (linked Q0 nowidth noorient TWO BACK)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 OBLONG)
    (SURFACE-CONDITION P0 SMOOTH)
    (PAINTED P0 BLACK)
    (HAS-HOLE P0 THREE BACK) (lasthole P0 THREE BACK) (linked P0 nowidth noorient THREE BACK)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CYLINDRICAL)
    (SURFACE-CONDITION R0 POLISHED)
    (PAINTED R0 BLACK)
    (HAS-HOLE R0 ONE FRONT) (lasthole R0 ONE FRONT) (linked R0 nowidth noorient ONE FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CIRCULAR)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 BLUE)
    (HAS-HOLE S0 ONE FRONT) (lasthole S0 ONE FRONT) (linked S0 nowidth noorient ONE FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 CYLINDRICAL)
    (SURFACE-CONDITION U0 POLISHED)
    (PAINTED U0 YELLOW)
    (HAS-HOLE U0 ONE FRONT) (lasthole U0 ONE FRONT) (linked U0 nowidth noorient ONE FRONT)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CYLINDRICAL)
    (SURFACE-CONDITION V0 POLISHED)
    (PAINTED V0 YELLOW)
    (HAS-HOLE V0 TWO BACK) (lasthole V0 TWO BACK) (linked V0 nowidth noorient TWO BACK)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 CIRCULAR)
    (SURFACE-CONDITION W0 SMOOTH)
    (PAINTED W0 YELLOW)
    (HAS-HOLE W0 ONE BACK) (lasthole W0 ONE BACK) (linked W0 nowidth noorient ONE BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 OBLONG)
    (SURFACE-CONDITION Z0 SMOOTH)
    (PAINTED Z0 BLUE)
    (HAS-HOLE Z0 THREE BACK) (lasthole Z0 THREE BACK) (linked Z0 nowidth noorient THREE BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 OBLONG)
    (SURFACE-CONDITION A1 SMOOTH)
    (PAINTED A1 YELLOW)
    (HAS-HOLE A1 THREE FRONT) (lasthole A1 THREE FRONT) (linked A1 nowidth noorient THREE FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 CIRCULAR)
    (SURFACE-CONDITION B1 SMOOTH)
    (PAINTED B1 BLUE)
    (HAS-HOLE B1 THREE BACK) (lasthole B1 THREE BACK) (linked B1 nowidth noorient THREE BACK)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 OBLONG)
    (SURFACE-CONDITION C1 SMOOTH)
    (PAINTED C1 BLACK)
    (HAS-HOLE C1 THREE FRONT) (lasthole C1 THREE FRONT) (linked C1 nowidth noorient THREE FRONT)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CYLINDRICAL)
    (SURFACE-CONDITION D1 SMOOTH)
    (PAINTED D1 YELLOW)
    (HAS-HOLE D1 THREE FRONT) (lasthole D1 THREE FRONT) (linked D1 nowidth noorient THREE FRONT)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CYLINDRICAL)
    (SURFACE-CONDITION E1 ROUGH)
    (PAINTED E1 YELLOW)
    (HAS-HOLE E1 THREE FRONT) (lasthole E1 THREE FRONT) (linked E1 nowidth noorient THREE FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 CIRCULAR)
    (SURFACE-CONDITION F1 SMOOTH)
    (PAINTED F1 BLACK)
    (HAS-HOLE F1 THREE FRONT) (lasthole F1 THREE FRONT) (linked F1 nowidth noorient THREE FRONT)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CYLINDRICAL)
    (SURFACE-CONDITION G1 ROUGH)
    (PAINTED G1 RED)
    (HAS-HOLE G1 TWO BACK) (lasthole G1 TWO BACK) (linked G1 nowidth noorient TWO BACK)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 CYLINDRICAL)
    (SURFACE-CONDITION H1 ROUGH)
    (PAINTED H1 YELLOW)
    (HAS-HOLE H1 TWO FRONT) (lasthole H1 TWO FRONT) (linked H1 nowidth noorient TWO FRONT)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 OBLONG)
    (SURFACE-CONDITION I1 SMOOTH)
    (PAINTED I1 RED)
    (HAS-HOLE I1 ONE FRONT) (lasthole I1 ONE FRONT) (linked I1 nowidth noorient ONE FRONT)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 CIRCULAR)
    (SURFACE-CONDITION J1 SMOOTH)
    (PAINTED J1 BLUE)
    (HAS-HOLE J1 ONE FRONT) (lasthole J1 ONE FRONT) (linked J1 nowidth noorient ONE FRONT)
    (TEMPERATURE J1 COLD)
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
    (PART J1) (unscheduled J1)
    (PART I1) (unscheduled I1)
    (PART H1) (unscheduled H1)
    (PART G1) (unscheduled G1)
    (PART F1) (unscheduled F1)
    (PART E1) (unscheduled E1)
    (PART D1) (unscheduled D1)
    (PART C1) (unscheduled C1)
    (PART B1) (unscheduled B1)
    (PART A1) (unscheduled A1)
    (PART Z0) (unscheduled Z0)
    (PART W0) (unscheduled W0)
    (PART V0) (unscheduled V0)
    (PART U0) (unscheduled U0)
    (PART S0) (unscheduled S0)
    (PART R0) (unscheduled R0)
    (PART P0) (unscheduled P0)
    (PART Q0) (unscheduled Q0)
    (PART O0) (unscheduled O0)
    (PART N0) (unscheduled N0)
    (PART M0) (unscheduled M0)
    (PART L0) (unscheduled L0)
    (PART K0) (unscheduled K0)
    (PART J0) (unscheduled J0)
    (PART I0) (unscheduled I0)
    (PART H0) (unscheduled H0)
    (PART G0) (unscheduled G0)
    (PART F0) (unscheduled F0)
    (PART E0) (unscheduled E0)
    (PART D0) (unscheduled D0)
    (PART C0) (unscheduled C0)
    (PART B0) (unscheduled B0)
    (PART A0) (unscheduled A0)
)
(:goal (and
    (SURFACE-CONDITION F0 ROUGH)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED B0 BLUE)
    (PAINTED G0 BLACK)
    (PAINTED L0 BLUE)
    (SHAPE I1 CYLINDRICAL)
    (PAINTED U0 BLACK)
    (SURFACE-CONDITION J0 SMOOTH)
    (SURFACE-CONDITION H1 SMOOTH)
    (SHAPE C1 CYLINDRICAL)
    (SURFACE-CONDITION R0 SMOOTH)
    (PAINTED N0 BLACK)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED C1 BLUE)
    (PAINTED Q0 BLACK)
    (SHAPE E0 CYLINDRICAL)
    (PAINTED W0 BLACK)
    (PAINTED S0 YELLOW)
    (SHAPE H0 CYLINDRICAL)
    (SURFACE-CONDITION J1 POLISHED)
    (SURFACE-CONDITION V0 ROUGH)
    (PAINTED J1 YELLOW)
    (PAINTED Z0 BLACK)
    (PAINTED A1 BLACK)
    (SURFACE-CONDITION F1 ROUGH)
    (PAINTED B1 BLACK)
    (SURFACE-CONDITION E1 POLISHED)
    (SURFACE-CONDITION A1 ROUGH)
    (PAINTED E1 BLACK)
    (PAINTED M0 YELLOW)
    (PAINTED F1 BLUE)
    (SURFACE-CONDITION D0 SMOOTH)
    (SURFACE-CONDITION B1 ROUGH)
)))
