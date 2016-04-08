(define (problem grounded-STRIPS-ROVERPROB2006)
(:domain grounded-STRIPS-ROVER)
(:init
(EMPTY-ROVER11STORE)
(AVAILABLE-ROVER11)
(AT-ROVER11-WAYPOINT37)
(EMPTY-ROVER10STORE)
(AVAILABLE-ROVER10)
(AT-ROVER10-WAYPOINT39)
(EMPTY-ROVER9STORE)
(AVAILABLE-ROVER9)
(AT-ROVER9-WAYPOINT19)
(EMPTY-ROVER8STORE)
(AVAILABLE-ROVER8)
(AT-ROVER8-WAYPOINT71)
(EMPTY-ROVER7STORE)
(AVAILABLE-ROVER7)
(AT-ROVER7-WAYPOINT2)
(EMPTY-ROVER6STORE)
(AVAILABLE-ROVER6)
(AT-ROVER6-WAYPOINT73)
(AVAILABLE-ROVER5)
(AT-ROVER5-WAYPOINT1)
(EMPTY-ROVER4STORE)
(AVAILABLE-ROVER4)
(AT-ROVER4-WAYPOINT13)
(AVAILABLE-ROVER3)
(AT-ROVER3-WAYPOINT39)
(EMPTY-ROVER2STORE)
(AVAILABLE-ROVER2)
(AT-ROVER2-WAYPOINT6)
(EMPTY-ROVER1STORE)
(AVAILABLE-ROVER1)
(AT-ROVER1-WAYPOINT26)
(EMPTY-ROVER0STORE)
(AVAILABLE-ROVER0)
(AT-ROVER0-WAYPOINT4)
(CHANNEL_FREE-GENERAL)
(AT_SOIL_SAMPLE-WAYPOINT74)
(AT_ROCK_SAMPLE-WAYPOINT72)
(AT_ROCK_SAMPLE-WAYPOINT70)
(AT_SOIL_SAMPLE-WAYPOINT70)
(AT_SOIL_SAMPLE-WAYPOINT68)
(AT_ROCK_SAMPLE-WAYPOINT67)
(AT_SOIL_SAMPLE-WAYPOINT67)
(AT_ROCK_SAMPLE-WAYPOINT66)
(AT_SOIL_SAMPLE-WAYPOINT66)
(AT_SOIL_SAMPLE-WAYPOINT65)
(AT_SOIL_SAMPLE-WAYPOINT64)
(AT_SOIL_SAMPLE-WAYPOINT62)
(AT_ROCK_SAMPLE-WAYPOINT61)
(AT_SOIL_SAMPLE-WAYPOINT61)
(AT_SOIL_SAMPLE-WAYPOINT60)
(AT_ROCK_SAMPLE-WAYPOINT59)
(AT_SOIL_SAMPLE-WAYPOINT59)
(AT_ROCK_SAMPLE-WAYPOINT57)
(AT_SOIL_SAMPLE-WAYPOINT56)
(AT_SOIL_SAMPLE-WAYPOINT54)
(AT_ROCK_SAMPLE-WAYPOINT52)
(AT_SOIL_SAMPLE-WAYPOINT52)
(AT_ROCK_SAMPLE-WAYPOINT51)
(AT_SOIL_SAMPLE-WAYPOINT51)
(AT_ROCK_SAMPLE-WAYPOINT50)
(AT_ROCK_SAMPLE-WAYPOINT49)
(AT_SOIL_SAMPLE-WAYPOINT48)
(AT_ROCK_SAMPLE-WAYPOINT47)
(AT_SOIL_SAMPLE-WAYPOINT46)
(AT_ROCK_SAMPLE-WAYPOINT44)
(AT_ROCK_SAMPLE-WAYPOINT43)
(AT_ROCK_SAMPLE-WAYPOINT42)
(AT_SOIL_SAMPLE-WAYPOINT42)
(AT_SOIL_SAMPLE-WAYPOINT41)
(AT_SOIL_SAMPLE-WAYPOINT38)
(AT_ROCK_SAMPLE-WAYPOINT37)
(AT_SOIL_SAMPLE-WAYPOINT37)
(AT_ROCK_SAMPLE-WAYPOINT36)
(AT_SOIL_SAMPLE-WAYPOINT36)
(AT_ROCK_SAMPLE-WAYPOINT35)
(AT_SOIL_SAMPLE-WAYPOINT34)
(AT_SOIL_SAMPLE-WAYPOINT33)
(AT_ROCK_SAMPLE-WAYPOINT30)
(AT_ROCK_SAMPLE-WAYPOINT29)
(AT_SOIL_SAMPLE-WAYPOINT29)
(AT_SOIL_SAMPLE-WAYPOINT28)
(AT_ROCK_SAMPLE-WAYPOINT26)
(AT_SOIL_SAMPLE-WAYPOINT26)
(AT_ROCK_SAMPLE-WAYPOINT25)
(AT_SOIL_SAMPLE-WAYPOINT25)
(AT_ROCK_SAMPLE-WAYPOINT24)
(AT_SOIL_SAMPLE-WAYPOINT23)
(AT_ROCK_SAMPLE-WAYPOINT22)
(AT_ROCK_SAMPLE-WAYPOINT20)
(AT_SOIL_SAMPLE-WAYPOINT20)
(AT_SOIL_SAMPLE-WAYPOINT19)
(AT_ROCK_SAMPLE-WAYPOINT16)
(AT_SOIL_SAMPLE-WAYPOINT16)
(AT_SOIL_SAMPLE-WAYPOINT15)
(AT_SOIL_SAMPLE-WAYPOINT14)
(AT_ROCK_SAMPLE-WAYPOINT13)
(AT_SOIL_SAMPLE-WAYPOINT13)
(AT_SOIL_SAMPLE-WAYPOINT12)
(AT_ROCK_SAMPLE-WAYPOINT9)
(AT_SOIL_SAMPLE-WAYPOINT9)
(AT_ROCK_SAMPLE-WAYPOINT8)
(AT_SOIL_SAMPLE-WAYPOINT8)
(AT_SOIL_SAMPLE-WAYPOINT7)
(AT_SOIL_SAMPLE-WAYPOINT6)
(AT_SOIL_SAMPLE-WAYPOINT5)
(AT_ROCK_SAMPLE-WAYPOINT4)
(AT_SOIL_SAMPLE-WAYPOINT4)
(AT_SOIL_SAMPLE-WAYPOINT3)
(AT_ROCK_SAMPLE-WAYPOINT2)
(AT_SOIL_SAMPLE-WAYPOINT1)
)
(:goal
(and
(COMMUNICATED_IMAGE_DATA-OBJECTIVE8-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE11-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE0-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE3-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE10-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE6-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE2-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE4-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE2-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE5-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE10-LOW_RES)
(COMMUNICATED_ROCK_DATA-WAYPOINT20)
(COMMUNICATED_ROCK_DATA-WAYPOINT49)
(COMMUNICATED_ROCK_DATA-WAYPOINT13)
(COMMUNICATED_ROCK_DATA-WAYPOINT35)
(COMMUNICATED_ROCK_DATA-WAYPOINT16)
(COMMUNICATED_ROCK_DATA-WAYPOINT52)
(COMMUNICATED_ROCK_DATA-WAYPOINT42)
(COMMUNICATED_ROCK_DATA-WAYPOINT22)
(COMMUNICATED_ROCK_DATA-WAYPOINT61)
(COMMUNICATED_ROCK_DATA-WAYPOINT29)
(COMMUNICATED_ROCK_DATA-WAYPOINT36)
(COMMUNICATED_ROCK_DATA-WAYPOINT26)
(COMMUNICATED_ROCK_DATA-WAYPOINT37)
(COMMUNICATED_ROCK_DATA-WAYPOINT57)
(COMMUNICATED_ROCK_DATA-WAYPOINT47)
(COMMUNICATED_ROCK_DATA-WAYPOINT50)
(COMMUNICATED_ROCK_DATA-WAYPOINT24)
(COMMUNICATED_ROCK_DATA-WAYPOINT59)
(COMMUNICATED_ROCK_DATA-WAYPOINT72)
(COMMUNICATED_ROCK_DATA-WAYPOINT66)
(COMMUNICATED_ROCK_DATA-WAYPOINT9)
(COMMUNICATED_ROCK_DATA-WAYPOINT67)
(COMMUNICATED_ROCK_DATA-WAYPOINT51)
(COMMUNICATED_ROCK_DATA-WAYPOINT25)
(COMMUNICATED_ROCK_DATA-WAYPOINT44)
(COMMUNICATED_ROCK_DATA-WAYPOINT43)
(COMMUNICATED_SOIL_DATA-WAYPOINT6)
(COMMUNICATED_SOIL_DATA-WAYPOINT12)
(COMMUNICATED_SOIL_DATA-WAYPOINT23)
(COMMUNICATED_SOIL_DATA-WAYPOINT41)
(COMMUNICATED_SOIL_DATA-WAYPOINT1)
(COMMUNICATED_SOIL_DATA-WAYPOINT20)
(COMMUNICATED_SOIL_DATA-WAYPOINT59)
(COMMUNICATED_SOIL_DATA-WAYPOINT15)
(COMMUNICATED_SOIL_DATA-WAYPOINT67)
(COMMUNICATED_SOIL_DATA-WAYPOINT64)
(COMMUNICATED_SOIL_DATA-WAYPOINT25)
(COMMUNICATED_SOIL_DATA-WAYPOINT65)
(COMMUNICATED_SOIL_DATA-WAYPOINT7)
(COMMUNICATED_SOIL_DATA-WAYPOINT66)
(COMMUNICATED_SOIL_DATA-WAYPOINT74)
(COMMUNICATED_SOIL_DATA-WAYPOINT4)
(COMMUNICATED_SOIL_DATA-WAYPOINT62)
(COMMUNICATED_SOIL_DATA-WAYPOINT51)
(COMMUNICATED_SOIL_DATA-WAYPOINT13)
(COMMUNICATED_SOIL_DATA-WAYPOINT46)
(COMMUNICATED_SOIL_DATA-WAYPOINT3)
(COMMUNICATED_SOIL_DATA-WAYPOINT37)
(COMMUNICATED_SOIL_DATA-WAYPOINT34)
(COMMUNICATED_SOIL_DATA-WAYPOINT36)
(COMMUNICATED_SOIL_DATA-WAYPOINT16)
(COMMUNICATED_SOIL_DATA-WAYPOINT38)
)
)
)