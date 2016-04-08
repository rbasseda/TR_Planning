(define (problem schedule-31-0)
(:domain schedule)
(:objects
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
    (SHAPE A0 CIRCULAR)
    (SURFACE-CONDITION A0 POLISHED)
    (PAINTED A0 BLACK)
    (HAS-HOLE A0 TWO BACK) (lasthole A0 TWO BACK) (linked A0 nowidth noorient TWO BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CIRCULAR)
    (SURFACE-CONDITION B0 POLISHED)
    (PAINTED B0 YELLOW)
    (HAS-HOLE B0 TWO FRONT) (lasthole B0 TWO FRONT) (linked B0 nowidth noorient TWO FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 SMOOTH)
    (PAINTED C0 RED)
    (HAS-HOLE C0 ONE BACK) (lasthole C0 ONE BACK) (linked C0 nowidth noorient ONE BACK)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CYLINDRICAL)
    (SURFACE-CONDITION D0 SMOOTH)
    (PAINTED D0 RED)
    (HAS-HOLE D0 THREE FRONT) (lasthole D0 THREE FRONT) (linked D0 nowidth noorient THREE FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 OBLONG)
    (SURFACE-CONDITION E0 POLISHED)
    (PAINTED E0 BLUE)
    (HAS-HOLE E0 ONE BACK) (lasthole E0 ONE BACK) (linked E0 nowidth noorient ONE BACK)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CIRCULAR)
    (SURFACE-CONDITION F0 SMOOTH)
    (PAINTED F0 BLUE)
    (HAS-HOLE F0 ONE FRONT) (lasthole F0 ONE FRONT) (linked F0 nowidth noorient ONE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 CIRCULAR)
    (SURFACE-CONDITION G0 SMOOTH)
    (PAINTED G0 BLUE)
    (HAS-HOLE G0 TWO FRONT) (lasthole G0 TWO FRONT) (linked G0 nowidth noorient TWO FRONT)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CYLINDRICAL)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED H0 YELLOW)
    (HAS-HOLE H0 TWO FRONT) (lasthole H0 TWO FRONT) (linked H0 nowidth noorient TWO FRONT)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 SMOOTH)
    (PAINTED I0 RED)
    (HAS-HOLE I0 THREE FRONT) (lasthole I0 THREE FRONT) (linked I0 nowidth noorient THREE FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 OBLONG)
    (SURFACE-CONDITION J0 SMOOTH)
    (PAINTED J0 BLUE)
    (HAS-HOLE J0 TWO FRONT) (lasthole J0 TWO FRONT) (linked J0 nowidth noorient TWO FRONT)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED K0 YELLOW)
    (HAS-HOLE K0 TWO FRONT) (lasthole K0 TWO FRONT) (linked K0 nowidth noorient TWO FRONT)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CIRCULAR)
    (SURFACE-CONDITION L0 ROUGH)
    (PAINTED L0 BLACK)
    (HAS-HOLE L0 THREE BACK) (lasthole L0 THREE BACK) (linked L0 nowidth noorient THREE BACK)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 OBLONG)
    (SURFACE-CONDITION M0 ROUGH)
    (PAINTED M0 RED)
    (HAS-HOLE M0 THREE FRONT) (lasthole M0 THREE FRONT) (linked M0 nowidth noorient THREE FRONT)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CYLINDRICAL)
    (SURFACE-CONDITION N0 POLISHED)
    (PAINTED N0 RED)
    (HAS-HOLE N0 ONE FRONT) (lasthole N0 ONE FRONT) (linked N0 nowidth noorient ONE FRONT)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 OBLONG)
    (SURFACE-CONDITION O0 SMOOTH)
    (PAINTED O0 RED)
    (HAS-HOLE O0 THREE FRONT) (lasthole O0 THREE FRONT) (linked O0 nowidth noorient THREE FRONT)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 CIRCULAR)
    (SURFACE-CONDITION Q0 POLISHED)
    (PAINTED Q0 BLACK)
    (HAS-HOLE Q0 ONE BACK) (lasthole Q0 ONE BACK) (linked Q0 nowidth noorient ONE BACK)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 CYLINDRICAL)
    (SURFACE-CONDITION P0 SMOOTH)
    (PAINTED P0 BLUE)
    (HAS-HOLE P0 THREE BACK) (lasthole P0 THREE BACK) (linked P0 nowidth noorient THREE BACK)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 OBLONG)
    (SURFACE-CONDITION R0 ROUGH)
    (PAINTED R0 BLUE)
    (HAS-HOLE R0 TWO BACK) (lasthole R0 TWO BACK) (linked R0 nowidth noorient TWO BACK)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 OBLONG)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 YELLOW)
    (HAS-HOLE S0 THREE FRONT) (lasthole S0 THREE FRONT) (linked S0 nowidth noorient THREE FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 CYLINDRICAL)
    (SURFACE-CONDITION U0 SMOOTH)
    (PAINTED U0 BLACK)
    (HAS-HOLE U0 TWO FRONT) (lasthole U0 TWO FRONT) (linked U0 nowidth noorient TWO FRONT)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 OBLONG)
    (SURFACE-CONDITION V0 SMOOTH)
    (PAINTED V0 YELLOW)
    (HAS-HOLE V0 TWO FRONT) (lasthole V0 TWO FRONT) (linked V0 nowidth noorient TWO FRONT)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 OBLONG)
    (SURFACE-CONDITION W0 SMOOTH)
    (PAINTED W0 YELLOW)
    (HAS-HOLE W0 ONE BACK) (lasthole W0 ONE BACK) (linked W0 nowidth noorient ONE BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 OBLONG)
    (SURFACE-CONDITION Z0 ROUGH)
    (PAINTED Z0 BLUE)
    (HAS-HOLE Z0 TWO BACK) (lasthole Z0 TWO BACK) (linked Z0 nowidth noorient TWO BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 CIRCULAR)
    (SURFACE-CONDITION A1 POLISHED)
    (PAINTED A1 BLUE)
    (HAS-HOLE A1 TWO FRONT) (lasthole A1 TWO FRONT) (linked A1 nowidth noorient TWO FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 CIRCULAR)
    (SURFACE-CONDITION B1 POLISHED)
    (PAINTED B1 BLACK)
    (HAS-HOLE B1 THREE BACK) (lasthole B1 THREE BACK) (linked B1 nowidth noorient THREE BACK)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 OBLONG)
    (SURFACE-CONDITION C1 POLISHED)
    (PAINTED C1 BLACK)
    (HAS-HOLE C1 ONE BACK) (lasthole C1 ONE BACK) (linked C1 nowidth noorient ONE BACK)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CYLINDRICAL)
    (SURFACE-CONDITION D1 SMOOTH)
    (PAINTED D1 RED)
    (HAS-HOLE D1 THREE FRONT) (lasthole D1 THREE FRONT) (linked D1 nowidth noorient THREE FRONT)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CIRCULAR)
    (SURFACE-CONDITION E1 ROUGH)
    (PAINTED E1 YELLOW)
    (HAS-HOLE E1 TWO FRONT) (lasthole E1 TWO FRONT) (linked E1 nowidth noorient TWO FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 OBLONG)
    (SURFACE-CONDITION F1 POLISHED)
    (PAINTED F1 YELLOW)
    (HAS-HOLE F1 THREE BACK) (lasthole F1 THREE BACK) (linked F1 nowidth noorient THREE BACK)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CIRCULAR)
    (SURFACE-CONDITION G1 ROUGH)
    (PAINTED G1 YELLOW)
    (HAS-HOLE G1 TWO FRONT) (lasthole G1 TWO FRONT) (linked G1 nowidth noorient TWO FRONT)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 CIRCULAR)
    (SURFACE-CONDITION H1 POLISHED)
    (PAINTED H1 RED)
    (HAS-HOLE H1 TWO BACK) (lasthole H1 TWO BACK) (linked H1 nowidth noorient TWO BACK)
    (TEMPERATURE H1 COLD)
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
    (PAINTED J0 BLACK)
    (SHAPE G0 CYLINDRICAL)
    (SURFACE-CONDITION C0 ROUGH)
    (SURFACE-CONDITION D1 POLISHED)
    (PAINTED E0 RED)
    (SHAPE E1 CYLINDRICAL)
    (SURFACE-CONDITION Q0 SMOOTH)
    (SURFACE-CONDITION C1 ROUGH)
    (PAINTED D1 BLUE)
    (SURFACE-CONDITION H1 ROUGH)
    (PAINTED K0 RED)
    (SURFACE-CONDITION R0 POLISHED)
    (SURFACE-CONDITION O0 ROUGH)
    (SURFACE-CONDITION B1 ROUGH)
    (PAINTED L0 BLUE)
    (SURFACE-CONDITION F0 ROUGH)
    (PAINTED Z0 YELLOW)
    (SHAPE J0 CYLINDRICAL)
    (PAINTED B1 RED)
    (PAINTED H1 YELLOW)
    (PAINTED U0 YELLOW)
    (SURFACE-CONDITION H0 SMOOTH)
    (PAINTED O0 BLUE)
    (PAINTED P0 BLACK)
    (SURFACE-CONDITION L0 SMOOTH)
    (PAINTED E1 RED)
    (PAINTED H0 RED)
    (SURFACE-CONDITION S0 POLISHED)
    (SURFACE-CONDITION N0 SMOOTH)
    (SHAPE C1 CYLINDRICAL)
    (PAINTED R0 YELLOW)
)))