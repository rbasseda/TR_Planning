(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	satellite4 - satellite
	instrument12 - instrument
	spectrograph1 - mode
	thermograph5 - mode
	spectrograph2 - mode
	image4 - mode
	infrared3 - mode
	image0 - mode
	GroundStation4 - direction
	Star2 - direction
	Star5 - direction
	GroundStation1 - direction
	GroundStation11 - direction
	GroundStation3 - direction
	GroundStation12 - direction
	GroundStation10 - direction
	Star9 - direction
	Star6 - direction
	GroundStation0 - direction
	GroundStation8 - direction
	Star7 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Star17 - direction
	Planet18 - direction
	Star19 - direction
	Star20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Phenomenon24 - direction
	Phenomenon25 - direction
	Planet26 - direction
	Planet27 - direction
	Star28 - direction
	Star29 - direction
	Planet30 - direction
	Planet31 - direction
	Star32 - direction
	Star33 - direction
	Phenomenon34 - direction
	Phenomenon35 - direction
)
(:init
	(supports instrument0 thermograph5)
	(supports instrument0 infrared3)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet18)
	(supports instrument1 thermograph5)
	(calibration_target instrument1 Star2)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 thermograph5)
	(supports instrument2 infrared3)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation8)
	(supports instrument4 infrared3)
	(supports instrument4 image4)
	(calibration_target instrument4 GroundStation0)
	(calibration_target instrument4 Star6)
	(calibration_target instrument4 GroundStation10)
	(calibration_target instrument4 Star9)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet31)
	(supports instrument5 image4)
	(calibration_target instrument5 Star5)
	(supports instrument6 thermograph5)
	(supports instrument6 spectrograph1)
	(supports instrument6 infrared3)
	(calibration_target instrument6 GroundStation1)
	(calibration_target instrument6 GroundStation11)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
	(supports instrument7 infrared3)
	(supports instrument7 thermograph5)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 GroundStation11)
	(supports instrument8 infrared3)
	(supports instrument8 image0)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 GroundStation10)
	(calibration_target instrument8 Star7)
	(calibration_target instrument8 GroundStation8)
	(supports instrument9 image4)
	(calibration_target instrument9 Star6)
	(calibration_target instrument9 GroundStation12)
	(calibration_target instrument9 GroundStation3)
	(calibration_target instrument9 Star7)
	(supports instrument10 spectrograph2)
	(calibration_target instrument10 GroundStation10)
	(supports instrument11 image4)
	(calibration_target instrument11 Star9)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(on_board instrument11 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star33)
	(supports instrument12 image0)
	(supports instrument12 infrared3)
	(calibration_target instrument12 Star7)
	(calibration_target instrument12 GroundStation8)
	(calibration_target instrument12 GroundStation0)
	(calibration_target instrument12 Star6)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation8)
)
(:goal (and
	(pointing satellite3 Planet30)
	(pointing satellite4 Planet30)
	(have_image Star14 image4)
	(have_image Star16 thermograph5)
	(have_image Star17 thermograph5)
	(have_image Planet18 spectrograph2)
	(have_image Planet18 image4)
	(have_image Star19 image4)
	(have_image Star19 spectrograph2)
	(have_image Star20 thermograph5)
	(have_image Star20 infrared3)
	(have_image Planet21 thermograph5)
	(have_image Phenomenon22 thermograph5)
	(have_image Phenomenon22 spectrograph2)
	(have_image Planet23 spectrograph2)
	(have_image Phenomenon25 infrared3)
	(have_image Planet26 infrared3)
	(have_image Planet26 spectrograph2)
	(have_image Planet27 thermograph5)
	(have_image Star28 thermograph5)
	(have_image Star29 image0)
	(have_image Planet30 spectrograph2)
	(have_image Planet30 image0)
	(have_image Planet31 spectrograph2)
	(have_image Planet31 image4)
	(have_image Star32 spectrograph1)
	(have_image Star32 thermograph5)
	(have_image Star33 image0)
	(have_image Star33 spectrograph1)
	(have_image Phenomenon34 image0)
	(have_image Phenomenon34 infrared3)
	(have_image Phenomenon35 image0)
	(have_image Phenomenon35 spectrograph2)
))
(:metric minimize (total-time))

)
