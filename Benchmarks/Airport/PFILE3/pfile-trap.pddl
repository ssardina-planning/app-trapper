;;
;; PDDL file for the AIPS2000 Planning Competition
;; based on the data generated by the airport simulator Astras.
;;

;; Author: Sebastian Trueg thisshouldbethecurrentdateandtime :(
;; Created with PreInstancerAirportExporter 0.5 by Sebastian Trueg <trueg@informatik.uni-freiburg.de>
;;



(define (problem PROBLEM_X)

(:domain airport_fixed_structure)

(:objects
)

(:init 
(airborne airplane_daewh seg_09_0_150)
(at-segment airplane_cfbeg seg_a02_0_100)
(at-segment airplane_dfboy seg_b02_0_100)
(blocked seg_a02_0_100 airplane_cfbeg)
(blocked seg_b02_0_100 airplane_dfboy)
(facing airplane_cfbeg south)
(facing airplane_daewh south)
(facing airplane_dfboy south)
(has-type airplane_cfbeg medium) 
(has-type airplane_daewh medium) 
(has-type airplane_dfboy medium) 
(is-parked airplane_cfbeg seg_a02_0_100)
(is-pushing airplane_dfboy)
(not_blocked seg_09_0_150 airplane_cfbeg)
(not_blocked seg_09_0_150 airplane_daewh)
(not_blocked seg_09_0_150 airplane_dfboy)
(not_blocked seg_09help_0_100 airplane_cfbeg)
(not_blocked seg_09help_0_100 airplane_daewh)
(not_blocked seg_09help_0_100 airplane_dfboy)
(not_blocked seg_09thresh_0_100 airplane_cfbeg)
(not_blocked seg_09thresh_0_100 airplane_daewh)
(not_blocked seg_09thresh_0_100 airplane_dfboy)
(not_blocked seg_27_0_150 airplane_cfbeg)
(not_blocked seg_27_0_150 airplane_daewh)
(not_blocked seg_27_0_150 airplane_dfboy)
(not_blocked seg_27help_0_100 airplane_cfbeg)
(not_blocked seg_27help_0_100 airplane_daewh)
(not_blocked seg_27help_0_100 airplane_dfboy)
(not_blocked seg_27thresh_0_100 airplane_cfbeg)
(not_blocked seg_27thresh_0_100 airplane_daewh)
(not_blocked seg_27thresh_0_100 airplane_dfboy)
(not_blocked seg_a02_0_100 airplane_daewh)
(not_blocked seg_a02_0_100 airplane_dfboy)
(not_blocked seg_a_09_0_100 airplane_cfbeg)
(not_blocked seg_a_09_0_100 airplane_daewh)
(not_blocked seg_a_09_0_100 airplane_dfboy)
(not_blocked seg_b02_0_100 airplane_cfbeg)
(not_blocked seg_b02_0_100 airplane_daewh)
(not_blocked seg_b_27_0_100 airplane_cfbeg)
(not_blocked seg_b_27_0_100 airplane_daewh)
(not_blocked seg_b_27_0_100 airplane_dfboy)
(not_blocked seg_c4_c5_0_50 airplane_cfbeg)
(not_blocked seg_c4_c5_0_50 airplane_daewh)
(not_blocked seg_c4_c5_0_50 airplane_dfboy)
(not_blocked seg_c5_c6_0_50 airplane_cfbeg)
(not_blocked seg_c5_c6_0_50 airplane_daewh)
(not_blocked seg_c5_c6_0_50 airplane_dfboy)
(not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
(not_blocked seg_c5_c_a02_0_100 airplane_daewh)
(not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
(not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
(not_blocked seg_c5_c_b02_0_100 airplane_daewh)
(not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
(not_blocked seg_c6_c7_0_100 airplane_cfbeg)
(not_blocked seg_c6_c7_0_100 airplane_daewh)
(not_blocked seg_c6_c7_0_100 airplane_dfboy)
(not_blocked seg_c_c2_0_84 airplane_cfbeg)
(not_blocked seg_c_c2_0_84 airplane_daewh)
(not_blocked seg_c_c2_0_84 airplane_dfboy)
(not_blocked seg_c_c2_1_0_83 airplane_cfbeg)
(not_blocked seg_c_c2_1_0_83 airplane_daewh)
(not_blocked seg_c_c2_1_0_83 airplane_dfboy)
(not_blocked seg_c_c2_2_0_83 airplane_cfbeg)
(not_blocked seg_c_c2_2_0_83 airplane_daewh)
(not_blocked seg_c_c2_2_0_83 airplane_dfboy)
(not_blocked seg_n1_a_0_100 airplane_cfbeg)
(not_blocked seg_n1_a_0_100 airplane_daewh)
(not_blocked seg_n1_a_0_100 airplane_dfboy)
(not_blocked seg_n1_n2_0_100 airplane_cfbeg)
(not_blocked seg_n1_n2_0_100 airplane_daewh)
(not_blocked seg_n1_n2_0_100 airplane_dfboy)
(not_blocked seg_n2_n3_0_85 airplane_cfbeg)
(not_blocked seg_n2_n3_0_85 airplane_daewh)
(not_blocked seg_n2_n3_0_85 airplane_dfboy)
(not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
(not_blocked seg_n2_n3_1_0_86 airplane_daewh)
(not_blocked seg_n2_n3_1_0_86 airplane_dfboy)
(not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
(not_blocked seg_n2_n3_2_0_86 airplane_daewh)
(not_blocked seg_n2_n3_2_0_86 airplane_dfboy)
(not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
(not_blocked seg_n2_n3_3_0_86 airplane_daewh)
(not_blocked seg_n2_n3_3_0_86 airplane_dfboy)
(not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
(not_blocked seg_n2_n3_4_0_85 airplane_daewh)
(not_blocked seg_n2_n3_4_0_85 airplane_dfboy)
(not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
(not_blocked seg_n2_n3_5_0_86 airplane_daewh)
(not_blocked seg_n2_n3_5_0_86 airplane_dfboy)
(not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
(not_blocked seg_n2_n3_6_0_86 airplane_daewh)
(not_blocked seg_n2_n3_6_0_86 airplane_dfboy)
(not_blocked seg_n3_n_0_100 airplane_cfbeg)
(not_blocked seg_n3_n_0_100 airplane_daewh)
(not_blocked seg_n3_n_0_100 airplane_dfboy)
(not_blocked seg_n4_n5_0_86 airplane_cfbeg)
(not_blocked seg_n4_n5_0_86 airplane_daewh)
(not_blocked seg_n4_n5_0_86 airplane_dfboy)
(not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
(not_blocked seg_n4_n5_1_0_85 airplane_daewh)
(not_blocked seg_n4_n5_1_0_85 airplane_dfboy)
(not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
(not_blocked seg_n4_n5_2_0_86 airplane_daewh)
(not_blocked seg_n4_n5_2_0_86 airplane_dfboy)
(not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
(not_blocked seg_n4_n5_3_0_86 airplane_daewh)
(not_blocked seg_n4_n5_3_0_86 airplane_dfboy)
(not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
(not_blocked seg_n4_n5_4_0_85 airplane_daewh)
(not_blocked seg_n4_n5_4_0_85 airplane_dfboy)
(not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
(not_blocked seg_n4_n5_5_0_86 airplane_daewh)
(not_blocked seg_n4_n5_5_0_86 airplane_dfboy)
(not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
(not_blocked seg_n4_n5_6_0_86 airplane_daewh)
(not_blocked seg_n4_n5_6_0_86 airplane_dfboy)
(not_blocked seg_n5_n6_0_100 airplane_cfbeg)
(not_blocked seg_n5_n6_0_100 airplane_daewh)
(not_blocked seg_n5_n6_0_100 airplane_dfboy)
(not_blocked seg_n6_b_0_100 airplane_cfbeg)
(not_blocked seg_n6_b_0_100 airplane_daewh)
(not_blocked seg_n6_b_0_100 airplane_dfboy)
(not_blocked seg_n_c_0_100 airplane_cfbeg)
(not_blocked seg_n_c_0_100 airplane_daewh)
(not_blocked seg_n_c_0_100 airplane_dfboy)
(not_blocked seg_n_n4_0_100 airplane_cfbeg)
(not_blocked seg_n_n4_0_100 airplane_daewh)
(not_blocked seg_n_n4_0_100 airplane_dfboy)
(not_blocked seg_rwy_0_1300 airplane_cfbeg)
(not_blocked seg_rwy_0_1300 airplane_daewh)
(not_blocked seg_rwy_0_1300 airplane_dfboy)
(not_occupied seg_09_0_150)
(not_occupied seg_09help_0_100)
(not_occupied seg_09thresh_0_100)
(not_occupied seg_27_0_150)
(not_occupied seg_27help_0_100)
(not_occupied seg_27thresh_0_100)
(not_occupied seg_a_09_0_100)
(not_occupied seg_b_27_0_100)
(not_occupied seg_c4_c5_0_50)
(not_occupied seg_c5_c6_0_50)
(not_occupied seg_c5_c_a02_0_100)
(not_occupied seg_c5_c_b02_0_100)
(not_occupied seg_c6_c7_0_100)
(not_occupied seg_c_c2_0_84)
(not_occupied seg_c_c2_1_0_83)
(not_occupied seg_c_c2_2_0_83)
(not_occupied seg_n1_a_0_100)
(not_occupied seg_n1_n2_0_100)
(not_occupied seg_n2_n3_0_85)
(not_occupied seg_n2_n3_1_0_86)
(not_occupied seg_n2_n3_2_0_86)
(not_occupied seg_n2_n3_3_0_86)
(not_occupied seg_n2_n3_4_0_85)
(not_occupied seg_n2_n3_5_0_86)
(not_occupied seg_n2_n3_6_0_86)
(not_occupied seg_n3_n_0_100)
(not_occupied seg_n4_n5_0_86)
(not_occupied seg_n4_n5_1_0_85)
(not_occupied seg_n4_n5_2_0_86)
(not_occupied seg_n4_n5_3_0_86)
(not_occupied seg_n4_n5_4_0_85)
(not_occupied seg_n4_n5_5_0_86)
(not_occupied seg_n4_n5_6_0_86)
(not_occupied seg_n5_n6_0_100)
(not_occupied seg_n6_b_0_100)
(not_occupied seg_n_c_0_100)
(not_occupied seg_n_n4_0_100)
(not_occupied seg_rwy_0_1300)
(occupied seg_a02_0_100)
(occupied seg_b02_0_100)
)
(:goal (and 
;real goals
(airborne airplane_DFBOY seg_09_0_150)
)))
