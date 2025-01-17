(:action move_seg_A02_0_100_seg_C5_C_A02_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_A02_0_100)
                 (not_occupied seg_C5_C_A02_0_100)
                 (not_blocked seg_C5_C_A02_0_100 airplane_CFBEG)
                 (not_blocked seg_C5_C_A02_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_A02_0_100))
                 (not_occupied seg_A02_0_100)
                 (not (at-segment ?a seg_A02_0_100))

                 (occupied seg_C5_C_A02_0_100)
                 (not (not_occupied seg_C5_C_A02_0_100))
                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                 (at-segment ?a seg_C5_C_A02_0_100)


                )
)

(:action move_seg_C5_C_A02_0_100_seg_C5_C6_0_50_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C5_C_A02_0_100)
                 (not_occupied seg_C5_C6_0_50)
                 (not_blocked seg_C5_C6_0_50 airplane_CFBEG)
                 (not_blocked seg_C5_C6_0_50 airplane_DAEWH)

                 (not_occupied seg_C4_C5_0_50)
                 (not_occupied seg_C5_C_B02_0_100)
              )

 :effect        (and
                 (not (occupied seg_C5_C_A02_0_100))
                 (not_occupied seg_C5_C_A02_0_100)
                 (not (at-segment ?a seg_C5_C_A02_0_100))

                 (occupied seg_C5_C6_0_50)
                 (not (not_occupied seg_C5_C6_0_50))
                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (at-segment ?a seg_C5_C6_0_50)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_A02_0_100 ?a))
                 (not_blocked seg_A02_0_100 ?a)

                 (blocked seg_C4_C5_0_50 ?a)
                 (not (not_blocked seg_C4_C5_0_50 ?a))
                 (blocked seg_C5_C_B02_0_100 ?a)
                 (not (not_blocked seg_C5_C_B02_0_100 ?a))
                )
)

(:action move_seg_C5_C6_0_50_seg_C6_C7_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C5_C6_0_50)
                 (not_occupied seg_C6_C7_0_100)
                 (not_blocked seg_C6_C7_0_100 airplane_CFBEG)
                 (not_blocked seg_C6_C7_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C5_C6_0_50))
                 (not_occupied seg_C5_C6_0_50)
                 (not (at-segment ?a seg_C5_C6_0_50))

                 (occupied seg_C6_C7_0_100)
                 (not (not_occupied seg_C6_C7_0_100))
                 (blocked seg_C6_C7_0_100 ?a)
                 (not (not_blocked seg_C6_C7_0_100 ?a))
                 (at-segment ?a seg_C6_C7_0_100)

                 (not (blocked seg_C4_C5_0_50 ?a))
                 (not_blocked seg_C4_C5_0_50 ?a)
                 (not (blocked seg_C5_C_A02_0_100 ?a))
                 (not_blocked seg_C5_C_A02_0_100 ?a)
                 (not (blocked seg_C5_C_B02_0_100 ?a))
                 (not_blocked seg_C5_C_B02_0_100 ?a)

                )
)

(:action move_seg_C6_C7_0_100_seg_C5_C6_0_50_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C6_C7_0_100)
                 (not_occupied seg_C5_C6_0_50)
                 (not_blocked seg_C5_C6_0_50 airplane_CFBEG)
                 (not_blocked seg_C5_C6_0_50 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C6_C7_0_100))
                 (not_occupied seg_C6_C7_0_100)
                 (not (at-segment ?a seg_C6_C7_0_100))

                 (occupied seg_C5_C6_0_50)
                 (not (not_occupied seg_C5_C6_0_50))
                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (at-segment ?a seg_C5_C6_0_50)


                )
)

(:action move_seg_C5_C6_0_50_seg_C4_C5_0_50_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C5_C6_0_50)
                 (not_occupied seg_C4_C5_0_50)
                 (not_blocked seg_C4_C5_0_50 airplane_CFBEG)
                 (not_blocked seg_C4_C5_0_50 airplane_DAEWH)

                 (not_occupied seg_C5_C_A02_0_100)
                 (not_occupied seg_C5_C_B02_0_100)
              )

 :effect        (and
                 (not (occupied seg_C5_C6_0_50))
                 (not_occupied seg_C5_C6_0_50)
                 (not (at-segment ?a seg_C5_C6_0_50))

                 (occupied seg_C4_C5_0_50)
                 (not (not_occupied seg_C4_C5_0_50))
                 (blocked seg_C4_C5_0_50 ?a)
                 (not (not_blocked seg_C4_C5_0_50 ?a))
                 (at-segment ?a seg_C4_C5_0_50)

                 (not (blocked seg_C6_C7_0_100 ?a))
                 (not_blocked seg_C6_C7_0_100 ?a)

                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                 (blocked seg_C5_C_B02_0_100 ?a)
                 (not (not_blocked seg_C5_C_B02_0_100 ?a))
                )
)

(:action move_seg_C4_C5_0_50_seg_C_C2_0_84_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C4_C5_0_50)
                 (not_occupied seg_C_C2_0_84)
                 (not_blocked seg_C_C2_0_84 airplane_CFBEG)
                 (not_blocked seg_C_C2_0_84 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C4_C5_0_50))
                 (not_occupied seg_C4_C5_0_50)
                 (not (at-segment ?a seg_C4_C5_0_50))

                 (occupied seg_C_C2_0_84)
                 (not (not_occupied seg_C_C2_0_84))
                 (blocked seg_C_C2_0_84 ?a)
                 (not (not_blocked seg_C_C2_0_84 ?a))
                 (at-segment ?a seg_C_C2_0_84)

                 (not (blocked seg_C5_C6_0_50 ?a))
                 (not_blocked seg_C5_C6_0_50 ?a)
                 (not (blocked seg_C5_C_A02_0_100 ?a))
                 (not_blocked seg_C5_C_A02_0_100 ?a)
                 (not (blocked seg_C5_C_B02_0_100 ?a))
                 (not_blocked seg_C5_C_B02_0_100 ?a)

                )
)

(:action move_seg_C_C2_0_84_seg_C_C2_2_0_83_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C_C2_0_84)
                 (not_occupied seg_C_C2_2_0_83)
                 (not_blocked seg_C_C2_2_0_83 airplane_CFBEG)
                 (not_blocked seg_C_C2_2_0_83 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_0_84))
                 (not_occupied seg_C_C2_0_84)
                 (not (at-segment ?a seg_C_C2_0_84))

                 (occupied seg_C_C2_2_0_83)
                 (not (not_occupied seg_C_C2_2_0_83))
                 (blocked seg_C_C2_2_0_83 ?a)
                 (not (not_blocked seg_C_C2_2_0_83 ?a))
                 (at-segment ?a seg_C_C2_2_0_83)

                 (not (blocked seg_C4_C5_0_50 ?a))
                 (not_blocked seg_C4_C5_0_50 ?a)

                )
)

(:action move_seg_C_C2_2_0_83_seg_C_C2_1_0_83_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C_C2_2_0_83)
                 (not_occupied seg_C_C2_1_0_83)
                 (not_blocked seg_C_C2_1_0_83 airplane_CFBEG)
                 (not_blocked seg_C_C2_1_0_83 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_2_0_83))
                 (not_occupied seg_C_C2_2_0_83)
                 (not (at-segment ?a seg_C_C2_2_0_83))

                 (occupied seg_C_C2_1_0_83)
                 (not (not_occupied seg_C_C2_1_0_83))
                 (blocked seg_C_C2_1_0_83 ?a)
                 (not (not_blocked seg_C_C2_1_0_83 ?a))
                 (at-segment ?a seg_C_C2_1_0_83)

                 (not (blocked seg_C_C2_0_84 ?a))
                 (not_blocked seg_C_C2_0_84 ?a)

                )
)

(:action move_seg_C_C2_1_0_83_seg_N_C_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C_C2_1_0_83)
                 (not_occupied seg_N_C_0_100)
                 (not_blocked seg_N_C_0_100 airplane_CFBEG)
                 (not_blocked seg_N_C_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_1_0_83))
                 (not_occupied seg_C_C2_1_0_83)
                 (not (at-segment ?a seg_C_C2_1_0_83))

                 (occupied seg_N_C_0_100)
                 (not (not_occupied seg_N_C_0_100))
                 (blocked seg_N_C_0_100 ?a)
                 (not (not_blocked seg_N_C_0_100 ?a))
                 (at-segment ?a seg_N_C_0_100)

                 (not (blocked seg_C_C2_2_0_83 ?a))
                 (not_blocked seg_C_C2_2_0_83 ?a)

                )
)

(:action move_seg_N_C_0_100_seg_N3_N_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_C_0_100)
                 (not_occupied seg_N3_N_0_100)
                 (not_blocked seg_N3_N_0_100 airplane_CFBEG)
                 (not_blocked seg_N3_N_0_100 airplane_DAEWH)

                 (not_occupied seg_N_N4_0_100)
              )

 :effect        (and
                 (not (occupied seg_N_C_0_100))
                 (not_occupied seg_N_C_0_100)
                 (not (at-segment ?a seg_N_C_0_100))

                 (occupied seg_N3_N_0_100)
                 (not (not_occupied seg_N3_N_0_100))
                 (blocked seg_N3_N_0_100 ?a)
                 (not (not_blocked seg_N3_N_0_100 ?a))
                 (at-segment ?a seg_N3_N_0_100)

                 (not (blocked seg_C_C2_1_0_83 ?a))
                 (not_blocked seg_C_C2_1_0_83 ?a)

                 (blocked seg_N_N4_0_100 ?a)
                 (not (not_blocked seg_N_N4_0_100 ?a))
                )
)

(:action move_seg_N3_N_0_100_seg_N2_N3_0_85_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N3_N_0_100)
                 (not_occupied seg_N2_N3_0_85)
                 (not_blocked seg_N2_N3_0_85 airplane_CFBEG)
                 (not_blocked seg_N2_N3_0_85 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N3_N_0_100))
                 (not_occupied seg_N3_N_0_100)
                 (not (at-segment ?a seg_N3_N_0_100))

                 (occupied seg_N2_N3_0_85)
                 (not (not_occupied seg_N2_N3_0_85))
                 (blocked seg_N2_N3_0_85 ?a)
                 (not (not_blocked seg_N2_N3_0_85 ?a))
                 (at-segment ?a seg_N2_N3_0_85)

                 (not (blocked seg_N_N4_0_100 ?a))
                 (not_blocked seg_N_N4_0_100 ?a)
                 (not (blocked seg_N_C_0_100 ?a))
                 (not_blocked seg_N_C_0_100 ?a)

                )
)

(:action move_seg_N2_N3_0_85_seg_N2_N3_6_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_0_85)
                 (not_occupied seg_N2_N3_6_0_86)
                 (not_blocked seg_N2_N3_6_0_86 airplane_CFBEG)
                 (not_blocked seg_N2_N3_6_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_0_85))
                 (not_occupied seg_N2_N3_0_85)
                 (not (at-segment ?a seg_N2_N3_0_85))

                 (occupied seg_N2_N3_6_0_86)
                 (not (not_occupied seg_N2_N3_6_0_86))
                 (blocked seg_N2_N3_6_0_86 ?a)
                 (not (not_blocked seg_N2_N3_6_0_86 ?a))
                 (at-segment ?a seg_N2_N3_6_0_86)

                 (not (blocked seg_N3_N_0_100 ?a))
                 (not_blocked seg_N3_N_0_100 ?a)

                )
)

(:action move_seg_N2_N3_6_0_86_seg_N2_N3_5_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_6_0_86)
                 (not_occupied seg_N2_N3_5_0_86)
                 (not_blocked seg_N2_N3_5_0_86 airplane_CFBEG)
                 (not_blocked seg_N2_N3_5_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_6_0_86))
                 (not_occupied seg_N2_N3_6_0_86)
                 (not (at-segment ?a seg_N2_N3_6_0_86))

                 (occupied seg_N2_N3_5_0_86)
                 (not (not_occupied seg_N2_N3_5_0_86))
                 (blocked seg_N2_N3_5_0_86 ?a)
                 (not (not_blocked seg_N2_N3_5_0_86 ?a))
                 (at-segment ?a seg_N2_N3_5_0_86)

                 (not (blocked seg_N2_N3_0_85 ?a))
                 (not_blocked seg_N2_N3_0_85 ?a)

                )
)

(:action move_seg_N2_N3_5_0_86_seg_N2_N3_4_0_85_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_5_0_86)
                 (not_occupied seg_N2_N3_4_0_85)
                 (not_blocked seg_N2_N3_4_0_85 airplane_CFBEG)
                 (not_blocked seg_N2_N3_4_0_85 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_5_0_86))
                 (not_occupied seg_N2_N3_5_0_86)
                 (not (at-segment ?a seg_N2_N3_5_0_86))

                 (occupied seg_N2_N3_4_0_85)
                 (not (not_occupied seg_N2_N3_4_0_85))
                 (blocked seg_N2_N3_4_0_85 ?a)
                 (not (not_blocked seg_N2_N3_4_0_85 ?a))
                 (at-segment ?a seg_N2_N3_4_0_85)

                 (not (blocked seg_N2_N3_6_0_86 ?a))
                 (not_blocked seg_N2_N3_6_0_86 ?a)

                )
)

(:action move_seg_N2_N3_4_0_85_seg_N2_N3_3_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_4_0_85)
                 (not_occupied seg_N2_N3_3_0_86)
                 (not_blocked seg_N2_N3_3_0_86 airplane_CFBEG)
                 (not_blocked seg_N2_N3_3_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_4_0_85))
                 (not_occupied seg_N2_N3_4_0_85)
                 (not (at-segment ?a seg_N2_N3_4_0_85))

                 (occupied seg_N2_N3_3_0_86)
                 (not (not_occupied seg_N2_N3_3_0_86))
                 (blocked seg_N2_N3_3_0_86 ?a)
                 (not (not_blocked seg_N2_N3_3_0_86 ?a))
                 (at-segment ?a seg_N2_N3_3_0_86)

                 (not (blocked seg_N2_N3_5_0_86 ?a))
                 (not_blocked seg_N2_N3_5_0_86 ?a)

                )
)

(:action move_seg_N2_N3_3_0_86_seg_N2_N3_2_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_3_0_86)
                 (not_occupied seg_N2_N3_2_0_86)
                 (not_blocked seg_N2_N3_2_0_86 airplane_CFBEG)
                 (not_blocked seg_N2_N3_2_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_3_0_86))
                 (not_occupied seg_N2_N3_3_0_86)
                 (not (at-segment ?a seg_N2_N3_3_0_86))

                 (occupied seg_N2_N3_2_0_86)
                 (not (not_occupied seg_N2_N3_2_0_86))
                 (blocked seg_N2_N3_2_0_86 ?a)
                 (not (not_blocked seg_N2_N3_2_0_86 ?a))
                 (at-segment ?a seg_N2_N3_2_0_86)

                 (not (blocked seg_N2_N3_4_0_85 ?a))
                 (not_blocked seg_N2_N3_4_0_85 ?a)

                )
)

(:action move_seg_N2_N3_2_0_86_seg_N2_N3_1_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_2_0_86)
                 (not_occupied seg_N2_N3_1_0_86)
                 (not_blocked seg_N2_N3_1_0_86 airplane_CFBEG)
                 (not_blocked seg_N2_N3_1_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_2_0_86))
                 (not_occupied seg_N2_N3_2_0_86)
                 (not (at-segment ?a seg_N2_N3_2_0_86))

                 (occupied seg_N2_N3_1_0_86)
                 (not (not_occupied seg_N2_N3_1_0_86))
                 (blocked seg_N2_N3_1_0_86 ?a)
                 (not (not_blocked seg_N2_N3_1_0_86 ?a))
                 (at-segment ?a seg_N2_N3_1_0_86)

                 (not (blocked seg_N2_N3_3_0_86 ?a))
                 (not_blocked seg_N2_N3_3_0_86 ?a)

                )
)

(:action move_seg_N2_N3_1_0_86_seg_N1_N2_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N2_N3_1_0_86)
                 (not_occupied seg_N1_N2_0_100)
                 (not_blocked seg_N1_N2_0_100 airplane_CFBEG)
                 (not_blocked seg_N1_N2_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N2_N3_1_0_86))
                 (not_occupied seg_N2_N3_1_0_86)
                 (not (at-segment ?a seg_N2_N3_1_0_86))

                 (occupied seg_N1_N2_0_100)
                 (not (not_occupied seg_N1_N2_0_100))
                 (blocked seg_N1_N2_0_100 ?a)
                 (not (not_blocked seg_N1_N2_0_100 ?a))
                 (at-segment ?a seg_N1_N2_0_100)

                 (not (blocked seg_N2_N3_2_0_86 ?a))
                 (not_blocked seg_N2_N3_2_0_86 ?a)

                )
)

(:action move_seg_N1_N2_0_100_seg_N1_A_0_100_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N1_N2_0_100)
                 (not_occupied seg_N1_A_0_100)
                 (not_blocked seg_N1_A_0_100 airplane_CFBEG)
                 (not_blocked seg_N1_A_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N1_N2_0_100))
                 (not_occupied seg_N1_N2_0_100)
                 (not (at-segment ?a seg_N1_N2_0_100))

                 (occupied seg_N1_A_0_100)
                 (not (not_occupied seg_N1_A_0_100))
                 (blocked seg_N1_A_0_100 ?a)
                 (not (not_blocked seg_N1_A_0_100 ?a))
                 (at-segment ?a seg_N1_A_0_100)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N2_N3_1_0_86 ?a))
                 (not_blocked seg_N2_N3_1_0_86 ?a)

                )
)

(:action move_seg_N1_A_0_100_seg_A_09_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N1_A_0_100)
                 (not_occupied seg_A_09_0_100)
                 (not_blocked seg_A_09_0_100 airplane_CFBEG)
                 (not_blocked seg_A_09_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N1_A_0_100))
                 (not_occupied seg_N1_A_0_100)
                 (not (at-segment ?a seg_N1_A_0_100))

                 (occupied seg_A_09_0_100)
                 (not (not_occupied seg_A_09_0_100))
                 (blocked seg_A_09_0_100 ?a)
                 (not (not_blocked seg_A_09_0_100 ?a))
                 (at-segment ?a seg_A_09_0_100)

                 (not (blocked seg_N1_N2_0_100 ?a))
                 (not_blocked seg_N1_N2_0_100 ?a)

                )
)

(:action move_seg_A_09_0_100_seg_09_0_150_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_A_09_0_100)
                 (not_occupied seg_09_0_150)
                 (not_blocked seg_09_0_150 airplane_CFBEG)
                 (not_blocked seg_09_0_150 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_A_09_0_100))
                 (not_occupied seg_A_09_0_100)
                 (not (at-segment ?a seg_A_09_0_100))

                 (occupied seg_09_0_150)
                 (not (not_occupied seg_09_0_150))
                 (blocked seg_09_0_150 ?a)
                 (not (not_blocked seg_09_0_150 ?a))
                 (at-segment ?a seg_09_0_150)

                 (not (blocked seg_N1_A_0_100 ?a))
                 (not_blocked seg_N1_A_0_100 ?a)

                )
)

(:action move_seg_09_0_150_seg_Rwy_0_1300_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_09_0_150)
                 (not_occupied seg_Rwy_0_1300)
                 (not_blocked seg_Rwy_0_1300 airplane_CFBEG)
                 (not_blocked seg_Rwy_0_1300 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_09_0_150))
                 (not_occupied seg_09_0_150)
                 (not (at-segment ?a seg_09_0_150))

                 (occupied seg_Rwy_0_1300)
                 (not (not_occupied seg_Rwy_0_1300))
                 (blocked seg_Rwy_0_1300 ?a)
                 (not (not_blocked seg_Rwy_0_1300 ?a))
                 (at-segment ?a seg_Rwy_0_1300)

                 (not (blocked seg_A_09_0_100 ?a))
                 (not_blocked seg_A_09_0_100 ?a)

                )
)

(:action move_seg_Rwy_0_1300_seg_27_0_150_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_Rwy_0_1300)
                 (not_occupied seg_27_0_150)
                 (not_blocked seg_27_0_150 airplane_CFBEG)
                 (not_blocked seg_27_0_150 airplane_DAEWH)

                 (not_occupied seg_09_0_150)
              )

 :effect        (and
                 (not (occupied seg_Rwy_0_1300))
                 (not_occupied seg_Rwy_0_1300)
                 (not (at-segment ?a seg_Rwy_0_1300))

                 (occupied seg_27_0_150)
                 (not (not_occupied seg_27_0_150))
                 (blocked seg_27_0_150 ?a)
                 (not (not_blocked seg_27_0_150 ?a))
                 (at-segment ?a seg_27_0_150)


                )
)

(:action move_seg_27_0_150_seg_B_27_0_100_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_27_0_150)
                 (not_occupied seg_B_27_0_100)
                 (not_blocked seg_B_27_0_100 airplane_CFBEG)
                 (not_blocked seg_B_27_0_100 airplane_DAEWH)

                 (not_occupied seg_27Help_0_100)
              )

 :effect        (and
                 (not (occupied seg_27_0_150))
                 (not_occupied seg_27_0_150)
                 (not (at-segment ?a seg_27_0_150))

                 (occupied seg_B_27_0_100)
                 (not (not_occupied seg_B_27_0_100))
                 (blocked seg_B_27_0_100 ?a)
                 (not (not_blocked seg_B_27_0_100 ?a))
                 (at-segment ?a seg_B_27_0_100)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_09_0_150 ?a))
                 (not_blocked seg_09_0_150 ?a)
                 (not (blocked seg_Rwy_0_1300 ?a))
                 (not_blocked seg_Rwy_0_1300 ?a)

                 (blocked seg_27Help_0_100 ?a)
                 (not (not_blocked seg_27Help_0_100 ?a))
                )
)

(:action move_seg_B_27_0_100_seg_N6_B_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_B_27_0_100)
                 (not_occupied seg_N6_B_0_100)
                 (not_blocked seg_N6_B_0_100 airplane_CFBEG)
                 (not_blocked seg_N6_B_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_B_27_0_100))
                 (not_occupied seg_B_27_0_100)
                 (not (at-segment ?a seg_B_27_0_100))

                 (occupied seg_N6_B_0_100)
                 (not (not_occupied seg_N6_B_0_100))
                 (blocked seg_N6_B_0_100 ?a)
                 (not (not_blocked seg_N6_B_0_100 ?a))
                 (at-segment ?a seg_N6_B_0_100)

                 (not (blocked seg_27_0_150 ?a))
                 (not_blocked seg_27_0_150 ?a)
                 (not (blocked seg_27Help_0_100 ?a))
                 (not_blocked seg_27Help_0_100 ?a)

                )
)

(:action move_seg_N6_B_0_100_seg_N5_N6_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N6_B_0_100)
                 (not_occupied seg_N5_N6_0_100)
                 (not_blocked seg_N5_N6_0_100 airplane_CFBEG)
                 (not_blocked seg_N5_N6_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N6_B_0_100))
                 (not_occupied seg_N6_B_0_100)
                 (not (at-segment ?a seg_N6_B_0_100))

                 (occupied seg_N5_N6_0_100)
                 (not (not_occupied seg_N5_N6_0_100))
                 (blocked seg_N5_N6_0_100 ?a)
                 (not (not_blocked seg_N5_N6_0_100 ?a))
                 (at-segment ?a seg_N5_N6_0_100)

                 (not (blocked seg_B_27_0_100 ?a))
                 (not_blocked seg_B_27_0_100 ?a)

                )
)

(:action move_seg_N5_N6_0_100_seg_N4_N5_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N5_N6_0_100)
                 (not_occupied seg_N4_N5_0_86)
                 (not_blocked seg_N4_N5_0_86 airplane_CFBEG)
                 (not_blocked seg_N4_N5_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N5_N6_0_100))
                 (not_occupied seg_N5_N6_0_100)
                 (not (at-segment ?a seg_N5_N6_0_100))

                 (occupied seg_N4_N5_0_86)
                 (not (not_occupied seg_N4_N5_0_86))
                 (blocked seg_N4_N5_0_86 ?a)
                 (not (not_blocked seg_N4_N5_0_86 ?a))
                 (at-segment ?a seg_N4_N5_0_86)

                 (not (blocked seg_N6_B_0_100 ?a))
                 (not_blocked seg_N6_B_0_100 ?a)

                )
)

(:action move_seg_N4_N5_0_86_seg_N4_N5_6_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_0_86)
                 (not_occupied seg_N4_N5_6_0_86)
                 (not_blocked seg_N4_N5_6_0_86 airplane_CFBEG)
                 (not_blocked seg_N4_N5_6_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_0_86))
                 (not_occupied seg_N4_N5_0_86)
                 (not (at-segment ?a seg_N4_N5_0_86))

                 (occupied seg_N4_N5_6_0_86)
                 (not (not_occupied seg_N4_N5_6_0_86))
                 (blocked seg_N4_N5_6_0_86 ?a)
                 (not (not_blocked seg_N4_N5_6_0_86 ?a))
                 (at-segment ?a seg_N4_N5_6_0_86)

                 (not (blocked seg_N5_N6_0_100 ?a))
                 (not_blocked seg_N5_N6_0_100 ?a)

                )
)

(:action move_seg_N4_N5_6_0_86_seg_N4_N5_5_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_6_0_86)
                 (not_occupied seg_N4_N5_5_0_86)
                 (not_blocked seg_N4_N5_5_0_86 airplane_CFBEG)
                 (not_blocked seg_N4_N5_5_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_6_0_86))
                 (not_occupied seg_N4_N5_6_0_86)
                 (not (at-segment ?a seg_N4_N5_6_0_86))

                 (occupied seg_N4_N5_5_0_86)
                 (not (not_occupied seg_N4_N5_5_0_86))
                 (blocked seg_N4_N5_5_0_86 ?a)
                 (not (not_blocked seg_N4_N5_5_0_86 ?a))
                 (at-segment ?a seg_N4_N5_5_0_86)

                 (not (blocked seg_N4_N5_0_86 ?a))
                 (not_blocked seg_N4_N5_0_86 ?a)

                )
)

(:action move_seg_N4_N5_5_0_86_seg_N4_N5_4_0_85_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_5_0_86)
                 (not_occupied seg_N4_N5_4_0_85)
                 (not_blocked seg_N4_N5_4_0_85 airplane_CFBEG)
                 (not_blocked seg_N4_N5_4_0_85 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_5_0_86))
                 (not_occupied seg_N4_N5_5_0_86)
                 (not (at-segment ?a seg_N4_N5_5_0_86))

                 (occupied seg_N4_N5_4_0_85)
                 (not (not_occupied seg_N4_N5_4_0_85))
                 (blocked seg_N4_N5_4_0_85 ?a)
                 (not (not_blocked seg_N4_N5_4_0_85 ?a))
                 (at-segment ?a seg_N4_N5_4_0_85)

                 (not (blocked seg_N4_N5_6_0_86 ?a))
                 (not_blocked seg_N4_N5_6_0_86 ?a)

                )
)

(:action move_seg_N4_N5_4_0_85_seg_N4_N5_3_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_4_0_85)
                 (not_occupied seg_N4_N5_3_0_86)
                 (not_blocked seg_N4_N5_3_0_86 airplane_CFBEG)
                 (not_blocked seg_N4_N5_3_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_4_0_85))
                 (not_occupied seg_N4_N5_4_0_85)
                 (not (at-segment ?a seg_N4_N5_4_0_85))

                 (occupied seg_N4_N5_3_0_86)
                 (not (not_occupied seg_N4_N5_3_0_86))
                 (blocked seg_N4_N5_3_0_86 ?a)
                 (not (not_blocked seg_N4_N5_3_0_86 ?a))
                 (at-segment ?a seg_N4_N5_3_0_86)

                 (not (blocked seg_N4_N5_5_0_86 ?a))
                 (not_blocked seg_N4_N5_5_0_86 ?a)

                )
)

(:action move_seg_N4_N5_3_0_86_seg_N4_N5_2_0_86_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_3_0_86)
                 (not_occupied seg_N4_N5_2_0_86)
                 (not_blocked seg_N4_N5_2_0_86 airplane_CFBEG)
                 (not_blocked seg_N4_N5_2_0_86 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_3_0_86))
                 (not_occupied seg_N4_N5_3_0_86)
                 (not (at-segment ?a seg_N4_N5_3_0_86))

                 (occupied seg_N4_N5_2_0_86)
                 (not (not_occupied seg_N4_N5_2_0_86))
                 (blocked seg_N4_N5_2_0_86 ?a)
                 (not (not_blocked seg_N4_N5_2_0_86 ?a))
                 (at-segment ?a seg_N4_N5_2_0_86)

                 (not (blocked seg_N4_N5_4_0_85 ?a))
                 (not_blocked seg_N4_N5_4_0_85 ?a)

                )
)

(:action move_seg_N4_N5_2_0_86_seg_N4_N5_1_0_85_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_2_0_86)
                 (not_occupied seg_N4_N5_1_0_85)
                 (not_blocked seg_N4_N5_1_0_85 airplane_CFBEG)
                 (not_blocked seg_N4_N5_1_0_85 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_2_0_86))
                 (not_occupied seg_N4_N5_2_0_86)
                 (not (at-segment ?a seg_N4_N5_2_0_86))

                 (occupied seg_N4_N5_1_0_85)
                 (not (not_occupied seg_N4_N5_1_0_85))
                 (blocked seg_N4_N5_1_0_85 ?a)
                 (not (not_blocked seg_N4_N5_1_0_85 ?a))
                 (at-segment ?a seg_N4_N5_1_0_85)

                 (not (blocked seg_N4_N5_3_0_86 ?a))
                 (not_blocked seg_N4_N5_3_0_86 ?a)

                )
)

(:action move_seg_N4_N5_1_0_85_seg_N_N4_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N4_N5_1_0_85)
                 (not_occupied seg_N_N4_0_100)
                 (not_blocked seg_N_N4_0_100 airplane_CFBEG)
                 (not_blocked seg_N_N4_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N4_N5_1_0_85))
                 (not_occupied seg_N4_N5_1_0_85)
                 (not (at-segment ?a seg_N4_N5_1_0_85))

                 (occupied seg_N_N4_0_100)
                 (not (not_occupied seg_N_N4_0_100))
                 (blocked seg_N_N4_0_100 ?a)
                 (not (not_blocked seg_N_N4_0_100 ?a))
                 (at-segment ?a seg_N_N4_0_100)

                 (not (blocked seg_N4_N5_2_0_86 ?a))
                 (not_blocked seg_N4_N5_2_0_86 ?a)

                )
)

(:action move_seg_N_N4_0_100_seg_N_C_0_100_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N4_0_100)
                 (not_occupied seg_N_C_0_100)
                 (not_blocked seg_N_C_0_100 airplane_CFBEG)
                 (not_blocked seg_N_C_0_100 airplane_DAEWH)

                 (not_occupied seg_N3_N_0_100)
              )

 :effect        (and
                 (not (occupied seg_N_N4_0_100))
                 (not_occupied seg_N_N4_0_100)
                 (not (at-segment ?a seg_N_N4_0_100))

                 (occupied seg_N_C_0_100)
                 (not (not_occupied seg_N_C_0_100))
                 (blocked seg_N_C_0_100 ?a)
                 (not (not_blocked seg_N_C_0_100 ?a))
                 (at-segment ?a seg_N_C_0_100)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N4_N5_1_0_85 ?a))
                 (not_blocked seg_N4_N5_1_0_85 ?a)

                 (blocked seg_N3_N_0_100 ?a)
                 (not (not_blocked seg_N3_N_0_100 ?a))
                )
)

(:action move_seg_N_C_0_100_seg_C_C2_1_0_83_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_C_0_100)
                 (not_occupied seg_C_C2_1_0_83)
                 (not_blocked seg_C_C2_1_0_83 airplane_CFBEG)
                 (not_blocked seg_C_C2_1_0_83 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_N_C_0_100))
                 (not_occupied seg_N_C_0_100)
                 (not (at-segment ?a seg_N_C_0_100))

                 (occupied seg_C_C2_1_0_83)
                 (not (not_occupied seg_C_C2_1_0_83))
                 (blocked seg_C_C2_1_0_83 ?a)
                 (not (not_blocked seg_C_C2_1_0_83 ?a))
                 (at-segment ?a seg_C_C2_1_0_83)

                 (not (blocked seg_N3_N_0_100 ?a))
                 (not_blocked seg_N3_N_0_100 ?a)
                 (not (blocked seg_N_N4_0_100 ?a))
                 (not_blocked seg_N_N4_0_100 ?a)

                )
)

(:action move_seg_C_C2_1_0_83_seg_C_C2_2_0_83_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C_C2_1_0_83)
                 (not_occupied seg_C_C2_2_0_83)
                 (not_blocked seg_C_C2_2_0_83 airplane_CFBEG)
                 (not_blocked seg_C_C2_2_0_83 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_1_0_83))
                 (not_occupied seg_C_C2_1_0_83)
                 (not (at-segment ?a seg_C_C2_1_0_83))

                 (occupied seg_C_C2_2_0_83)
                 (not (not_occupied seg_C_C2_2_0_83))
                 (blocked seg_C_C2_2_0_83 ?a)
                 (not (not_blocked seg_C_C2_2_0_83 ?a))
                 (at-segment ?a seg_C_C2_2_0_83)

                 (not (blocked seg_N_C_0_100 ?a))
                 (not_blocked seg_N_C_0_100 ?a)

                )
)

(:action move_seg_C_C2_2_0_83_seg_C_C2_0_84_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C_C2_2_0_83)
                 (not_occupied seg_C_C2_0_84)
                 (not_blocked seg_C_C2_0_84 airplane_CFBEG)
                 (not_blocked seg_C_C2_0_84 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_2_0_83))
                 (not_occupied seg_C_C2_2_0_83)
                 (not (at-segment ?a seg_C_C2_2_0_83))

                 (occupied seg_C_C2_0_84)
                 (not (not_occupied seg_C_C2_0_84))
                 (blocked seg_C_C2_0_84 ?a)
                 (not (not_blocked seg_C_C2_0_84 ?a))
                 (at-segment ?a seg_C_C2_0_84)

                 (not (blocked seg_C_C2_1_0_83 ?a))
                 (not_blocked seg_C_C2_1_0_83 ?a)

                )
)

(:action move_seg_C_C2_0_84_seg_C4_C5_0_50_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C_C2_0_84)
                 (not_occupied seg_C4_C5_0_50)
                 (not_blocked seg_C4_C5_0_50 airplane_CFBEG)
                 (not_blocked seg_C4_C5_0_50 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C_C2_0_84))
                 (not_occupied seg_C_C2_0_84)
                 (not (at-segment ?a seg_C_C2_0_84))

                 (occupied seg_C4_C5_0_50)
                 (not (not_occupied seg_C4_C5_0_50))
                 (blocked seg_C4_C5_0_50 ?a)
                 (not (not_blocked seg_C4_C5_0_50 ?a))
                 (at-segment ?a seg_C4_C5_0_50)

                 (not (blocked seg_C_C2_2_0_83 ?a))
                 (not_blocked seg_C_C2_2_0_83 ?a)

                )
)

(:action move_seg_C4_C5_0_50_seg_C5_C_A02_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C4_C5_0_50)
                 (not_occupied seg_C5_C_A02_0_100)
                 (not_blocked seg_C5_C_A02_0_100 airplane_CFBEG)
                 (not_blocked seg_C5_C_A02_0_100 airplane_DAEWH)

                 (not_occupied seg_C5_C6_0_50)
                 (not_occupied seg_C5_C_B02_0_100)
              )

 :effect        (and
                 (not (occupied seg_C4_C5_0_50))
                 (not_occupied seg_C4_C5_0_50)
                 (not (at-segment ?a seg_C4_C5_0_50))

                 (occupied seg_C5_C_A02_0_100)
                 (not (not_occupied seg_C5_C_A02_0_100))
                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                 (at-segment ?a seg_C5_C_A02_0_100)

                 (not (blocked seg_C_C2_0_84 ?a))
                 (not_blocked seg_C_C2_0_84 ?a)

                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (blocked seg_C5_C_B02_0_100 ?a)
                 (not (not_blocked seg_C5_C_B02_0_100 ?a))
                )
)

(:action move_seg_C5_C_A02_0_100_seg_A02_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C5_C_A02_0_100)
                 (not_occupied seg_A02_0_100)
                 (not_blocked seg_A02_0_100 airplane_CFBEG)
                 (not_blocked seg_A02_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C5_C_A02_0_100))
                 (not_occupied seg_C5_C_A02_0_100)
                 (not (at-segment ?a seg_C5_C_A02_0_100))

                 (occupied seg_A02_0_100)
                 (not (not_occupied seg_A02_0_100))
                 (blocked seg_A02_0_100 ?a)
                 (not (not_blocked seg_A02_0_100 ?a))
                 (at-segment ?a seg_A02_0_100)

                 (not (blocked seg_C4_C5_0_50 ?a))
                 (not_blocked seg_C4_C5_0_50 ?a)
                 (not (blocked seg_C5_C6_0_50 ?a))
                 (not_blocked seg_C5_C6_0_50 ?a)
                 (not (blocked seg_C5_C_B02_0_100 ?a))
                 (not_blocked seg_C5_C_B02_0_100 ?a)

                )
)

(:action move_seg_B02_0_100_seg_C5_C_B02_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_B02_0_100)
                 (not_occupied seg_C5_C_B02_0_100)
                 (not_blocked seg_C5_C_B02_0_100 airplane_CFBEG)
                 (not_blocked seg_C5_C_B02_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_B02_0_100))
                 (not_occupied seg_B02_0_100)
                 (not (at-segment ?a seg_B02_0_100))

                 (occupied seg_C5_C_B02_0_100)
                 (not (not_occupied seg_C5_C_B02_0_100))
                 (blocked seg_C5_C_B02_0_100 ?a)
                 (not (not_blocked seg_C5_C_B02_0_100 ?a))
                 (at-segment ?a seg_C5_C_B02_0_100)


                )
)

(:action move_seg_C5_C_B02_0_100_seg_C5_C6_0_50_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C5_C_B02_0_100)
                 (not_occupied seg_C5_C6_0_50)
                 (not_blocked seg_C5_C6_0_50 airplane_CFBEG)
                 (not_blocked seg_C5_C6_0_50 airplane_DAEWH)

                 (not_occupied seg_C4_C5_0_50)
                 (not_occupied seg_C5_C_A02_0_100)
              )

 :effect        (and
                 (not (occupied seg_C5_C_B02_0_100))
                 (not_occupied seg_C5_C_B02_0_100)
                 (not (at-segment ?a seg_C5_C_B02_0_100))

                 (occupied seg_C5_C6_0_50)
                 (not (not_occupied seg_C5_C6_0_50))
                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (at-segment ?a seg_C5_C6_0_50)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_B02_0_100 ?a))
                 (not_blocked seg_B02_0_100 ?a)

                 (blocked seg_C4_C5_0_50 ?a)
                 (not (not_blocked seg_C4_C5_0_50 ?a))
                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                )
)

(:action move_seg_C4_C5_0_50_seg_C5_C_B02_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C4_C5_0_50)
                 (not_occupied seg_C5_C_B02_0_100)
                 (not_blocked seg_C5_C_B02_0_100 airplane_CFBEG)
                 (not_blocked seg_C5_C_B02_0_100 airplane_DAEWH)

                 (not_occupied seg_C5_C6_0_50)
                 (not_occupied seg_C5_C_A02_0_100)
              )

 :effect        (and
                 (not (occupied seg_C4_C5_0_50))
                 (not_occupied seg_C4_C5_0_50)
                 (not (at-segment ?a seg_C4_C5_0_50))

                 (occupied seg_C5_C_B02_0_100)
                 (not (not_occupied seg_C5_C_B02_0_100))
                 (blocked seg_C5_C_B02_0_100 ?a)
                 (not (not_blocked seg_C5_C_B02_0_100 ?a))
                 (at-segment ?a seg_C5_C_B02_0_100)

                 (not (blocked seg_C_C2_0_84 ?a))
                 (not_blocked seg_C_C2_0_84 ?a)

                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                )
)

(:action move_seg_C5_C_B02_0_100_seg_B02_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C5_C_B02_0_100)
                 (not_occupied seg_B02_0_100)
                 (not_blocked seg_B02_0_100 airplane_CFBEG)
                 (not_blocked seg_B02_0_100 airplane_DAEWH)

              )

 :effect        (and
                 (not (occupied seg_C5_C_B02_0_100))
                 (not_occupied seg_C5_C_B02_0_100)
                 (not (at-segment ?a seg_C5_C_B02_0_100))

                 (occupied seg_B02_0_100)
                 (not (not_occupied seg_B02_0_100))
                 (blocked seg_B02_0_100 ?a)
                 (not (not_blocked seg_B02_0_100 ?a))
                 (at-segment ?a seg_B02_0_100)

                 (not (blocked seg_C4_C5_0_50 ?a))
                 (not_blocked seg_C4_C5_0_50 ?a)
                 (not (blocked seg_C5_C6_0_50 ?a))
                 (not_blocked seg_C5_C6_0_50 ?a)
                 (not (blocked seg_C5_C_A02_0_100 ?a))
                 (not_blocked seg_C5_C_A02_0_100 ?a)

                )
)

(:action pushback_seg_A02_0_100_seg_C5_C_A02_0_100_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_A02_0_100)
                 (not_occupied seg_C5_C_A02_0_100)
                 (not_blocked seg_C5_C_A02_0_100 airplane_CFBEG)
                 (not_blocked seg_C5_C_A02_0_100 airplane_DAEWH)
                )

 :effect        (and
                 (not (occupied seg_A02_0_100))
                 (not_occupied seg_A02_0_100)
                 (not (blocked seg_A02_0_100 ?a))
                 (not_blocked seg_A02_0_100 ?a)
                 (not (at-segment ?a seg_A02_0_100))

                 (occupied seg_C5_C_A02_0_100)
                 (not (not_occupied seg_C5_C_A02_0_100))
                 (blocked seg_C5_C_A02_0_100 ?a)
                 (not (not_blocked seg_C5_C_A02_0_100 ?a))
                 (at-segment ?a seg_C5_C_A02_0_100)

                )
)

(:action pushback_seg_C5_C_A02_0_100_seg_C5_C6_0_50_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C5_C_A02_0_100)
                 (not_occupied seg_C5_C6_0_50)
                 (not_blocked seg_C5_C6_0_50 airplane_CFBEG)
                 (not_blocked seg_C5_C6_0_50 airplane_DAEWH)
                )

 :effect        (and
                 (not (occupied seg_C5_C_A02_0_100))
                 (not_occupied seg_C5_C_A02_0_100)
                 (not (blocked seg_C5_C_A02_0_100 ?a))
                 (not_blocked seg_C5_C_A02_0_100 ?a)
                 (not (at-segment ?a seg_C5_C_A02_0_100))

                 (occupied seg_C5_C6_0_50)
                 (not (not_occupied seg_C5_C6_0_50))
                 (blocked seg_C5_C6_0_50 ?a)
                 (not (not_blocked seg_C5_C6_0_50 ?a))
                 (at-segment ?a seg_C5_C6_0_50)
                 (not (facing ?a south))
                 (facing ?a north)

                )
)

(:action pushback_seg_C5_C6_0_50_seg_C6_C7_0_100_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C5_C6_0_50)
                 (not_occupied seg_C6_C7_0_100)
                 (not_blocked seg_C6_C7_0_100 airplane_CFBEG)
                 (not_blocked seg_C6_C7_0_100 airplane_DAEWH)
                )

 :effect        (and
                 (not (occupied seg_C5_C6_0_50))
                 (not_occupied seg_C5_C6_0_50)
                 (not (blocked seg_C5_C6_0_50 ?a))
                 (not_blocked seg_C5_C6_0_50 ?a)
                 (not (at-segment ?a seg_C5_C6_0_50))

                 (occupied seg_C6_C7_0_100)
                 (not (not_occupied seg_C6_C7_0_100))
                 (blocked seg_C6_C7_0_100 ?a)
                 (not (not_blocked seg_C6_C7_0_100 ?a))
                 (at-segment ?a seg_C6_C7_0_100)

                )
)


(:action takeoff_seg_27_0_150_north

 :parameters (?a - airplane)

 :precondition (and (at-segment ?a seg_27_0_150)
                    (facing ?a north)
                    (is-moving ?a)
               )

 :effect (and (not (occupied seg_27_0_150))
              (not_occupied seg_27_0_150)
              (not (blocked seg_27_0_150 ?a))
              (not_blocked seg_27_0_150 ?a)
              (not (at-segment ?a seg_27_0_150))
              (airborne ?a seg_27_0_150)
              (not (is-moving ?a ))
              (not (blocked seg_B_27_0_100 ?a))
              (not_blocked seg_B_27_0_100 ?a)
         )
)

(:action takeoff_seg_09_0_150_south

 :parameters (?a - airplane)

 :precondition (and (at-segment ?a seg_09_0_150)
                    (facing ?a south)
                    (is-moving ?a)
               )

 :effect (and (not (occupied seg_09_0_150))
              (not_occupied seg_09_0_150)
              (not (blocked seg_09_0_150 ?a))
              (not_blocked seg_09_0_150 ?a)
              (not (at-segment ?a seg_09_0_150))
              (airborne ?a seg_09_0_150)
              (not (is-moving ?a ))
              (not (blocked seg_A_09_0_100 ?a))
              (not_blocked seg_A_09_0_100 ?a)
         )
)


(:action startup_seg_A_09_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A_09_0_100)
                    (not_occupied seg_09Help_0_100)
                    (not_occupied seg_09_0_150)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_09Help_0_100 ?a)
                    (not (not_blocked seg_09Help_0_100 ?a))
                    (blocked seg_09_0_150 ?a)
                    (not (not_blocked seg_09_0_150 ?a))
         )
)
(:action startup_seg_A_09_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A_09_0_100)
                    (not_occupied seg_N1_A_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_A_0_100 ?a)
                    (not (not_blocked seg_N1_A_0_100 ?a))
         )
)
(:action startup_seg_B_27_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_B_27_0_100)
                    (not_occupied seg_27_0_150)
                    (not_occupied seg_27Help_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_27_0_150 ?a)
                    (not (not_blocked seg_27_0_150 ?a))
                    (blocked seg_27Help_0_100 ?a)
                    (not (not_blocked seg_27Help_0_100 ?a))
         )
)
(:action startup_seg_B_27_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_B_27_0_100)
                    (not_occupied seg_N6_B_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N6_B_0_100 ?a)
                    (not (not_blocked seg_N6_B_0_100 ?a))
         )
)
(:action startup_seg_N1_N2_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_N2_0_100)
                    (not_occupied seg_N2_N3_1_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_1_0_86 ?a)
                    (not (not_blocked seg_N2_N3_1_0_86 ?a))
         )
)
(:action startup_seg_N1_N2_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_N2_0_100)
                    (not_occupied seg_N1_A_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_A_0_100 ?a)
                    (not (not_blocked seg_N1_A_0_100 ?a))
         )
)
(:action startup_seg_N1_A_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_A_0_100)
                    (not_occupied seg_A_09_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A_09_0_100 ?a)
                    (not (not_blocked seg_A_09_0_100 ?a))
         )
)
(:action startup_seg_N1_A_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_A_0_100)
                    (not_occupied seg_N1_N2_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_N2_0_100 ?a)
                    (not (not_blocked seg_N1_N2_0_100 ?a))
         )
)
(:action startup_seg_N2_N3_1_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_1_0_86)
                    (not_occupied seg_N2_N3_2_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_2_0_86 ?a)
                    (not (not_blocked seg_N2_N3_2_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_1_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_1_0_86)
                    (not_occupied seg_N1_N2_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_N2_0_100 ?a)
                    (not (not_blocked seg_N1_N2_0_100 ?a))
         )
)
(:action startup_seg_N2_N3_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_0_85)
                    (not_occupied seg_N3_N_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N3_N_0_100 ?a)
                    (not (not_blocked seg_N3_N_0_100 ?a))
         )
)
(:action startup_seg_N2_N3_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_0_85)
                    (not_occupied seg_N2_N3_6_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_6_0_86 ?a)
                    (not (not_blocked seg_N2_N3_6_0_86 ?a))
         )
)
(:action startup_seg_N3_N_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N3_N_0_100)
                    (not_occupied seg_N_N4_0_100)
                    (not_occupied seg_N_C_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N4_0_100 ?a)
                    (not (not_blocked seg_N_N4_0_100 ?a))
                    (blocked seg_N_C_0_100 ?a)
                    (not (not_blocked seg_N_C_0_100 ?a))
         )
)
(:action startup_seg_N3_N_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N3_N_0_100)
                    (not_occupied seg_N2_N3_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_0_85 ?a)
                    (not (not_blocked seg_N2_N3_0_85 ?a))
         )
)
(:action startup_seg_N_N4_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N4_0_100)
                    (not_occupied seg_N4_N5_1_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_1_0_85 ?a)
                    (not (not_blocked seg_N4_N5_1_0_85 ?a))
         )
)
(:action startup_seg_N_N4_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N4_0_100)
                    (not_occupied seg_N3_N_0_100)
                    (not_occupied seg_N_C_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N3_N_0_100 ?a)
                    (not (not_blocked seg_N3_N_0_100 ?a))
                    (blocked seg_N_C_0_100 ?a)
                    (not (not_blocked seg_N_C_0_100 ?a))
         )
)
(:action startup_seg_N_C_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_C_0_100)
                    (not_occupied seg_C_C2_1_0_83)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_1_0_83 ?a)
                    (not (not_blocked seg_C_C2_1_0_83 ?a))
         )
)
(:action startup_seg_N_C_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_C_0_100)
                    (not_occupied seg_N3_N_0_100)
                    (not_occupied seg_N_N4_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N3_N_0_100 ?a)
                    (not (not_blocked seg_N3_N_0_100 ?a))
                    (blocked seg_N_N4_0_100 ?a)
                    (not (not_blocked seg_N_N4_0_100 ?a))
         )
)
(:action startup_seg_N4_N5_1_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_1_0_85)
                    (not_occupied seg_N4_N5_2_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_2_0_86 ?a)
                    (not (not_blocked seg_N4_N5_2_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_1_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_1_0_85)
                    (not_occupied seg_N_N4_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N4_0_100 ?a)
                    (not (not_blocked seg_N_N4_0_100 ?a))
         )
)
(:action startup_seg_N4_N5_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_0_86)
                    (not_occupied seg_N5_N6_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N5_N6_0_100 ?a)
                    (not (not_blocked seg_N5_N6_0_100 ?a))
         )
)
(:action startup_seg_N4_N5_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_0_86)
                    (not_occupied seg_N4_N5_6_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_6_0_86 ?a)
                    (not (not_blocked seg_N4_N5_6_0_86 ?a))
         )
)
(:action startup_seg_N5_N6_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N5_N6_0_100)
                    (not_occupied seg_N6_B_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N6_B_0_100 ?a)
                    (not (not_blocked seg_N6_B_0_100 ?a))
         )
)
(:action startup_seg_N5_N6_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N5_N6_0_100)
                    (not_occupied seg_N4_N5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_0_86 ?a)
                    (not (not_blocked seg_N4_N5_0_86 ?a))
         )
)
(:action startup_seg_N6_B_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N6_B_0_100)
                    (not_occupied seg_B_27_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_B_27_0_100 ?a)
                    (not (not_blocked seg_B_27_0_100 ?a))
         )
)
(:action startup_seg_N6_B_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N6_B_0_100)
                    (not_occupied seg_N5_N6_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N5_N6_0_100 ?a)
                    (not (not_blocked seg_N5_N6_0_100 ?a))
         )
)
(:action startup_seg_C_C2_1_0_83_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_1_0_83)
                    (not_occupied seg_C_C2_2_0_83)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_2_0_83 ?a)
                    (not (not_blocked seg_C_C2_2_0_83 ?a))
         )
)
(:action startup_seg_C_C2_1_0_83_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_1_0_83)
                    (not_occupied seg_N_C_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_C_0_100 ?a)
                    (not (not_blocked seg_N_C_0_100 ?a))
         )
)
(:action startup_seg_C_C2_0_84_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_0_84)
                    (not_occupied seg_C4_C5_0_50)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_C5_0_50 ?a)
                    (not (not_blocked seg_C4_C5_0_50 ?a))
         )
)
(:action startup_seg_C_C2_0_84_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_0_84)
                    (not_occupied seg_C_C2_2_0_83)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_2_0_83 ?a)
                    (not (not_blocked seg_C_C2_2_0_83 ?a))
         )
)
(:action startup_seg_C4_C5_0_50_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_C5_0_50)
                    (not_occupied seg_C5_C6_0_50)
                    (not_occupied seg_C5_C_A02_0_100)
                    (not_occupied seg_C5_C_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C5_C6_0_50 ?a)
                    (not (not_blocked seg_C5_C6_0_50 ?a))
                    (blocked seg_C5_C_A02_0_100 ?a)
                    (not (not_blocked seg_C5_C_A02_0_100 ?a))
                    (blocked seg_C5_C_B02_0_100 ?a)
                    (not (not_blocked seg_C5_C_B02_0_100 ?a))
         )
)
(:action startup_seg_C4_C5_0_50_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_C5_0_50)
                    (not_occupied seg_C_C2_0_84)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_0_84 ?a)
                    (not (not_blocked seg_C_C2_0_84 ?a))
         )
)
(:action startup_seg_C5_C6_0_50_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C6_0_50)
                    (not_occupied seg_C6_C7_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C6_C7_0_100 ?a)
                    (not (not_blocked seg_C6_C7_0_100 ?a))
         )
)
(:action startup_seg_C5_C6_0_50_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C6_0_50)
                    (not_occupied seg_C4_C5_0_50)
                    (not_occupied seg_C5_C_A02_0_100)
                    (not_occupied seg_C5_C_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_C5_0_50 ?a)
                    (not (not_blocked seg_C4_C5_0_50 ?a))
                    (blocked seg_C5_C_A02_0_100 ?a)
                    (not (not_blocked seg_C5_C_A02_0_100 ?a))
                    (blocked seg_C5_C_B02_0_100 ?a)
                    (not (not_blocked seg_C5_C_B02_0_100 ?a))
         )
)
(:action startup_seg_C5_C_A02_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C_A02_0_100)
                    (not_occupied seg_A02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A02_0_100 ?a)
                    (not (not_blocked seg_A02_0_100 ?a))
         )
)
(:action startup_seg_C5_C_A02_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C_A02_0_100)
                    (not_occupied seg_C4_C5_0_50)
                    (not_occupied seg_C5_C6_0_50)
                    (not_occupied seg_C5_C_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_C5_0_50 ?a)
                    (not (not_blocked seg_C4_C5_0_50 ?a))
                    (blocked seg_C5_C6_0_50 ?a)
                    (not (not_blocked seg_C5_C6_0_50 ?a))
                    (blocked seg_C5_C_B02_0_100 ?a)
                    (not (not_blocked seg_C5_C_B02_0_100 ?a))
         )
)
(:action startup_seg_C5_C_B02_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C_B02_0_100)
                    (not_occupied seg_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_B02_0_100 ?a)
                    (not (not_blocked seg_B02_0_100 ?a))
         )
)
(:action startup_seg_C5_C_B02_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C5_C_B02_0_100)
                    (not_occupied seg_C4_C5_0_50)
                    (not_occupied seg_C5_C6_0_50)
                    (not_occupied seg_C5_C_A02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_C5_0_50 ?a)
                    (not (not_blocked seg_C4_C5_0_50 ?a))
                    (blocked seg_C5_C6_0_50 ?a)
                    (not (not_blocked seg_C5_C6_0_50 ?a))
                    (blocked seg_C5_C_A02_0_100 ?a)
                    (not (not_blocked seg_C5_C_A02_0_100 ?a))
         )
)
(:action startup_seg_C6_C7_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C6_C7_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_C6_C7_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C6_C7_0_100)
                    (not_occupied seg_C5_C6_0_50)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C5_C6_0_50 ?a)
                    (not (not_blocked seg_C5_C6_0_50 ?a))
         )
)
(:action park_seg_A02_0_100_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_A02_0_100)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_A02_0_100)
              (not (is-moving ?a))
         )
)
(:action park_seg_A02_0_100_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_A02_0_100)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_A02_0_100)
              (not (is-moving ?a))
              (not (blocked seg_C5_C_A02_0_100 ?a))
              (not_blocked seg_C5_C_A02_0_100 ?a)
         )
)
(:action startup_seg_A02_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_A02_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A02_0_100)
                    (not_occupied seg_C5_C_A02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C5_C_A02_0_100 ?a)
                    (not (not_blocked seg_C5_C_A02_0_100 ?a))
         )
)
(:action park_seg_B02_0_100_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_B02_0_100)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_B02_0_100)
              (not (is-moving ?a))
         )
)
(:action park_seg_B02_0_100_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_B02_0_100)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_B02_0_100)
              (not (is-moving ?a))
              (not (blocked seg_C5_C_B02_0_100 ?a))
              (not_blocked seg_C5_C_B02_0_100 ?a)
         )
)
(:action startup_seg_B02_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_B02_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_B02_0_100)
                    (not_occupied seg_C5_C_B02_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C5_C_B02_0_100 ?a)
                    (not (not_blocked seg_C5_C_B02_0_100 ?a))
         )
)
(:action startup_seg_N2_N3_2_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_2_0_86)
                    (not_occupied seg_N2_N3_3_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_3_0_86 ?a)
                    (not (not_blocked seg_N2_N3_3_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_2_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_2_0_86)
                    (not_occupied seg_N2_N3_1_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_1_0_86 ?a)
                    (not (not_blocked seg_N2_N3_1_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_3_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_3_0_86)
                    (not_occupied seg_N2_N3_4_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_4_0_85 ?a)
                    (not (not_blocked seg_N2_N3_4_0_85 ?a))
         )
)
(:action startup_seg_N2_N3_3_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_3_0_86)
                    (not_occupied seg_N2_N3_2_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_2_0_86 ?a)
                    (not (not_blocked seg_N2_N3_2_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_4_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_4_0_85)
                    (not_occupied seg_N2_N3_5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_5_0_86 ?a)
                    (not (not_blocked seg_N2_N3_5_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_4_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_4_0_85)
                    (not_occupied seg_N2_N3_3_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_3_0_86 ?a)
                    (not (not_blocked seg_N2_N3_3_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_5_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_5_0_86)
                    (not_occupied seg_N2_N3_6_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_6_0_86 ?a)
                    (not (not_blocked seg_N2_N3_6_0_86 ?a))
         )
)
(:action startup_seg_N2_N3_5_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_5_0_86)
                    (not_occupied seg_N2_N3_4_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_4_0_85 ?a)
                    (not (not_blocked seg_N2_N3_4_0_85 ?a))
         )
)
(:action startup_seg_N2_N3_6_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_6_0_86)
                    (not_occupied seg_N2_N3_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_0_85 ?a)
                    (not (not_blocked seg_N2_N3_0_85 ?a))
         )
)
(:action startup_seg_N2_N3_6_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_N3_6_0_86)
                    (not_occupied seg_N2_N3_5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_N3_5_0_86 ?a)
                    (not (not_blocked seg_N2_N3_5_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_2_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_2_0_86)
                    (not_occupied seg_N4_N5_3_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_3_0_86 ?a)
                    (not (not_blocked seg_N4_N5_3_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_2_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_2_0_86)
                    (not_occupied seg_N4_N5_1_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_1_0_85 ?a)
                    (not (not_blocked seg_N4_N5_1_0_85 ?a))
         )
)
(:action startup_seg_N4_N5_3_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_3_0_86)
                    (not_occupied seg_N4_N5_4_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_4_0_85 ?a)
                    (not (not_blocked seg_N4_N5_4_0_85 ?a))
         )
)
(:action startup_seg_N4_N5_3_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_3_0_86)
                    (not_occupied seg_N4_N5_2_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_2_0_86 ?a)
                    (not (not_blocked seg_N4_N5_2_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_4_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_4_0_85)
                    (not_occupied seg_N4_N5_5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_5_0_86 ?a)
                    (not (not_blocked seg_N4_N5_5_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_4_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_4_0_85)
                    (not_occupied seg_N4_N5_3_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_3_0_86 ?a)
                    (not (not_blocked seg_N4_N5_3_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_5_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_5_0_86)
                    (not_occupied seg_N4_N5_6_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_6_0_86 ?a)
                    (not (not_blocked seg_N4_N5_6_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_5_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_5_0_86)
                    (not_occupied seg_N4_N5_4_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_4_0_85 ?a)
                    (not (not_blocked seg_N4_N5_4_0_85 ?a))
         )
)
(:action startup_seg_N4_N5_6_0_86_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_6_0_86)
                    (not_occupied seg_N4_N5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_0_86 ?a)
                    (not (not_blocked seg_N4_N5_0_86 ?a))
         )
)
(:action startup_seg_N4_N5_6_0_86_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N4_N5_6_0_86)
                    (not_occupied seg_N4_N5_5_0_86)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N4_N5_5_0_86 ?a)
                    (not (not_blocked seg_N4_N5_5_0_86 ?a))
         )
)
(:action startup_seg_C_C2_2_0_83_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_2_0_83)
                    (not_occupied seg_C_C2_0_84)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_0_84 ?a)
                    (not (not_blocked seg_C_C2_0_84 ?a))
         )
)
(:action startup_seg_C_C2_2_0_83_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C_C2_2_0_83)
                    (not_occupied seg_C_C2_1_0_83)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C_C2_1_0_83 ?a)
                    (not (not_blocked seg_C_C2_1_0_83 ?a))
         )
)
