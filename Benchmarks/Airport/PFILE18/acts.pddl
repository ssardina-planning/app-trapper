(:action move_seg_p141_0_75_seg_W1_141b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p141_0_75)
                 (not_occupied seg_W1_141b_0_45)
                 (not_blocked seg_W1_141b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_141b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p141_0_75))
                 (not_occupied seg_p141_0_75)
                 (not (at-segment ?a seg_p141_0_75))

                 (occupied seg_W1_141b_0_45)
                 (not (not_occupied seg_W1_141b_0_45))
                 (blocked seg_W1_141b_0_45 ?a)
                 (not (not_blocked seg_W1_141b_0_45 ?a))
                 (at-segment ?a seg_W1_141b_0_45)


                )
)

(:action move_seg_W1_141b_0_45_seg_W1_141c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_141b_0_45)
                 (not_occupied seg_W1_141c_0_34)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_141a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_141b_0_45))
                 (not_occupied seg_W1_141b_0_45)
                 (not (at-segment ?a seg_W1_141b_0_45))

                 (occupied seg_W1_141c_0_34)
                 (not (not_occupied seg_W1_141c_0_34))
                 (blocked seg_W1_141c_0_34 ?a)
                 (not (not_blocked seg_W1_141c_0_34 ?a))
                 (at-segment ?a seg_W1_141c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p141_0_75 ?a))
                 (not_blocked seg_p141_0_75 ?a)

                 (blocked seg_W1_141a_0_34 ?a)
                 (not (not_blocked seg_W1_141a_0_34 ?a))
                )
)

(:action move_seg_W1_141c_0_34_seg_W1_142a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_141c_0_34)
                 (not_occupied seg_W1_142a_0_34)
                 (not_blocked seg_W1_142a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_142a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_141c_0_34))
                 (not_occupied seg_W1_141c_0_34)
                 (not (at-segment ?a seg_W1_141c_0_34))

                 (occupied seg_W1_142a_0_34)
                 (not (not_occupied seg_W1_142a_0_34))
                 (blocked seg_W1_142a_0_34 ?a)
                 (not (not_blocked seg_W1_142a_0_34 ?a))
                 (at-segment ?a seg_W1_142a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_141a_0_34 ?a))
                 (not_blocked seg_W1_141a_0_34 ?a)
                 (not (blocked seg_W1_141b_0_45 ?a))
                 (not_blocked seg_W1_141b_0_45 ?a)

                )
)

(:action move_seg_W1_142a_0_34_seg_W1_141c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_142a_0_34)
                 (not_occupied seg_W1_141c_0_34)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_142a_0_34))
                 (not_occupied seg_W1_142a_0_34)
                 (not (at-segment ?a seg_W1_142a_0_34))

                 (occupied seg_W1_141c_0_34)
                 (not (not_occupied seg_W1_141c_0_34))
                 (blocked seg_W1_141c_0_34 ?a)
                 (not (not_blocked seg_W1_141c_0_34 ?a))
                 (at-segment ?a seg_W1_141c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_142b_0_45 ?a))
                 (not_blocked seg_W1_142b_0_45 ?a)
                 (not (blocked seg_W1_142c_0_34 ?a))
                 (not_blocked seg_W1_142c_0_34 ?a)

                )
)

(:action move_seg_W1_141c_0_34_seg_W1_141a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_141c_0_34)
                 (not_occupied seg_W1_141a_0_34)
                 (not_blocked seg_W1_141a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_141a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_141b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_141c_0_34))
                 (not_occupied seg_W1_141c_0_34)
                 (not (at-segment ?a seg_W1_141c_0_34))

                 (occupied seg_W1_141a_0_34)
                 (not (not_occupied seg_W1_141a_0_34))
                 (blocked seg_W1_141a_0_34 ?a)
                 (not (not_blocked seg_W1_141a_0_34 ?a))
                 (at-segment ?a seg_W1_141a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_142a_0_34 ?a))
                 (not_blocked seg_W1_142a_0_34 ?a)

                 (blocked seg_W1_141b_0_45 ?a)
                 (not (not_blocked seg_W1_141b_0_45 ?a))
                )
)

(:action move_seg_W1_141a_0_34_seg_W1_C1c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_141a_0_34)
                 (not_occupied seg_W1_C1c_0_34)
                 (not_blocked seg_W1_C1c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C1c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_141a_0_34))
                 (not_occupied seg_W1_141a_0_34)
                 (not (at-segment ?a seg_W1_141a_0_34))

                 (occupied seg_W1_C1c_0_34)
                 (not (not_occupied seg_W1_C1c_0_34))
                 (blocked seg_W1_C1c_0_34 ?a)
                 (not (not_blocked seg_W1_C1c_0_34 ?a))
                 (at-segment ?a seg_W1_C1c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_141b_0_45 ?a))
                 (not_blocked seg_W1_141b_0_45 ?a)
                 (not (blocked seg_W1_141c_0_34 ?a))
                 (not_blocked seg_W1_141c_0_34 ?a)

                )
)

(:action move_seg_W1_C1c_0_34_seg_W1_C1a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C1c_0_34)
                 (not_occupied seg_W1_C1a_0_60)
                 (not_blocked seg_W1_C1a_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_C1a_0_60 airplane_CFBE1)

                 (not_occupied seg_W1_C1b_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C1c_0_34))
                 (not_occupied seg_W1_C1c_0_34)
                 (not (at-segment ?a seg_W1_C1c_0_34))

                 (occupied seg_W1_C1a_0_60)
                 (not (not_occupied seg_W1_C1a_0_60))
                 (blocked seg_W1_C1a_0_60 ?a)
                 (not (not_blocked seg_W1_C1a_0_60 ?a))
                 (at-segment ?a seg_W1_C1a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_141a_0_34 ?a))
                 (not_blocked seg_W1_141a_0_34 ?a)

                 (blocked seg_W1_C1b_0_60 ?a)
                 (not (not_blocked seg_W1_C1b_0_60 ?a))
                )
)

(:action move_seg_W1_C1a_0_60_seg_N1_0_108_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C1a_0_60)
                 (not_occupied seg_N1_0_108)
                 (not_blocked seg_N1_0_108 airplane_CFBEG)
                 (not_blocked seg_N1_0_108 airplane_DAEWH)
                 (not_blocked seg_N1_0_108 airplane_DAEW3)
                 (not_blocked seg_N1_0_108 airplane_DAEW7)
                 (not_blocked seg_N1_0_108 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C1a_0_60))
                 (not_occupied seg_W1_C1a_0_60)
                 (not (at-segment ?a seg_W1_C1a_0_60))

                 (occupied seg_N1_0_108)
                 (not (not_occupied seg_N1_0_108))
                 (blocked seg_N1_0_108 ?a)
                 (not (not_blocked seg_N1_0_108 ?a))
                 (at-segment ?a seg_N1_0_108)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C1b_0_60 ?a))
                 (not_blocked seg_W1_C1b_0_60 ?a)
                 (not (blocked seg_W1_C1c_0_34 ?a))
                 (not_blocked seg_W1_C1c_0_34 ?a)

                )
)

(:action move_seg_N1_0_108_seg_N_A3c_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N1_0_108)
                 (not_occupied seg_N_A3c_0_60)
                 (not_blocked seg_N_A3c_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A3c_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A3c_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A3c_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A3c_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N1_0_108))
                 (not_occupied seg_N1_0_108)
                 (not (at-segment ?a seg_N1_0_108))

                 (occupied seg_N_A3c_0_60)
                 (not (not_occupied seg_N_A3c_0_60))
                 (blocked seg_N_A3c_0_60 ?a)
                 (not (not_blocked seg_N_A3c_0_60 ?a))
                 (at-segment ?a seg_N_A3c_0_60)

                 (not (blocked seg_W1_C1a_0_60 ?a))
                 (not_blocked seg_W1_C1a_0_60 ?a)

                )
)

(:action move_seg_N_A3c_0_60_seg_N_A3d_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A3c_0_60)
                 (not_occupied seg_N_A3d_0_60)
                 (not_blocked seg_N_A3d_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A3d_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A3d_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A3d_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A3d_0_60 airplane_CFBE1)

                 (not_occupied seg_N_A3a_0_60)
                 (not_occupied seg_N_A3b_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_A3c_0_60))
                 (not_occupied seg_N_A3c_0_60)
                 (not (at-segment ?a seg_N_A3c_0_60))

                 (occupied seg_N_A3d_0_60)
                 (not (not_occupied seg_N_A3d_0_60))
                 (blocked seg_N_A3d_0_60 ?a)
                 (not (not_blocked seg_N_A3d_0_60 ?a))
                 (at-segment ?a seg_N_A3d_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N1_0_108 ?a))
                 (not_blocked seg_N1_0_108 ?a)

                 (blocked seg_N_A3a_0_60 ?a)
                 (not (not_blocked seg_N_A3a_0_60 ?a))
                 (blocked seg_N_A3b_0_60 ?a)
                 (not (not_blocked seg_N_A3b_0_60 ?a))
                )
)

(:action move_seg_N_A3d_0_60_seg_N_A2A3f_0_115_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A3d_0_60)
                 (not_occupied seg_N_A2A3f_0_115)
                 (not_blocked seg_N_A2A3f_0_115 airplane_CFBEG)
                 (not_blocked seg_N_A2A3f_0_115 airplane_DAEWH)
                 (not_blocked seg_N_A2A3f_0_115 airplane_DAEW3)
                 (not_blocked seg_N_A2A3f_0_115 airplane_DAEW7)
                 (not_blocked seg_N_A2A3f_0_115 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A3d_0_60))
                 (not_occupied seg_N_A3d_0_60)
                 (not (at-segment ?a seg_N_A3d_0_60))

                 (occupied seg_N_A2A3f_0_115)
                 (not (not_occupied seg_N_A2A3f_0_115))
                 (blocked seg_N_A2A3f_0_115 ?a)
                 (not (not_blocked seg_N_A2A3f_0_115 ?a))
                 (at-segment ?a seg_N_A2A3f_0_115)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A3a_0_60 ?a))
                 (not_blocked seg_N_A3a_0_60 ?a)
                 (not (blocked seg_N_A3b_0_60 ?a))
                 (not_blocked seg_N_A3b_0_60 ?a)
                 (not (blocked seg_N_A3c_0_60 ?a))
                 (not_blocked seg_N_A3c_0_60 ?a)

                )
)

(:action move_seg_N_A2A3f_0_115_seg_N_A2A3e_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3f_0_115)
                 (not_occupied seg_N_A2A3e_0_75)
                 (not_blocked seg_N_A2A3e_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A2A3e_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A2A3e_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A2A3e_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A2A3e_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3f_0_115))
                 (not_occupied seg_N_A2A3f_0_115)
                 (not (at-segment ?a seg_N_A2A3f_0_115))

                 (occupied seg_N_A2A3e_0_75)
                 (not (not_occupied seg_N_A2A3e_0_75))
                 (blocked seg_N_A2A3e_0_75 ?a)
                 (not (not_blocked seg_N_A2A3e_0_75 ?a))
                 (at-segment ?a seg_N_A2A3e_0_75)

                 (not (blocked seg_N_A3d_0_60 ?a))
                 (not_blocked seg_N_A3d_0_60 ?a)

                )
)

(:action move_seg_N_A2A3e_0_75_seg_N_A2A3d_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3e_0_75)
                 (not_occupied seg_N_A2A3d_0_75)
                 (not_blocked seg_N_A2A3d_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A2A3d_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A2A3d_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A2A3d_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A2A3d_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3e_0_75))
                 (not_occupied seg_N_A2A3e_0_75)
                 (not (at-segment ?a seg_N_A2A3e_0_75))

                 (occupied seg_N_A2A3d_0_75)
                 (not (not_occupied seg_N_A2A3d_0_75))
                 (blocked seg_N_A2A3d_0_75 ?a)
                 (not (not_blocked seg_N_A2A3d_0_75 ?a))
                 (at-segment ?a seg_N_A2A3d_0_75)

                 (not (blocked seg_N_A2A3f_0_115 ?a))
                 (not_blocked seg_N_A2A3f_0_115 ?a)

                )
)

(:action move_seg_N_A2A3d_0_75_seg_N_A2A3c_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3d_0_75)
                 (not_occupied seg_N_A2A3c_0_75)
                 (not_blocked seg_N_A2A3c_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A2A3c_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A2A3c_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A2A3c_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A2A3c_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3d_0_75))
                 (not_occupied seg_N_A2A3d_0_75)
                 (not (at-segment ?a seg_N_A2A3d_0_75))

                 (occupied seg_N_A2A3c_0_75)
                 (not (not_occupied seg_N_A2A3c_0_75))
                 (blocked seg_N_A2A3c_0_75 ?a)
                 (not (not_blocked seg_N_A2A3c_0_75 ?a))
                 (at-segment ?a seg_N_A2A3c_0_75)

                 (not (blocked seg_N_A2A3e_0_75 ?a))
                 (not_blocked seg_N_A2A3e_0_75 ?a)

                )
)

(:action move_seg_N_A2A3c_0_75_seg_N_A2A3b_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3c_0_75)
                 (not_occupied seg_N_A2A3b_0_75)
                 (not_blocked seg_N_A2A3b_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A2A3b_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A2A3b_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A2A3b_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A2A3b_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3c_0_75))
                 (not_occupied seg_N_A2A3c_0_75)
                 (not (at-segment ?a seg_N_A2A3c_0_75))

                 (occupied seg_N_A2A3b_0_75)
                 (not (not_occupied seg_N_A2A3b_0_75))
                 (blocked seg_N_A2A3b_0_75 ?a)
                 (not (not_blocked seg_N_A2A3b_0_75 ?a))
                 (at-segment ?a seg_N_A2A3b_0_75)

                 (not (blocked seg_N_A2A3d_0_75 ?a))
                 (not_blocked seg_N_A2A3d_0_75 ?a)

                )
)

(:action move_seg_N_A2A3b_0_75_seg_N_A2A3a_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3b_0_75)
                 (not_occupied seg_N_A2A3a_0_75)
                 (not_blocked seg_N_A2A3a_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A2A3a_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A2A3a_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A2A3a_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A2A3a_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3b_0_75))
                 (not_occupied seg_N_A2A3b_0_75)
                 (not (at-segment ?a seg_N_A2A3b_0_75))

                 (occupied seg_N_A2A3a_0_75)
                 (not (not_occupied seg_N_A2A3a_0_75))
                 (blocked seg_N_A2A3a_0_75 ?a)
                 (not (not_blocked seg_N_A2A3a_0_75 ?a))
                 (at-segment ?a seg_N_A2A3a_0_75)

                 (not (blocked seg_N_A2A3c_0_75 ?a))
                 (not_blocked seg_N_A2A3c_0_75 ?a)

                )
)

(:action move_seg_N_A2A3a_0_75_seg_N_A2b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2A3a_0_75)
                 (not_occupied seg_N_A2b_0_60)
                 (not_blocked seg_N_A2b_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A2b_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A2b_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A2b_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A2b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2A3a_0_75))
                 (not_occupied seg_N_A2A3a_0_75)
                 (not (at-segment ?a seg_N_A2A3a_0_75))

                 (occupied seg_N_A2b_0_60)
                 (not (not_occupied seg_N_A2b_0_60))
                 (blocked seg_N_A2b_0_60 ?a)
                 (not (not_blocked seg_N_A2b_0_60 ?a))
                 (at-segment ?a seg_N_A2b_0_60)

                 (not (blocked seg_N_A2A3b_0_75 ?a))
                 (not_blocked seg_N_A2A3b_0_75 ?a)

                )
)

(:action move_seg_N_A2b_0_60_seg_N_A2a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A2b_0_60)
                 (not_occupied seg_N_A2a_0_60)
                 (not_blocked seg_N_A2a_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A2a_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A2a_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A2a_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A2a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2b_0_60))
                 (not_occupied seg_N_A2b_0_60)
                 (not (at-segment ?a seg_N_A2b_0_60))

                 (occupied seg_N_A2a_0_60)
                 (not (not_occupied seg_N_A2a_0_60))
                 (blocked seg_N_A2a_0_60 ?a)
                 (not (not_blocked seg_N_A2a_0_60 ?a))
                 (at-segment ?a seg_N_A2a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N_A2A3a_0_75 ?a))
                 (not_blocked seg_N_A2A3a_0_75 ?a)

                )
)

(:action move_seg_N_A2a_0_60_seg_A2_c_0_100_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A2a_0_60)
                 (not_occupied seg_A2_c_0_100)
                 (not_blocked seg_A2_c_0_100 airplane_CFBEG)
                 (not_blocked seg_A2_c_0_100 airplane_DAEWH)
                 (not_blocked seg_A2_c_0_100 airplane_DAEW3)
                 (not_blocked seg_A2_c_0_100 airplane_DAEW7)
                 (not_blocked seg_A2_c_0_100 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A2a_0_60))
                 (not_occupied seg_N_A2a_0_60)
                 (not (at-segment ?a seg_N_A2a_0_60))

                 (occupied seg_A2_c_0_100)
                 (not (not_occupied seg_A2_c_0_100))
                 (blocked seg_A2_c_0_100 ?a)
                 (not (not_blocked seg_A2_c_0_100 ?a))
                 (at-segment ?a seg_A2_c_0_100)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A2b_0_60 ?a))
                 (not_blocked seg_N_A2b_0_60 ?a)

                )
)

(:action move_seg_A2_c_0_100_seg_A2_b_0_90_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_A2_c_0_100)
                 (not_occupied seg_A2_b_0_90)
                 (not_blocked seg_A2_b_0_90 airplane_CFBEG)
                 (not_blocked seg_A2_b_0_90 airplane_DAEWH)
                 (not_blocked seg_A2_b_0_90 airplane_DAEW3)
                 (not_blocked seg_A2_b_0_90 airplane_DAEW7)
                 (not_blocked seg_A2_b_0_90 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A2_c_0_100))
                 (not_occupied seg_A2_c_0_100)
                 (not (at-segment ?a seg_A2_c_0_100))

                 (occupied seg_A2_b_0_90)
                 (not (not_occupied seg_A2_b_0_90))
                 (blocked seg_A2_b_0_90 ?a)
                 (not (not_blocked seg_A2_b_0_90 ?a))
                 (at-segment ?a seg_A2_b_0_90)

                 (not (blocked seg_N_A2a_0_60 ?a))
                 (not_blocked seg_N_A2a_0_60 ?a)

                )
)

(:action move_seg_A2_b_0_90_seg_A2_a_0_90_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_A2_b_0_90)
                 (not_occupied seg_A2_a_0_90)
                 (not_blocked seg_A2_a_0_90 airplane_CFBEG)
                 (not_blocked seg_A2_a_0_90 airplane_DAEWH)
                 (not_blocked seg_A2_a_0_90 airplane_DAEW3)
                 (not_blocked seg_A2_a_0_90 airplane_DAEW7)
                 (not_blocked seg_A2_a_0_90 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A2_b_0_90))
                 (not_occupied seg_A2_b_0_90)
                 (not (at-segment ?a seg_A2_b_0_90))

                 (occupied seg_A2_a_0_90)
                 (not (not_occupied seg_A2_a_0_90))
                 (blocked seg_A2_a_0_90 ?a)
                 (not (not_blocked seg_A2_a_0_90 ?a))
                 (at-segment ?a seg_A2_a_0_90)

                 (not (blocked seg_A2_c_0_100 ?a))
                 (not_blocked seg_A2_c_0_100 ?a)

                )
)

(:action move_seg_A2_a_0_90_seg_08L_A2b_0_80_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_A2_a_0_90)
                 (not_occupied seg_08L_A2b_0_80)
                 (not_blocked seg_08L_A2b_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A2b_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A2b_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A2b_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A2b_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A2_a_0_90))
                 (not_occupied seg_A2_a_0_90)
                 (not (at-segment ?a seg_A2_a_0_90))

                 (occupied seg_08L_A2b_0_80)
                 (not (not_occupied seg_08L_A2b_0_80))
                 (blocked seg_08L_A2b_0_80 ?a)
                 (not (not_blocked seg_08L_A2b_0_80 ?a))
                 (at-segment ?a seg_08L_A2b_0_80)

                 (not (blocked seg_A2_b_0_90 ?a))
                 (not_blocked seg_A2_b_0_90 ?a)

                )
)

(:action move_seg_08L_A2b_0_80_seg_08L_A2a_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08L_A2b_0_80)
                 (not_occupied seg_08L_A2a_0_80)
                 (not_blocked seg_08L_A2a_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A2a_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A2a_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A2a_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A2a_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A2b_0_80))
                 (not_occupied seg_08L_A2b_0_80)
                 (not (at-segment ?a seg_08L_A2b_0_80))

                 (occupied seg_08L_A2a_0_80)
                 (not (not_occupied seg_08L_A2a_0_80))
                 (blocked seg_08L_A2a_0_80 ?a)
                 (not (not_blocked seg_08L_A2a_0_80 ?a))
                 (at-segment ?a seg_08L_A2a_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_A2_a_0_90 ?a))
                 (not_blocked seg_A2_a_0_90 ?a)

                )
)

(:action move_seg_08L_A2a_0_80_seg_08L_A2A3_0_970_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A2a_0_80)
                 (not_occupied seg_08L_A2A3_0_970)
                 (not_blocked seg_08L_A2A3_0_970 airplane_CFBEG)
                 (not_blocked seg_08L_A2A3_0_970 airplane_DAEWH)
                 (not_blocked seg_08L_A2A3_0_970 airplane_DAEW3)
                 (not_blocked seg_08L_A2A3_0_970 airplane_DAEW7)
                 (not_blocked seg_08L_A2A3_0_970 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A2a_0_80))
                 (not_occupied seg_08L_A2a_0_80)
                 (not (at-segment ?a seg_08L_A2a_0_80))

                 (occupied seg_08L_A2A3_0_970)
                 (not (not_occupied seg_08L_A2A3_0_970))
                 (blocked seg_08L_A2A3_0_970 ?a)
                 (not (not_blocked seg_08L_A2A3_0_970 ?a))
                 (at-segment ?a seg_08L_A2A3_0_970)

                 (not (blocked seg_08L_A2b_0_80 ?a))
                 (not_blocked seg_08L_A2b_0_80 ?a)

                )
)

(:action move_seg_08L_A2A3_0_970_seg_08l_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A2A3_0_970)
                 (not_occupied seg_08l_0_80)
                 (not_blocked seg_08l_0_80 airplane_CFBEG)
                 (not_blocked seg_08l_0_80 airplane_DAEWH)
                 (not_blocked seg_08l_0_80 airplane_DAEW3)
                 (not_blocked seg_08l_0_80 airplane_DAEW7)
                 (not_blocked seg_08l_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A2A3_0_970))
                 (not_occupied seg_08L_A2A3_0_970)
                 (not (at-segment ?a seg_08L_A2A3_0_970))

                 (occupied seg_08l_0_80)
                 (not (not_occupied seg_08l_0_80))
                 (blocked seg_08l_0_80 ?a)
                 (not (not_blocked seg_08l_0_80 ?a))
                 (at-segment ?a seg_08l_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_08L_A2a_0_80 ?a))
                 (not_blocked seg_08L_A2a_0_80 ?a)

                )
)

(:action move_seg_08l_0_80_seg_08L_A3a_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08l_0_80)
                 (not_occupied seg_08L_A3a_0_80)
                 (not_blocked seg_08L_A3a_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A3a_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A3a_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A3a_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A3a_0_80 airplane_CFBE1)

                 (not_occupied seg_08L_A3b_0_161_245)
              )

 :effect        (and
                 (not (occupied seg_08l_0_80))
                 (not_occupied seg_08l_0_80)
                 (not (at-segment ?a seg_08l_0_80))

                 (occupied seg_08L_A3a_0_80)
                 (not (not_occupied seg_08L_A3a_0_80))
                 (blocked seg_08L_A3a_0_80 ?a)
                 (not (not_blocked seg_08L_A3a_0_80 ?a))
                 (at-segment ?a seg_08L_A3a_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_08L_A2A3_0_970 ?a))
                 (not_blocked seg_08L_A2A3_0_970 ?a)

                 (blocked seg_08L_A3b_0_161_245 ?a)
                 (not (not_blocked seg_08L_A3b_0_161_245 ?a))
                )
)

(:action move_seg_08L_A3a_0_80_seg_08L_A3A4_0_450_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A3a_0_80)
                 (not_occupied seg_08L_A3A4_0_450)
                 (not_blocked seg_08L_A3A4_0_450 airplane_CFBEG)
                 (not_blocked seg_08L_A3A4_0_450 airplane_DAEWH)
                 (not_blocked seg_08L_A3A4_0_450 airplane_DAEW3)
                 (not_blocked seg_08L_A3A4_0_450 airplane_DAEW7)
                 (not_blocked seg_08L_A3A4_0_450 airplane_CFBE1)

                 (not_occupied seg_08L_A2a_0_80)
                 (not_occupied seg_09l_0_80)
                 (not_occupied seg_08L_A7a_0_80)
                 (not_occupied seg_08L_A4a_0_80)
                 (not_occupied seg_08l_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A3a_0_80))
                 (not_occupied seg_08L_A3a_0_80)
                 (not (at-segment ?a seg_08L_A3a_0_80))

                 (occupied seg_08L_A3A4_0_450)
                 (not (not_occupied seg_08L_A3A4_0_450))
                 (blocked seg_08L_A3A4_0_450 ?a)
                 (not (not_blocked seg_08L_A3A4_0_450 ?a))
                 (at-segment ?a seg_08L_A3A4_0_450)

                 (not (blocked seg_08L_A3b_0_161_245 ?a))
                 (not_blocked seg_08L_A3b_0_161_245 ?a)

                 (blocked seg_08L_A2a_0_80 ?a)
                 (not (not_blocked seg_08L_A2a_0_80 ?a))
                 (blocked seg_09l_0_80 ?a)
                 (not (not_blocked seg_09l_0_80 ?a))
                 (blocked seg_08L_A7a_0_80 ?a)
                 (not (not_blocked seg_08L_A7a_0_80 ?a))
                 (blocked seg_08L_A4a_0_80 ?a)
                 (not (not_blocked seg_08L_A4a_0_80 ?a))
                )
)

(:action move_seg_08L_A3A4_0_450_seg_08L_A4d_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A3A4_0_450)
                 (not_occupied seg_08L_A4d_0_80)
                 (not_blocked seg_08L_A4d_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A4d_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A4d_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A4d_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A4d_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A3A4_0_450))
                 (not_occupied seg_08L_A3A4_0_450)
                 (not (at-segment ?a seg_08L_A3A4_0_450))

                 (occupied seg_08L_A4d_0_80)
                 (not (not_occupied seg_08L_A4d_0_80))
                 (blocked seg_08L_A4d_0_80 ?a)
                 (not (not_blocked seg_08L_A4d_0_80 ?a))
                 (at-segment ?a seg_08L_A4d_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_08L_A3a_0_80 ?a))
                 (not_blocked seg_08L_A3a_0_80 ?a)
                 (not (blocked seg_08L_A2a_0_80 ?a))
                 (not_blocked seg_08L_A2a_0_80 ?a)
                 (not (blocked seg_09l_0_80 ?a))
                 (not_blocked seg_09l_0_80 ?a)
                 (not (blocked seg_08L_A7a_0_80 ?a))
                 (not_blocked seg_08L_A7a_0_80 ?a)
                 (not (blocked seg_08L_A4a_0_80 ?a))
                 (not_blocked seg_08L_A4a_0_80 ?a)
                 (not (blocked seg_08l_0_80 ?a))
                 (not_blocked seg_08l_0_80 ?a)

                )
)

(:action move_seg_08L_A4d_0_80_seg_08L_A4a_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08L_A4d_0_80)
                 (not_occupied seg_08L_A4a_0_80)
                 (not_blocked seg_08L_A4a_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A4a_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A4a_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A4a_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A4a_0_80 airplane_CFBE1)

                 (not_occupied seg_08L_A4b_0_161_245)
                 (not_occupied seg_08L_A4c_0_161_245)
                 (not_occupied seg_08L_A2a_0_80)
                 (not_occupied seg_09l_0_80)
                 (not_occupied seg_08L_A7a_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A4d_0_80))
                 (not_occupied seg_08L_A4d_0_80)
                 (not (at-segment ?a seg_08L_A4d_0_80))

                 (occupied seg_08L_A4a_0_80)
                 (not (not_occupied seg_08L_A4a_0_80))
                 (blocked seg_08L_A4a_0_80 ?a)
                 (not (not_blocked seg_08L_A4a_0_80 ?a))
                 (at-segment ?a seg_08L_A4a_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_08L_A3A4_0_450 ?a))
                 (not_blocked seg_08L_A3A4_0_450 ?a)

                 (blocked seg_08L_A4b_0_161_245 ?a)
                 (not (not_blocked seg_08L_A4b_0_161_245 ?a))
                 (blocked seg_08L_A4c_0_161_245 ?a)
                 (not (not_blocked seg_08L_A4c_0_161_245 ?a))
                 (blocked seg_08L_A2a_0_80 ?a)
                 (not (not_blocked seg_08L_A2a_0_80 ?a))
                 (blocked seg_09l_0_80 ?a)
                 (not (not_blocked seg_09l_0_80 ?a))
                 (blocked seg_08L_A7a_0_80 ?a)
                 (not (not_blocked seg_08L_A7a_0_80 ?a))
                )
)

(:action move_seg_08L_A4a_0_80_seg_08L_A6A7_0_450_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A4a_0_80)
                 (not_occupied seg_08L_A6A7_0_450)
                 (not_blocked seg_08L_A6A7_0_450 airplane_CFBEG)
                 (not_blocked seg_08L_A6A7_0_450 airplane_DAEWH)
                 (not_blocked seg_08L_A6A7_0_450 airplane_DAEW3)
                 (not_blocked seg_08L_A6A7_0_450 airplane_DAEW7)
                 (not_blocked seg_08L_A6A7_0_450 airplane_CFBE1)

                 (not_occupied seg_08L_A2a_0_80)
                 (not_occupied seg_09l_0_80)
                 (not_occupied seg_08L_A7a_0_80)
                 (not_occupied seg_08L_A3a_0_80)
                 (not_occupied seg_08l_0_80)
                 (not_occupied seg_08L_A3A4_0_450)
                 (not_occupied seg_08L_A4d_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A4a_0_80))
                 (not_occupied seg_08L_A4a_0_80)
                 (not (at-segment ?a seg_08L_A4a_0_80))

                 (occupied seg_08L_A6A7_0_450)
                 (not (not_occupied seg_08L_A6A7_0_450))
                 (blocked seg_08L_A6A7_0_450 ?a)
                 (not (not_blocked seg_08L_A6A7_0_450 ?a))
                 (at-segment ?a seg_08L_A6A7_0_450)

                 (not (blocked seg_08L_A4b_0_161_245 ?a))
                 (not_blocked seg_08L_A4b_0_161_245 ?a)
                 (not (blocked seg_08L_A4c_0_161_245 ?a))
                 (not_blocked seg_08L_A4c_0_161_245 ?a)

                 (blocked seg_08L_A3a_0_80 ?a)
                 (not (not_blocked seg_08L_A3a_0_80 ?a))
                 (blocked seg_08l_0_80 ?a)
                 (not (not_blocked seg_08l_0_80 ?a))
                 (blocked seg_08L_A3A4_0_450 ?a)
                 (not (not_blocked seg_08L_A3A4_0_450 ?a))
                )
)

(:action move_seg_08L_A6A7_0_450_seg_08L_A7d_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A6A7_0_450)
                 (not_occupied seg_08L_A7d_0_80)
                 (not_blocked seg_08L_A7d_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A7d_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A7d_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A7d_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A7d_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A6A7_0_450))
                 (not_occupied seg_08L_A6A7_0_450)
                 (not (at-segment ?a seg_08L_A6A7_0_450))

                 (occupied seg_08L_A7d_0_80)
                 (not (not_occupied seg_08L_A7d_0_80))
                 (blocked seg_08L_A7d_0_80 ?a)
                 (not (not_blocked seg_08L_A7d_0_80 ?a))
                 (at-segment ?a seg_08L_A7d_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_08L_A4a_0_80 ?a))
                 (not_blocked seg_08L_A4a_0_80 ?a)
                 (not (blocked seg_08L_A2a_0_80 ?a))
                 (not_blocked seg_08L_A2a_0_80 ?a)
                 (not (blocked seg_09l_0_80 ?a))
                 (not_blocked seg_09l_0_80 ?a)
                 (not (blocked seg_08L_A7a_0_80 ?a))
                 (not_blocked seg_08L_A7a_0_80 ?a)
                 (not (blocked seg_08L_A3a_0_80 ?a))
                 (not_blocked seg_08L_A3a_0_80 ?a)
                 (not (blocked seg_08l_0_80 ?a))
                 (not_blocked seg_08l_0_80 ?a)
                 (not (blocked seg_08L_A3A4_0_450 ?a))
                 (not_blocked seg_08L_A3A4_0_450 ?a)
                 (not (blocked seg_08L_A4d_0_80 ?a))
                 (not_blocked seg_08L_A4d_0_80 ?a)

                )
)

(:action move_seg_08L_A7d_0_80_seg_08L_A7a_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08L_A7d_0_80)
                 (not_occupied seg_08L_A7a_0_80)
                 (not_blocked seg_08L_A7a_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A7a_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A7a_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A7a_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A7a_0_80 airplane_CFBE1)

                 (not_occupied seg_08L_A7b_0_161_245)
                 (not_occupied seg_08L_A7c_0_161_245)
                 (not_occupied seg_08L_A2a_0_80)
                 (not_occupied seg_09l_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A7d_0_80))
                 (not_occupied seg_08L_A7d_0_80)
                 (not (at-segment ?a seg_08L_A7d_0_80))

                 (occupied seg_08L_A7a_0_80)
                 (not (not_occupied seg_08L_A7a_0_80))
                 (blocked seg_08L_A7a_0_80 ?a)
                 (not (not_blocked seg_08L_A7a_0_80 ?a))
                 (at-segment ?a seg_08L_A7a_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_08L_A6A7_0_450 ?a))
                 (not_blocked seg_08L_A6A7_0_450 ?a)

                 (blocked seg_08L_A7b_0_161_245 ?a)
                 (not (not_blocked seg_08L_A7b_0_161_245 ?a))
                 (blocked seg_08L_A7c_0_161_245 ?a)
                 (not (not_blocked seg_08L_A7c_0_161_245 ?a))
                 (blocked seg_08L_A2a_0_80 ?a)
                 (not (not_blocked seg_08L_A2a_0_80 ?a))
                 (blocked seg_09l_0_80 ?a)
                 (not (not_blocked seg_09l_0_80 ?a))
                )
)

(:action move_seg_08L_A7a_0_80_seg_08L_A7A9_0_270_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A7a_0_80)
                 (not_occupied seg_08L_A7A9_0_270)
                 (not_blocked seg_08L_A7A9_0_270 airplane_CFBEG)
                 (not_blocked seg_08L_A7A9_0_270 airplane_DAEWH)
                 (not_blocked seg_08L_A7A9_0_270 airplane_DAEW3)
                 (not_blocked seg_08L_A7A9_0_270 airplane_DAEW7)
                 (not_blocked seg_08L_A7A9_0_270 airplane_CFBE1)

                 (not_occupied seg_08L_A2a_0_80)
                 (not_occupied seg_09l_0_80)
                 (not_occupied seg_08L_A4a_0_80)
                 (not_occupied seg_08L_A3a_0_80)
                 (not_occupied seg_08l_0_80)
                 (not_occupied seg_08L_A3A4_0_450)
                 (not_occupied seg_08L_A4d_0_80)
                 (not_occupied seg_08L_A6A7_0_450)
                 (not_occupied seg_08L_A7d_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A7a_0_80))
                 (not_occupied seg_08L_A7a_0_80)
                 (not (at-segment ?a seg_08L_A7a_0_80))

                 (occupied seg_08L_A7A9_0_270)
                 (not (not_occupied seg_08L_A7A9_0_270))
                 (blocked seg_08L_A7A9_0_270 ?a)
                 (not (not_blocked seg_08L_A7A9_0_270 ?a))
                 (at-segment ?a seg_08L_A7A9_0_270)

                 (not (blocked seg_08L_A7b_0_161_245 ?a))
                 (not_blocked seg_08L_A7b_0_161_245 ?a)
                 (not (blocked seg_08L_A7c_0_161_245 ?a))
                 (not_blocked seg_08L_A7c_0_161_245 ?a)

                 (blocked seg_08L_A4a_0_80 ?a)
                 (not (not_blocked seg_08L_A4a_0_80 ?a))
                 (blocked seg_08L_A3a_0_80 ?a)
                 (not (not_blocked seg_08L_A3a_0_80 ?a))
                 (blocked seg_08l_0_80 ?a)
                 (not (not_blocked seg_08l_0_80 ?a))
                 (blocked seg_08L_A3A4_0_450 ?a)
                 (not (not_blocked seg_08L_A3A4_0_450 ?a))
                 (blocked seg_08L_A4d_0_80 ?a)
                 (not (not_blocked seg_08L_A4d_0_80 ?a))
                 (blocked seg_08L_A6A7_0_450 ?a)
                 (not (not_blocked seg_08L_A6A7_0_450 ?a))
                )
)

(:action move_seg_08L_A7A9_0_270_seg_08L_A9c_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A7A9_0_270)
                 (not_occupied seg_08L_A9c_0_80)
                 (not_blocked seg_08L_A9c_0_80 airplane_CFBEG)
                 (not_blocked seg_08L_A9c_0_80 airplane_DAEWH)
                 (not_blocked seg_08L_A9c_0_80 airplane_DAEW3)
                 (not_blocked seg_08L_A9c_0_80 airplane_DAEW7)
                 (not_blocked seg_08L_A9c_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A7A9_0_270))
                 (not_occupied seg_08L_A7A9_0_270)
                 (not (at-segment ?a seg_08L_A7A9_0_270))

                 (occupied seg_08L_A9c_0_80)
                 (not (not_occupied seg_08L_A9c_0_80))
                 (blocked seg_08L_A9c_0_80 ?a)
                 (not (not_blocked seg_08L_A9c_0_80 ?a))
                 (at-segment ?a seg_08L_A9c_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_08L_A7a_0_80 ?a))
                 (not_blocked seg_08L_A7a_0_80 ?a)
                 (not (blocked seg_08L_A2a_0_80 ?a))
                 (not_blocked seg_08L_A2a_0_80 ?a)
                 (not (blocked seg_09l_0_80 ?a))
                 (not_blocked seg_09l_0_80 ?a)
                 (not (blocked seg_08L_A4a_0_80 ?a))
                 (not_blocked seg_08L_A4a_0_80 ?a)
                 (not (blocked seg_08L_A3a_0_80 ?a))
                 (not_blocked seg_08L_A3a_0_80 ?a)
                 (not (blocked seg_08l_0_80 ?a))
                 (not_blocked seg_08l_0_80 ?a)
                 (not (blocked seg_08L_A3A4_0_450 ?a))
                 (not_blocked seg_08L_A3A4_0_450 ?a)
                 (not (blocked seg_08L_A4d_0_80 ?a))
                 (not_blocked seg_08L_A4d_0_80 ?a)
                 (not (blocked seg_08L_A6A7_0_450 ?a))
                 (not_blocked seg_08L_A6A7_0_450 ?a)
                 (not (blocked seg_08L_A7d_0_80 ?a))
                 (not_blocked seg_08L_A7d_0_80 ?a)

                )
)

(:action move_seg_08L_A9c_0_80_seg_09l_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08L_A9c_0_80)
                 (not_occupied seg_09l_0_80)
                 (not_blocked seg_09l_0_80 airplane_CFBEG)
                 (not_blocked seg_09l_0_80 airplane_DAEWH)
                 (not_blocked seg_09l_0_80 airplane_DAEW3)
                 (not_blocked seg_09l_0_80 airplane_DAEW7)
                 (not_blocked seg_09l_0_80 airplane_CFBE1)

                 (not_occupied seg_08L_A9b_0_161_245)
                 (not_occupied seg_08L_A2a_0_80)
              )

 :effect        (and
                 (not (occupied seg_08L_A9c_0_80))
                 (not_occupied seg_08L_A9c_0_80)
                 (not (at-segment ?a seg_08L_A9c_0_80))

                 (occupied seg_09l_0_80)
                 (not (not_occupied seg_09l_0_80))
                 (blocked seg_09l_0_80 ?a)
                 (not (not_blocked seg_09l_0_80 ?a))
                 (at-segment ?a seg_09l_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_08L_A7A9_0_270 ?a))
                 (not_blocked seg_08L_A7A9_0_270 ?a)

                 (blocked seg_08L_A9b_0_161_245 ?a)
                 (not (not_blocked seg_08L_A9b_0_161_245 ?a))
                 (blocked seg_08L_A2a_0_80 ?a)
                 (not (not_blocked seg_08L_A2a_0_80 ?a))
                )
)

(:action move_seg_08L_A7d_0_80_seg_08L_A7b_0_161_245_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_08L_A7d_0_80)
                 (not_occupied seg_08L_A7b_0_161_245)
                 (not_blocked seg_08L_A7b_0_161_245 airplane_CFBEG)
                 (not_blocked seg_08L_A7b_0_161_245 airplane_DAEWH)
                 (not_blocked seg_08L_A7b_0_161_245 airplane_DAEW3)
                 (not_blocked seg_08L_A7b_0_161_245 airplane_DAEW7)
                 (not_blocked seg_08L_A7b_0_161_245 airplane_CFBE1)

                 (not_occupied seg_08L_A7a_0_80)
                 (not_occupied seg_08L_A7c_0_161_245)
              )

 :effect        (and
                 (not (occupied seg_08L_A7d_0_80))
                 (not_occupied seg_08L_A7d_0_80)
                 (not (at-segment ?a seg_08L_A7d_0_80))

                 (occupied seg_08L_A7b_0_161_245)
                 (not (not_occupied seg_08L_A7b_0_161_245))
                 (blocked seg_08L_A7b_0_161_245 ?a)
                 (not (not_blocked seg_08L_A7b_0_161_245 ?a))
                 (at-segment ?a seg_08L_A7b_0_161_245)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_08L_A6A7_0_450 ?a))
                 (not_blocked seg_08L_A6A7_0_450 ?a)

                 (blocked seg_08L_A7a_0_80 ?a)
                 (not (not_blocked seg_08L_A7a_0_80 ?a))
                 (blocked seg_08L_A7c_0_161_245 ?a)
                 (not (not_blocked seg_08L_A7c_0_161_245 ?a))
                )
)

(:action move_seg_08L_A7b_0_161_245_seg_A8_a_0_157_785_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_08L_A7b_0_161_245)
                 (not_occupied seg_A8_a_0_157_785)
                 (not_blocked seg_A8_a_0_157_785 airplane_CFBEG)
                 (not_blocked seg_A8_a_0_157_785 airplane_DAEWH)
                 (not_blocked seg_A8_a_0_157_785 airplane_DAEW3)
                 (not_blocked seg_A8_a_0_157_785 airplane_DAEW7)
                 (not_blocked seg_A8_a_0_157_785 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_08L_A7b_0_161_245))
                 (not_occupied seg_08L_A7b_0_161_245)
                 (not (at-segment ?a seg_08L_A7b_0_161_245))

                 (occupied seg_A8_a_0_157_785)
                 (not (not_occupied seg_A8_a_0_157_785))
                 (blocked seg_A8_a_0_157_785 ?a)
                 (not (not_blocked seg_A8_a_0_157_785 ?a))
                 (at-segment ?a seg_A8_a_0_157_785)

                 (not (blocked seg_08L_A7a_0_80 ?a))
                 (not_blocked seg_08L_A7a_0_80 ?a)
                 (not (blocked seg_08L_A7c_0_161_245 ?a))
                 (not_blocked seg_08L_A7c_0_161_245 ?a)
                 (not (blocked seg_08L_A7d_0_80 ?a))
                 (not_blocked seg_08L_A7d_0_80 ?a)

                )
)

(:action move_seg_A8_a_0_157_785_seg_A8_b_1_0_79_7559_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_A8_a_0_157_785)
                 (not_occupied seg_A8_b_1_0_79_7559)
                 (not_blocked seg_A8_b_1_0_79_7559 airplane_CFBEG)
                 (not_blocked seg_A8_b_1_0_79_7559 airplane_DAEWH)
                 (not_blocked seg_A8_b_1_0_79_7559 airplane_DAEW3)
                 (not_blocked seg_A8_b_1_0_79_7559 airplane_DAEW7)
                 (not_blocked seg_A8_b_1_0_79_7559 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A8_a_0_157_785))
                 (not_occupied seg_A8_a_0_157_785)
                 (not (at-segment ?a seg_A8_a_0_157_785))

                 (occupied seg_A8_b_1_0_79_7559)
                 (not (not_occupied seg_A8_b_1_0_79_7559))
                 (blocked seg_A8_b_1_0_79_7559 ?a)
                 (not (not_blocked seg_A8_b_1_0_79_7559 ?a))
                 (at-segment ?a seg_A8_b_1_0_79_7559)

                 (not (blocked seg_08L_A7b_0_161_245 ?a))
                 (not_blocked seg_08L_A7b_0_161_245 ?a)

                )
)

(:action move_seg_A8_b_1_0_79_7559_seg_A8_b_0_80_6226_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_A8_b_1_0_79_7559)
                 (not_occupied seg_A8_b_0_80_6226)
                 (not_blocked seg_A8_b_0_80_6226 airplane_CFBEG)
                 (not_blocked seg_A8_b_0_80_6226 airplane_DAEWH)
                 (not_blocked seg_A8_b_0_80_6226 airplane_DAEW3)
                 (not_blocked seg_A8_b_0_80_6226 airplane_DAEW7)
                 (not_blocked seg_A8_b_0_80_6226 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A8_b_1_0_79_7559))
                 (not_occupied seg_A8_b_1_0_79_7559)
                 (not (at-segment ?a seg_A8_b_1_0_79_7559))

                 (occupied seg_A8_b_0_80_6226)
                 (not (not_occupied seg_A8_b_0_80_6226))
                 (blocked seg_A8_b_0_80_6226 ?a)
                 (not (not_blocked seg_A8_b_0_80_6226 ?a))
                 (at-segment ?a seg_A8_b_0_80_6226)

                 (not (blocked seg_A8_a_0_157_785 ?a))
                 (not_blocked seg_A8_a_0_157_785 ?a)

                )
)

(:action move_seg_A8_b_0_80_6226_seg_M_A8d_0_120_934_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_A8_b_0_80_6226)
                 (not_occupied seg_M_A8d_0_120_934)
                 (not_blocked seg_M_A8d_0_120_934 airplane_CFBEG)
                 (not_blocked seg_M_A8d_0_120_934 airplane_DAEWH)
                 (not_blocked seg_M_A8d_0_120_934 airplane_DAEW3)
                 (not_blocked seg_M_A8d_0_120_934 airplane_DAEW7)
                 (not_blocked seg_M_A8d_0_120_934 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_A8_b_0_80_6226))
                 (not_occupied seg_A8_b_0_80_6226)
                 (not (at-segment ?a seg_A8_b_0_80_6226))

                 (occupied seg_M_A8d_0_120_934)
                 (not (not_occupied seg_M_A8d_0_120_934))
                 (blocked seg_M_A8d_0_120_934 ?a)
                 (not (not_blocked seg_M_A8d_0_120_934 ?a))
                 (at-segment ?a seg_M_A8d_0_120_934)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_A8_b_1_0_79_7559 ?a))
                 (not_blocked seg_A8_b_1_0_79_7559 ?a)

                )
)

(:action move_seg_M_A8d_0_120_934_seg_M_A8b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_M_A8d_0_120_934)
                 (not_occupied seg_M_A8b_0_60)
                 (not_blocked seg_M_A8b_0_60 airplane_CFBEG)
                 (not_blocked seg_M_A8b_0_60 airplane_DAEWH)
                 (not_blocked seg_M_A8b_0_60 airplane_DAEW3)
                 (not_blocked seg_M_A8b_0_60 airplane_DAEW7)
                 (not_blocked seg_M_A8b_0_60 airplane_CFBE1)

                 (not_occupied seg_M_A8a_0_60)
                 (not_occupied seg_M_A8c_0_60)
              )

 :effect        (and
                 (not (occupied seg_M_A8d_0_120_934))
                 (not_occupied seg_M_A8d_0_120_934)
                 (not (at-segment ?a seg_M_A8d_0_120_934))

                 (occupied seg_M_A8b_0_60)
                 (not (not_occupied seg_M_A8b_0_60))
                 (blocked seg_M_A8b_0_60 ?a)
                 (not (not_blocked seg_M_A8b_0_60 ?a))
                 (at-segment ?a seg_M_A8b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_A8_b_0_80_6226 ?a))
                 (not_blocked seg_A8_b_0_80_6226 ?a)

                 (blocked seg_M_A8a_0_60 ?a)
                 (not (not_blocked seg_M_A8a_0_60 ?a))
                 (blocked seg_M_A8c_0_60 ?a)
                 (not (not_blocked seg_M_A8c_0_60 ?a))
                )
)

(:action move_seg_M_A8b_0_60_seg_N_A8a_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_M_A8b_0_60)
                 (not_occupied seg_N_A8a_0_60)
                 (not_blocked seg_N_A8a_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A8a_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A8a_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A8a_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A8a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_M_A8b_0_60))
                 (not_occupied seg_M_A8b_0_60)
                 (not (at-segment ?a seg_M_A8b_0_60))

                 (occupied seg_N_A8a_0_60)
                 (not (not_occupied seg_N_A8a_0_60))
                 (blocked seg_N_A8a_0_60 ?a)
                 (not (not_blocked seg_N_A8a_0_60 ?a))
                 (at-segment ?a seg_N_A8a_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_M_A8a_0_60 ?a))
                 (not_blocked seg_M_A8a_0_60 ?a)
                 (not (blocked seg_M_A8c_0_60 ?a))
                 (not_blocked seg_M_A8c_0_60 ?a)
                 (not (blocked seg_M_A8d_0_120_934 ?a))
                 (not_blocked seg_M_A8d_0_120_934 ?a)

                )
)

(:action move_seg_N_A8a_0_60_seg_N_A8c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A8a_0_60)
                 (not_occupied seg_N_A8c_0_60)
                 (not_blocked seg_N_A8c_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A8c_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A8c_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A8c_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A8c_0_60 airplane_CFBE1)

                 (not_occupied seg_N_A8b_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_A8a_0_60))
                 (not_occupied seg_N_A8a_0_60)
                 (not (at-segment ?a seg_N_A8a_0_60))

                 (occupied seg_N_A8c_0_60)
                 (not (not_occupied seg_N_A8c_0_60))
                 (blocked seg_N_A8c_0_60 ?a)
                 (not (not_blocked seg_N_A8c_0_60 ?a))
                 (at-segment ?a seg_N_A8c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_M_A8b_0_60 ?a))
                 (not_blocked seg_M_A8b_0_60 ?a)

                 (blocked seg_N_A8b_0_60 ?a)
                 (not (not_blocked seg_N_A8b_0_60 ?a))
                )
)

(:action move_seg_N_A8c_0_60_seg_N_A6A8f_0_75_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A8c_0_60)
                 (not_occupied seg_N_A6A8f_0_75)
                 (not_blocked seg_N_A6A8f_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A6A8f_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A6A8f_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A6A8f_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A6A8f_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A8c_0_60))
                 (not_occupied seg_N_A8c_0_60)
                 (not (at-segment ?a seg_N_A8c_0_60))

                 (occupied seg_N_A6A8f_0_75)
                 (not (not_occupied seg_N_A6A8f_0_75))
                 (blocked seg_N_A6A8f_0_75 ?a)
                 (not (not_blocked seg_N_A6A8f_0_75 ?a))
                 (at-segment ?a seg_N_A6A8f_0_75)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A8a_0_60 ?a))
                 (not_blocked seg_N_A8a_0_60 ?a)
                 (not (blocked seg_N_A8b_0_60 ?a))
                 (not_blocked seg_N_A8b_0_60 ?a)

                )
)

(:action move_seg_N_A6A8f_0_75_seg_N_A6A8e_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8f_0_75)
                 (not_occupied seg_N_A6A8e_0_75)
                 (not_blocked seg_N_A6A8e_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A6A8e_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A6A8e_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A6A8e_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A6A8e_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8f_0_75))
                 (not_occupied seg_N_A6A8f_0_75)
                 (not (at-segment ?a seg_N_A6A8f_0_75))

                 (occupied seg_N_A6A8e_0_75)
                 (not (not_occupied seg_N_A6A8e_0_75))
                 (blocked seg_N_A6A8e_0_75 ?a)
                 (not (not_blocked seg_N_A6A8e_0_75 ?a))
                 (at-segment ?a seg_N_A6A8e_0_75)

                 (not (blocked seg_N_A8c_0_60 ?a))
                 (not_blocked seg_N_A8c_0_60 ?a)

                )
)

(:action move_seg_N_A6A8e_0_75_seg_N_A6A8d_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8e_0_75)
                 (not_occupied seg_N_A6A8d_0_75)
                 (not_blocked seg_N_A6A8d_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A6A8d_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A6A8d_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A6A8d_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A6A8d_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8e_0_75))
                 (not_occupied seg_N_A6A8e_0_75)
                 (not (at-segment ?a seg_N_A6A8e_0_75))

                 (occupied seg_N_A6A8d_0_75)
                 (not (not_occupied seg_N_A6A8d_0_75))
                 (blocked seg_N_A6A8d_0_75 ?a)
                 (not (not_blocked seg_N_A6A8d_0_75 ?a))
                 (at-segment ?a seg_N_A6A8d_0_75)

                 (not (blocked seg_N_A6A8f_0_75 ?a))
                 (not_blocked seg_N_A6A8f_0_75 ?a)

                )
)

(:action move_seg_N_A6A8d_0_75_seg_N_A6A8c_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8d_0_75)
                 (not_occupied seg_N_A6A8c_0_75)
                 (not_blocked seg_N_A6A8c_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A6A8c_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A6A8c_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A6A8c_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A6A8c_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8d_0_75))
                 (not_occupied seg_N_A6A8d_0_75)
                 (not (at-segment ?a seg_N_A6A8d_0_75))

                 (occupied seg_N_A6A8c_0_75)
                 (not (not_occupied seg_N_A6A8c_0_75))
                 (blocked seg_N_A6A8c_0_75 ?a)
                 (not (not_blocked seg_N_A6A8c_0_75 ?a))
                 (at-segment ?a seg_N_A6A8c_0_75)

                 (not (blocked seg_N_A6A8e_0_75 ?a))
                 (not_blocked seg_N_A6A8e_0_75 ?a)

                )
)

(:action move_seg_N_A6A8c_0_75_seg_N_A6A8b_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8c_0_75)
                 (not_occupied seg_N_A6A8b_0_75)
                 (not_blocked seg_N_A6A8b_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A6A8b_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A6A8b_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A6A8b_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A6A8b_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8c_0_75))
                 (not_occupied seg_N_A6A8c_0_75)
                 (not (at-segment ?a seg_N_A6A8c_0_75))

                 (occupied seg_N_A6A8b_0_75)
                 (not (not_occupied seg_N_A6A8b_0_75))
                 (blocked seg_N_A6A8b_0_75 ?a)
                 (not (not_blocked seg_N_A6A8b_0_75 ?a))
                 (at-segment ?a seg_N_A6A8b_0_75)

                 (not (blocked seg_N_A6A8d_0_75 ?a))
                 (not_blocked seg_N_A6A8d_0_75 ?a)

                )
)

(:action move_seg_N_A6A8b_0_75_seg_N_A6A8a_0_115_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8b_0_75)
                 (not_occupied seg_N_A6A8a_0_115)
                 (not_blocked seg_N_A6A8a_0_115 airplane_CFBEG)
                 (not_blocked seg_N_A6A8a_0_115 airplane_DAEWH)
                 (not_blocked seg_N_A6A8a_0_115 airplane_DAEW3)
                 (not_blocked seg_N_A6A8a_0_115 airplane_DAEW7)
                 (not_blocked seg_N_A6A8a_0_115 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8b_0_75))
                 (not_occupied seg_N_A6A8b_0_75)
                 (not (at-segment ?a seg_N_A6A8b_0_75))

                 (occupied seg_N_A6A8a_0_115)
                 (not (not_occupied seg_N_A6A8a_0_115))
                 (blocked seg_N_A6A8a_0_115 ?a)
                 (not (not_blocked seg_N_A6A8a_0_115 ?a))
                 (at-segment ?a seg_N_A6A8a_0_115)

                 (not (blocked seg_N_A6A8c_0_75 ?a))
                 (not_blocked seg_N_A6A8c_0_75 ?a)

                )
)

(:action move_seg_N_A6A8a_0_115_seg_N_A6b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6A8a_0_115)
                 (not_occupied seg_N_A6b_0_60)
                 (not_blocked seg_N_A6b_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A6b_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A6b_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A6b_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A6b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6A8a_0_115))
                 (not_occupied seg_N_A6A8a_0_115)
                 (not (at-segment ?a seg_N_A6A8a_0_115))

                 (occupied seg_N_A6b_0_60)
                 (not (not_occupied seg_N_A6b_0_60))
                 (blocked seg_N_A6b_0_60 ?a)
                 (not (not_blocked seg_N_A6b_0_60 ?a))
                 (at-segment ?a seg_N_A6b_0_60)

                 (not (blocked seg_N_A6A8b_0_75 ?a))
                 (not_blocked seg_N_A6A8b_0_75 ?a)

                )
)

(:action move_seg_N_A6b_0_60_seg_N_A6c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A6b_0_60)
                 (not_occupied seg_N_A6c_0_60)
                 (not_blocked seg_N_A6c_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A6c_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A6c_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A6c_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A6c_0_60 airplane_CFBE1)

                 (not_occupied seg_N_A6a_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_A6b_0_60))
                 (not_occupied seg_N_A6b_0_60)
                 (not (at-segment ?a seg_N_A6b_0_60))

                 (occupied seg_N_A6c_0_60)
                 (not (not_occupied seg_N_A6c_0_60))
                 (blocked seg_N_A6c_0_60 ?a)
                 (not (not_blocked seg_N_A6c_0_60 ?a))
                 (at-segment ?a seg_N_A6c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N_A6A8a_0_115 ?a))
                 (not_blocked seg_N_A6A8a_0_115 ?a)

                 (blocked seg_N_A6a_0_60 ?a)
                 (not (not_blocked seg_N_A6a_0_60 ?a))
                )
)

(:action move_seg_N_A6c_0_60_seg_N_A7A6d_0_75_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A6c_0_60)
                 (not_occupied seg_N_A7A6d_0_75)
                 (not_blocked seg_N_A7A6d_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A7A6d_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A7A6d_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A7A6d_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A7A6d_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A6c_0_60))
                 (not_occupied seg_N_A6c_0_60)
                 (not (at-segment ?a seg_N_A6c_0_60))

                 (occupied seg_N_A7A6d_0_75)
                 (not (not_occupied seg_N_A7A6d_0_75))
                 (blocked seg_N_A7A6d_0_75 ?a)
                 (not (not_blocked seg_N_A7A6d_0_75 ?a))
                 (at-segment ?a seg_N_A7A6d_0_75)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A6a_0_60 ?a))
                 (not_blocked seg_N_A6a_0_60 ?a)
                 (not (blocked seg_N_A6b_0_60 ?a))
                 (not_blocked seg_N_A6b_0_60 ?a)

                )
)

(:action move_seg_N_A7A6d_0_75_seg_N_A7A6c_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A7A6d_0_75)
                 (not_occupied seg_N_A7A6c_0_75)
                 (not_blocked seg_N_A7A6c_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A7A6c_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A7A6c_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A7A6c_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A7A6c_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A7A6d_0_75))
                 (not_occupied seg_N_A7A6d_0_75)
                 (not (at-segment ?a seg_N_A7A6d_0_75))

                 (occupied seg_N_A7A6c_0_75)
                 (not (not_occupied seg_N_A7A6c_0_75))
                 (blocked seg_N_A7A6c_0_75 ?a)
                 (not (not_blocked seg_N_A7A6c_0_75 ?a))
                 (at-segment ?a seg_N_A7A6c_0_75)

                 (not (blocked seg_N_A6c_0_60 ?a))
                 (not_blocked seg_N_A6c_0_60 ?a)

                )
)

(:action move_seg_N_A7A6c_0_75_seg_N_A7A6b_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A7A6c_0_75)
                 (not_occupied seg_N_A7A6b_0_75)
                 (not_blocked seg_N_A7A6b_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A7A6b_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A7A6b_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A7A6b_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A7A6b_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A7A6c_0_75))
                 (not_occupied seg_N_A7A6c_0_75)
                 (not (at-segment ?a seg_N_A7A6c_0_75))

                 (occupied seg_N_A7A6b_0_75)
                 (not (not_occupied seg_N_A7A6b_0_75))
                 (blocked seg_N_A7A6b_0_75 ?a)
                 (not (not_blocked seg_N_A7A6b_0_75 ?a))
                 (at-segment ?a seg_N_A7A6b_0_75)

                 (not (blocked seg_N_A7A6d_0_75 ?a))
                 (not_blocked seg_N_A7A6d_0_75 ?a)

                )
)

(:action move_seg_N_A7A6b_0_75_seg_N_A7A6a_0_85_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A7A6b_0_75)
                 (not_occupied seg_N_A7A6a_0_85)
                 (not_blocked seg_N_A7A6a_0_85 airplane_CFBEG)
                 (not_blocked seg_N_A7A6a_0_85 airplane_DAEWH)
                 (not_blocked seg_N_A7A6a_0_85 airplane_DAEW3)
                 (not_blocked seg_N_A7A6a_0_85 airplane_DAEW7)
                 (not_blocked seg_N_A7A6a_0_85 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A7A6b_0_75))
                 (not_occupied seg_N_A7A6b_0_75)
                 (not (at-segment ?a seg_N_A7A6b_0_75))

                 (occupied seg_N_A7A6a_0_85)
                 (not (not_occupied seg_N_A7A6a_0_85))
                 (blocked seg_N_A7A6a_0_85 ?a)
                 (not (not_blocked seg_N_A7A6a_0_85 ?a))
                 (at-segment ?a seg_N_A7A6a_0_85)

                 (not (blocked seg_N_A7A6c_0_75 ?a))
                 (not_blocked seg_N_A7A6c_0_75 ?a)

                )
)

(:action move_seg_N_A7A6a_0_85_seg_N_A7b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A7A6a_0_85)
                 (not_occupied seg_N_A7b_0_60)
                 (not_blocked seg_N_A7b_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A7b_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A7b_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A7b_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A7b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A7A6a_0_85))
                 (not_occupied seg_N_A7A6a_0_85)
                 (not (at-segment ?a seg_N_A7A6a_0_85))

                 (occupied seg_N_A7b_0_60)
                 (not (not_occupied seg_N_A7b_0_60))
                 (blocked seg_N_A7b_0_60 ?a)
                 (not (not_blocked seg_N_A7b_0_60 ?a))
                 (at-segment ?a seg_N_A7b_0_60)

                 (not (blocked seg_N_A7A6b_0_75 ?a))
                 (not_blocked seg_N_A7A6b_0_75 ?a)

                )
)

(:action move_seg_N_A7b_0_60_seg_N_A7c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A7b_0_60)
                 (not_occupied seg_N_A7c_0_60)
                 (not_blocked seg_N_A7c_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A7c_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A7c_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A7c_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A7c_0_60 airplane_CFBE1)

                 (not_occupied seg_N_A7a_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_A7b_0_60))
                 (not_occupied seg_N_A7b_0_60)
                 (not (at-segment ?a seg_N_A7b_0_60))

                 (occupied seg_N_A7c_0_60)
                 (not (not_occupied seg_N_A7c_0_60))
                 (blocked seg_N_A7c_0_60 ?a)
                 (not (not_blocked seg_N_A7c_0_60 ?a))
                 (at-segment ?a seg_N_A7c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N_A7A6a_0_85 ?a))
                 (not_blocked seg_N_A7A6a_0_85 ?a)

                 (blocked seg_N_A7a_0_60 ?a)
                 (not (not_blocked seg_N_A7a_0_60 ?a))
                )
)

(:action move_seg_N_A7c_0_60_seg_N_A4A7f_0_75_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A7c_0_60)
                 (not_occupied seg_N_A4A7f_0_75)
                 (not_blocked seg_N_A4A7f_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A4A7f_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A4A7f_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A4A7f_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A4A7f_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A7c_0_60))
                 (not_occupied seg_N_A7c_0_60)
                 (not (at-segment ?a seg_N_A7c_0_60))

                 (occupied seg_N_A4A7f_0_75)
                 (not (not_occupied seg_N_A4A7f_0_75))
                 (blocked seg_N_A4A7f_0_75 ?a)
                 (not (not_blocked seg_N_A4A7f_0_75 ?a))
                 (at-segment ?a seg_N_A4A7f_0_75)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A7a_0_60 ?a))
                 (not_blocked seg_N_A7a_0_60 ?a)
                 (not (blocked seg_N_A7b_0_60 ?a))
                 (not_blocked seg_N_A7b_0_60 ?a)

                )
)

(:action move_seg_N_A4A7f_0_75_seg_N_A4A7e_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7f_0_75)
                 (not_occupied seg_N_A4A7e_0_75)
                 (not_blocked seg_N_A4A7e_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A4A7e_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A4A7e_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A4A7e_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A4A7e_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7f_0_75))
                 (not_occupied seg_N_A4A7f_0_75)
                 (not (at-segment ?a seg_N_A4A7f_0_75))

                 (occupied seg_N_A4A7e_0_75)
                 (not (not_occupied seg_N_A4A7e_0_75))
                 (blocked seg_N_A4A7e_0_75 ?a)
                 (not (not_blocked seg_N_A4A7e_0_75 ?a))
                 (at-segment ?a seg_N_A4A7e_0_75)

                 (not (blocked seg_N_A7c_0_60 ?a))
                 (not_blocked seg_N_A7c_0_60 ?a)

                )
)

(:action move_seg_N_A4A7e_0_75_seg_N_A4A7d_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7e_0_75)
                 (not_occupied seg_N_A4A7d_0_75)
                 (not_blocked seg_N_A4A7d_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A4A7d_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A4A7d_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A4A7d_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A4A7d_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7e_0_75))
                 (not_occupied seg_N_A4A7e_0_75)
                 (not (at-segment ?a seg_N_A4A7e_0_75))

                 (occupied seg_N_A4A7d_0_75)
                 (not (not_occupied seg_N_A4A7d_0_75))
                 (blocked seg_N_A4A7d_0_75 ?a)
                 (not (not_blocked seg_N_A4A7d_0_75 ?a))
                 (at-segment ?a seg_N_A4A7d_0_75)

                 (not (blocked seg_N_A4A7f_0_75 ?a))
                 (not_blocked seg_N_A4A7f_0_75 ?a)

                )
)

(:action move_seg_N_A4A7d_0_75_seg_N_A4A7c_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7d_0_75)
                 (not_occupied seg_N_A4A7c_0_75)
                 (not_blocked seg_N_A4A7c_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A4A7c_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A4A7c_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A4A7c_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A4A7c_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7d_0_75))
                 (not_occupied seg_N_A4A7d_0_75)
                 (not (at-segment ?a seg_N_A4A7d_0_75))

                 (occupied seg_N_A4A7c_0_75)
                 (not (not_occupied seg_N_A4A7c_0_75))
                 (blocked seg_N_A4A7c_0_75 ?a)
                 (not (not_blocked seg_N_A4A7c_0_75 ?a))
                 (at-segment ?a seg_N_A4A7c_0_75)

                 (not (blocked seg_N_A4A7e_0_75 ?a))
                 (not_blocked seg_N_A4A7e_0_75 ?a)

                )
)

(:action move_seg_N_A4A7c_0_75_seg_N_A4A7b_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7c_0_75)
                 (not_occupied seg_N_A4A7b_0_75)
                 (not_blocked seg_N_A4A7b_0_75 airplane_CFBEG)
                 (not_blocked seg_N_A4A7b_0_75 airplane_DAEWH)
                 (not_blocked seg_N_A4A7b_0_75 airplane_DAEW3)
                 (not_blocked seg_N_A4A7b_0_75 airplane_DAEW7)
                 (not_blocked seg_N_A4A7b_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7c_0_75))
                 (not_occupied seg_N_A4A7c_0_75)
                 (not (at-segment ?a seg_N_A4A7c_0_75))

                 (occupied seg_N_A4A7b_0_75)
                 (not (not_occupied seg_N_A4A7b_0_75))
                 (blocked seg_N_A4A7b_0_75 ?a)
                 (not (not_blocked seg_N_A4A7b_0_75 ?a))
                 (at-segment ?a seg_N_A4A7b_0_75)

                 (not (blocked seg_N_A4A7d_0_75 ?a))
                 (not_blocked seg_N_A4A7d_0_75 ?a)

                )
)

(:action move_seg_N_A4A7b_0_75_seg_N_A4A7a_0_115_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7b_0_75)
                 (not_occupied seg_N_A4A7a_0_115)
                 (not_blocked seg_N_A4A7a_0_115 airplane_CFBEG)
                 (not_blocked seg_N_A4A7a_0_115 airplane_DAEWH)
                 (not_blocked seg_N_A4A7a_0_115 airplane_DAEW3)
                 (not_blocked seg_N_A4A7a_0_115 airplane_DAEW7)
                 (not_blocked seg_N_A4A7a_0_115 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7b_0_75))
                 (not_occupied seg_N_A4A7b_0_75)
                 (not (at-segment ?a seg_N_A4A7b_0_75))

                 (occupied seg_N_A4A7a_0_115)
                 (not (not_occupied seg_N_A4A7a_0_115))
                 (blocked seg_N_A4A7a_0_115 ?a)
                 (not (not_blocked seg_N_A4A7a_0_115 ?a))
                 (at-segment ?a seg_N_A4A7a_0_115)

                 (not (blocked seg_N_A4A7c_0_75 ?a))
                 (not_blocked seg_N_A4A7c_0_75 ?a)

                )
)

(:action move_seg_N_A4A7a_0_115_seg_N_A4b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4A7a_0_115)
                 (not_occupied seg_N_A4b_0_60)
                 (not_blocked seg_N_A4b_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A4b_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A4b_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A4b_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A4b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4A7a_0_115))
                 (not_occupied seg_N_A4A7a_0_115)
                 (not (at-segment ?a seg_N_A4A7a_0_115))

                 (occupied seg_N_A4b_0_60)
                 (not (not_occupied seg_N_A4b_0_60))
                 (blocked seg_N_A4b_0_60 ?a)
                 (not (not_blocked seg_N_A4b_0_60 ?a))
                 (at-segment ?a seg_N_A4b_0_60)

                 (not (blocked seg_N_A4A7b_0_75 ?a))
                 (not_blocked seg_N_A4A7b_0_75 ?a)

                )
)

(:action move_seg_N_A4b_0_60_seg_N_A4c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_A4b_0_60)
                 (not_occupied seg_N_A4c_0_60)
                 (not_blocked seg_N_A4c_0_60 airplane_CFBEG)
                 (not_blocked seg_N_A4c_0_60 airplane_DAEWH)
                 (not_blocked seg_N_A4c_0_60 airplane_DAEW3)
                 (not_blocked seg_N_A4c_0_60 airplane_DAEW7)
                 (not_blocked seg_N_A4c_0_60 airplane_CFBE1)

                 (not_occupied seg_N_A4a_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_A4b_0_60))
                 (not_occupied seg_N_A4b_0_60)
                 (not (at-segment ?a seg_N_A4b_0_60))

                 (occupied seg_N_A4c_0_60)
                 (not (not_occupied seg_N_A4c_0_60))
                 (blocked seg_N_A4c_0_60 ?a)
                 (not (not_blocked seg_N_A4c_0_60 ?a))
                 (at-segment ?a seg_N_A4c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N_A4A7a_0_115 ?a))
                 (not_blocked seg_N_A4A7a_0_115 ?a)

                 (blocked seg_N_A4a_0_60 ?a)
                 (not (not_blocked seg_N_A4a_0_60 ?a))
                )
)

(:action move_seg_N_A4c_0_60_seg_N_N2A4e_0_75_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_A4c_0_60)
                 (not_occupied seg_N_N2A4e_0_75)
                 (not_blocked seg_N_N2A4e_0_75 airplane_CFBEG)
                 (not_blocked seg_N_N2A4e_0_75 airplane_DAEWH)
                 (not_blocked seg_N_N2A4e_0_75 airplane_DAEW3)
                 (not_blocked seg_N_N2A4e_0_75 airplane_DAEW7)
                 (not_blocked seg_N_N2A4e_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_A4c_0_60))
                 (not_occupied seg_N_A4c_0_60)
                 (not (at-segment ?a seg_N_A4c_0_60))

                 (occupied seg_N_N2A4e_0_75)
                 (not (not_occupied seg_N_N2A4e_0_75))
                 (blocked seg_N_N2A4e_0_75 ?a)
                 (not (not_blocked seg_N_N2A4e_0_75 ?a))
                 (at-segment ?a seg_N_N2A4e_0_75)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_A4a_0_60 ?a))
                 (not_blocked seg_N_A4a_0_60 ?a)
                 (not (blocked seg_N_A4b_0_60 ?a))
                 (not_blocked seg_N_A4b_0_60 ?a)

                )
)

(:action move_seg_N_N2A4e_0_75_seg_N_N2A4d_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2A4e_0_75)
                 (not_occupied seg_N_N2A4d_0_75)
                 (not_blocked seg_N_N2A4d_0_75 airplane_CFBEG)
                 (not_blocked seg_N_N2A4d_0_75 airplane_DAEWH)
                 (not_blocked seg_N_N2A4d_0_75 airplane_DAEW3)
                 (not_blocked seg_N_N2A4d_0_75 airplane_DAEW7)
                 (not_blocked seg_N_N2A4d_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2A4e_0_75))
                 (not_occupied seg_N_N2A4e_0_75)
                 (not (at-segment ?a seg_N_N2A4e_0_75))

                 (occupied seg_N_N2A4d_0_75)
                 (not (not_occupied seg_N_N2A4d_0_75))
                 (blocked seg_N_N2A4d_0_75 ?a)
                 (not (not_blocked seg_N_N2A4d_0_75 ?a))
                 (at-segment ?a seg_N_N2A4d_0_75)

                 (not (blocked seg_N_A4c_0_60 ?a))
                 (not_blocked seg_N_A4c_0_60 ?a)

                )
)

(:action move_seg_N_N2A4d_0_75_seg_N_N2A4c_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2A4d_0_75)
                 (not_occupied seg_N_N2A4c_0_75)
                 (not_blocked seg_N_N2A4c_0_75 airplane_CFBEG)
                 (not_blocked seg_N_N2A4c_0_75 airplane_DAEWH)
                 (not_blocked seg_N_N2A4c_0_75 airplane_DAEW3)
                 (not_blocked seg_N_N2A4c_0_75 airplane_DAEW7)
                 (not_blocked seg_N_N2A4c_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2A4d_0_75))
                 (not_occupied seg_N_N2A4d_0_75)
                 (not (at-segment ?a seg_N_N2A4d_0_75))

                 (occupied seg_N_N2A4c_0_75)
                 (not (not_occupied seg_N_N2A4c_0_75))
                 (blocked seg_N_N2A4c_0_75 ?a)
                 (not (not_blocked seg_N_N2A4c_0_75 ?a))
                 (at-segment ?a seg_N_N2A4c_0_75)

                 (not (blocked seg_N_N2A4e_0_75 ?a))
                 (not_blocked seg_N_N2A4e_0_75 ?a)

                )
)

(:action move_seg_N_N2A4c_0_75_seg_N_N2A4b_0_75_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2A4c_0_75)
                 (not_occupied seg_N_N2A4b_0_75)
                 (not_blocked seg_N_N2A4b_0_75 airplane_CFBEG)
                 (not_blocked seg_N_N2A4b_0_75 airplane_DAEWH)
                 (not_blocked seg_N_N2A4b_0_75 airplane_DAEW3)
                 (not_blocked seg_N_N2A4b_0_75 airplane_DAEW7)
                 (not_blocked seg_N_N2A4b_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2A4c_0_75))
                 (not_occupied seg_N_N2A4c_0_75)
                 (not (at-segment ?a seg_N_N2A4c_0_75))

                 (occupied seg_N_N2A4b_0_75)
                 (not (not_occupied seg_N_N2A4b_0_75))
                 (blocked seg_N_N2A4b_0_75 ?a)
                 (not (not_blocked seg_N_N2A4b_0_75 ?a))
                 (at-segment ?a seg_N_N2A4b_0_75)

                 (not (blocked seg_N_N2A4d_0_75 ?a))
                 (not_blocked seg_N_N2A4d_0_75 ?a)

                )
)

(:action move_seg_N_N2A4b_0_75_seg_N_N2A4a_0_70_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2A4b_0_75)
                 (not_occupied seg_N_N2A4a_0_70)
                 (not_blocked seg_N_N2A4a_0_70 airplane_CFBEG)
                 (not_blocked seg_N_N2A4a_0_70 airplane_DAEWH)
                 (not_blocked seg_N_N2A4a_0_70 airplane_DAEW3)
                 (not_blocked seg_N_N2A4a_0_70 airplane_DAEW7)
                 (not_blocked seg_N_N2A4a_0_70 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2A4b_0_75))
                 (not_occupied seg_N_N2A4b_0_75)
                 (not (at-segment ?a seg_N_N2A4b_0_75))

                 (occupied seg_N_N2A4a_0_70)
                 (not (not_occupied seg_N_N2A4a_0_70))
                 (blocked seg_N_N2A4a_0_70 ?a)
                 (not (not_blocked seg_N_N2A4a_0_70 ?a))
                 (at-segment ?a seg_N_N2A4a_0_70)

                 (not (blocked seg_N_N2A4c_0_75 ?a))
                 (not_blocked seg_N_N2A4c_0_75 ?a)

                )
)

(:action move_seg_N_N2A4a_0_70_seg_N_N2a_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2A4a_0_70)
                 (not_occupied seg_N_N2a_0_60)
                 (not_blocked seg_N_N2a_0_60 airplane_CFBEG)
                 (not_blocked seg_N_N2a_0_60 airplane_DAEWH)
                 (not_blocked seg_N_N2a_0_60 airplane_DAEW3)
                 (not_blocked seg_N_N2a_0_60 airplane_DAEW7)
                 (not_blocked seg_N_N2a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2A4a_0_70))
                 (not_occupied seg_N_N2A4a_0_70)
                 (not (at-segment ?a seg_N_N2A4a_0_70))

                 (occupied seg_N_N2a_0_60)
                 (not (not_occupied seg_N_N2a_0_60))
                 (blocked seg_N_N2a_0_60 ?a)
                 (not (not_blocked seg_N_N2a_0_60 ?a))
                 (at-segment ?a seg_N_N2a_0_60)

                 (not (blocked seg_N_N2A4b_0_75 ?a))
                 (not_blocked seg_N_N2A4b_0_75 ?a)

                )
)

(:action move_seg_N_N2a_0_60_seg_N_N2b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_N_N2a_0_60)
                 (not_occupied seg_N_N2b_0_60)
                 (not_blocked seg_N_N2b_0_60 airplane_CFBEG)
                 (not_blocked seg_N_N2b_0_60 airplane_DAEWH)
                 (not_blocked seg_N_N2b_0_60 airplane_DAEW3)
                 (not_blocked seg_N_N2b_0_60 airplane_DAEW7)
                 (not_blocked seg_N_N2b_0_60 airplane_CFBE1)

                 (not_occupied seg_N_N2c_0_60)
              )

 :effect        (and
                 (not (occupied seg_N_N2a_0_60))
                 (not_occupied seg_N_N2a_0_60)
                 (not (at-segment ?a seg_N_N2a_0_60))

                 (occupied seg_N_N2b_0_60)
                 (not (not_occupied seg_N_N2b_0_60))
                 (blocked seg_N_N2b_0_60 ?a)
                 (not (not_blocked seg_N_N2b_0_60 ?a))
                 (at-segment ?a seg_N_N2b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N_N2A4a_0_70 ?a))
                 (not_blocked seg_N_N2A4a_0_70 ?a)

                 (blocked seg_N_N2c_0_60 ?a)
                 (not (not_blocked seg_N_N2c_0_60 ?a))
                )
)

(:action move_seg_N_N2b_0_60_seg_N2_0_108_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N_N2b_0_60)
                 (not_occupied seg_N2_0_108)
                 (not_blocked seg_N2_0_108 airplane_CFBEG)
                 (not_blocked seg_N2_0_108 airplane_DAEWH)
                 (not_blocked seg_N2_0_108 airplane_DAEW3)
                 (not_blocked seg_N2_0_108 airplane_DAEW7)
                 (not_blocked seg_N2_0_108 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N_N2b_0_60))
                 (not_occupied seg_N_N2b_0_60)
                 (not (at-segment ?a seg_N_N2b_0_60))

                 (occupied seg_N2_0_108)
                 (not (not_occupied seg_N2_0_108))
                 (blocked seg_N2_0_108 ?a)
                 (not (not_blocked seg_N2_0_108 ?a))
                 (at-segment ?a seg_N2_0_108)

                 (not (blocked seg_N_N2a_0_60 ?a))
                 (not_blocked seg_N_N2a_0_60 ?a)
                 (not (blocked seg_N_N2c_0_60 ?a))
                 (not_blocked seg_N_N2c_0_60 ?a)

                )
)

(:action move_seg_N2_0_108_seg_C1_n2a_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_N2_0_108)
                 (not_occupied seg_C1_n2a_0_60)
                 (not_blocked seg_C1_n2a_0_60 airplane_CFBEG)
                 (not_blocked seg_C1_n2a_0_60 airplane_DAEWH)
                 (not_blocked seg_C1_n2a_0_60 airplane_DAEW3)
                 (not_blocked seg_C1_n2a_0_60 airplane_DAEW7)
                 (not_blocked seg_C1_n2a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_N2_0_108))
                 (not_occupied seg_N2_0_108)
                 (not (at-segment ?a seg_N2_0_108))

                 (occupied seg_C1_n2a_0_60)
                 (not (not_occupied seg_C1_n2a_0_60))
                 (blocked seg_C1_n2a_0_60 ?a)
                 (not (not_blocked seg_C1_n2a_0_60 ?a))
                 (at-segment ?a seg_C1_n2a_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_N_N2b_0_60 ?a))
                 (not_blocked seg_N_N2b_0_60 ?a)

                )
)

(:action move_seg_C1_n2a_0_60_seg_C1_n2c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C1_n2a_0_60)
                 (not_occupied seg_C1_n2c_0_60)
                 (not_blocked seg_C1_n2c_0_60 airplane_CFBEG)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEWH)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEW3)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEW7)
                 (not_blocked seg_C1_n2c_0_60 airplane_CFBE1)

                 (not_occupied seg_C1_n2b_0_80)
              )

 :effect        (and
                 (not (occupied seg_C1_n2a_0_60))
                 (not_occupied seg_C1_n2a_0_60)
                 (not (at-segment ?a seg_C1_n2a_0_60))

                 (occupied seg_C1_n2c_0_60)
                 (not (not_occupied seg_C1_n2c_0_60))
                 (blocked seg_C1_n2c_0_60 ?a)
                 (not (not_blocked seg_C1_n2c_0_60 ?a))
                 (at-segment ?a seg_C1_n2c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N2_0_108 ?a))
                 (not_blocked seg_N2_0_108 ?a)

                 (blocked seg_C1_n2b_0_80 ?a)
                 (not (not_blocked seg_C1_n2b_0_80 ?a))
                )
)

(:action move_seg_C1_n2c_0_60_seg_W1_C1b_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C1_n2c_0_60)
                 (not_occupied seg_W1_C1b_0_60)
                 (not_blocked seg_W1_C1b_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_C1b_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_C1b_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_C1b_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_C1b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_C1_n2c_0_60))
                 (not_occupied seg_C1_n2c_0_60)
                 (not (at-segment ?a seg_C1_n2c_0_60))

                 (occupied seg_W1_C1b_0_60)
                 (not (not_occupied seg_W1_C1b_0_60))
                 (blocked seg_W1_C1b_0_60 ?a)
                 (not (not_blocked seg_W1_C1b_0_60 ?a))
                 (at-segment ?a seg_W1_C1b_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_C1_n2a_0_60 ?a))
                 (not_blocked seg_C1_n2a_0_60 ?a)
                 (not (blocked seg_C1_n2b_0_80 ?a))
                 (not_blocked seg_C1_n2b_0_80 ?a)

                )
)

(:action move_seg_W1_C1b_0_60_seg_W1_C1c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C1b_0_60)
                 (not_occupied seg_W1_C1c_0_34)
                 (not_blocked seg_W1_C1c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C1c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C1c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_C1a_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C1b_0_60))
                 (not_occupied seg_W1_C1b_0_60)
                 (not (at-segment ?a seg_W1_C1b_0_60))

                 (occupied seg_W1_C1c_0_34)
                 (not (not_occupied seg_W1_C1c_0_34))
                 (blocked seg_W1_C1c_0_34 ?a)
                 (not (not_blocked seg_W1_C1c_0_34 ?a))
                 (at-segment ?a seg_W1_C1c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C1_n2c_0_60 ?a))
                 (not_blocked seg_C1_n2c_0_60 ?a)

                 (blocked seg_W1_C1a_0_60 ?a)
                 (not (not_blocked seg_W1_C1a_0_60 ?a))
                )
)

(:action move_seg_W1_C1c_0_34_seg_W1_141a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C1c_0_34)
                 (not_occupied seg_W1_141a_0_34)
                 (not_blocked seg_W1_141a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_141a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_141a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C1c_0_34))
                 (not_occupied seg_W1_C1c_0_34)
                 (not (at-segment ?a seg_W1_C1c_0_34))

                 (occupied seg_W1_141a_0_34)
                 (not (not_occupied seg_W1_141a_0_34))
                 (blocked seg_W1_141a_0_34 ?a)
                 (not (not_blocked seg_W1_141a_0_34 ?a))
                 (at-segment ?a seg_W1_141a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C1a_0_60 ?a))
                 (not_blocked seg_W1_C1a_0_60 ?a)
                 (not (blocked seg_W1_C1b_0_60 ?a))
                 (not_blocked seg_W1_C1b_0_60 ?a)

                )
)

(:action move_seg_W1_141a_0_34_seg_W1_141b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_141a_0_34)
                 (not_occupied seg_W1_141b_0_45)
                 (not_blocked seg_W1_141b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_141b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_141b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_141c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_141a_0_34))
                 (not_occupied seg_W1_141a_0_34)
                 (not (at-segment ?a seg_W1_141a_0_34))

                 (occupied seg_W1_141b_0_45)
                 (not (not_occupied seg_W1_141b_0_45))
                 (blocked seg_W1_141b_0_45 ?a)
                 (not (not_blocked seg_W1_141b_0_45 ?a))
                 (at-segment ?a seg_W1_141b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C1c_0_34 ?a))
                 (not_blocked seg_W1_C1c_0_34 ?a)

                 (blocked seg_W1_141c_0_34 ?a)
                 (not (not_blocked seg_W1_141c_0_34 ?a))
                )
)

(:action move_seg_W1_141b_0_45_seg_p141_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_141b_0_45)
                 (not_occupied seg_p141_0_75)
                 (not_blocked seg_p141_0_75 airplane_CFBEG)
                 (not_blocked seg_p141_0_75 airplane_DAEWH)
                 (not_blocked seg_p141_0_75 airplane_DAEW3)
                 (not_blocked seg_p141_0_75 airplane_DAEW7)
                 (not_blocked seg_p141_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_141b_0_45))
                 (not_occupied seg_W1_141b_0_45)
                 (not (at-segment ?a seg_W1_141b_0_45))

                 (occupied seg_p141_0_75)
                 (not (not_occupied seg_p141_0_75))
                 (blocked seg_p141_0_75 ?a)
                 (not (not_blocked seg_p141_0_75 ?a))
                 (at-segment ?a seg_p141_0_75)

                 (not (blocked seg_W1_141a_0_34 ?a))
                 (not_blocked seg_W1_141a_0_34 ?a)
                 (not (blocked seg_W1_141c_0_34 ?a))
                 (not_blocked seg_W1_141c_0_34 ?a)

                )
)

(:action move_seg_p142_0_75_seg_W1_142b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p142_0_75)
                 (not_occupied seg_W1_142b_0_45)
                 (not_blocked seg_W1_142b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_142b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p142_0_75))
                 (not_occupied seg_p142_0_75)
                 (not (at-segment ?a seg_p142_0_75))

                 (occupied seg_W1_142b_0_45)
                 (not (not_occupied seg_W1_142b_0_45))
                 (blocked seg_W1_142b_0_45 ?a)
                 (not (not_blocked seg_W1_142b_0_45 ?a))
                 (at-segment ?a seg_W1_142b_0_45)


                )
)

(:action move_seg_W1_142b_0_45_seg_W1_142c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_142b_0_45)
                 (not_occupied seg_W1_142c_0_34)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_142a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_142b_0_45))
                 (not_occupied seg_W1_142b_0_45)
                 (not (at-segment ?a seg_W1_142b_0_45))

                 (occupied seg_W1_142c_0_34)
                 (not (not_occupied seg_W1_142c_0_34))
                 (blocked seg_W1_142c_0_34 ?a)
                 (not (not_blocked seg_W1_142c_0_34 ?a))
                 (at-segment ?a seg_W1_142c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p142_0_75 ?a))
                 (not_blocked seg_p142_0_75 ?a)

                 (blocked seg_W1_142a_0_34 ?a)
                 (not (not_blocked seg_W1_142a_0_34 ?a))
                )
)

(:action move_seg_W1_142c_0_34_seg_W1_143a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_142c_0_34)
                 (not_occupied seg_W1_143a_0_34)
                 (not_blocked seg_W1_143a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_143a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_142c_0_34))
                 (not_occupied seg_W1_142c_0_34)
                 (not (at-segment ?a seg_W1_142c_0_34))

                 (occupied seg_W1_143a_0_34)
                 (not (not_occupied seg_W1_143a_0_34))
                 (blocked seg_W1_143a_0_34 ?a)
                 (not (not_blocked seg_W1_143a_0_34 ?a))
                 (at-segment ?a seg_W1_143a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_142a_0_34 ?a))
                 (not_blocked seg_W1_142a_0_34 ?a)
                 (not (blocked seg_W1_142b_0_45 ?a))
                 (not_blocked seg_W1_142b_0_45 ?a)

                )
)

(:action move_seg_W1_143a_0_34_seg_W1_142c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_143a_0_34)
                 (not_occupied seg_W1_142c_0_34)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_143a_0_34))
                 (not_occupied seg_W1_143a_0_34)
                 (not (at-segment ?a seg_W1_143a_0_34))

                 (occupied seg_W1_142c_0_34)
                 (not (not_occupied seg_W1_142c_0_34))
                 (blocked seg_W1_142c_0_34 ?a)
                 (not (not_blocked seg_W1_142c_0_34 ?a))
                 (at-segment ?a seg_W1_142c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_143b_0_45 ?a))
                 (not_blocked seg_W1_143b_0_45 ?a)
                 (not (blocked seg_W1_143c_0_60 ?a))
                 (not_blocked seg_W1_143c_0_60 ?a)

                )
)

(:action move_seg_W1_142c_0_34_seg_W1_142a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_142c_0_34)
                 (not_occupied seg_W1_142a_0_34)
                 (not_blocked seg_W1_142a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_142a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_142a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_142b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_142c_0_34))
                 (not_occupied seg_W1_142c_0_34)
                 (not (at-segment ?a seg_W1_142c_0_34))

                 (occupied seg_W1_142a_0_34)
                 (not (not_occupied seg_W1_142a_0_34))
                 (blocked seg_W1_142a_0_34 ?a)
                 (not (not_blocked seg_W1_142a_0_34 ?a))
                 (at-segment ?a seg_W1_142a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_143a_0_34 ?a))
                 (not_blocked seg_W1_143a_0_34 ?a)

                 (blocked seg_W1_142b_0_45 ?a)
                 (not (not_blocked seg_W1_142b_0_45 ?a))
                )
)

(:action move_seg_W1_141a_0_34_seg_W1_141c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_141a_0_34)
                 (not_occupied seg_W1_141c_0_34)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_141c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_141c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_141b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_141a_0_34))
                 (not_occupied seg_W1_141a_0_34)
                 (not (at-segment ?a seg_W1_141a_0_34))

                 (occupied seg_W1_141c_0_34)
                 (not (not_occupied seg_W1_141c_0_34))
                 (blocked seg_W1_141c_0_34 ?a)
                 (not (not_blocked seg_W1_141c_0_34 ?a))
                 (at-segment ?a seg_W1_141c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C1c_0_34 ?a))
                 (not_blocked seg_W1_C1c_0_34 ?a)

                 (blocked seg_W1_141b_0_45 ?a)
                 (not (not_blocked seg_W1_141b_0_45 ?a))
                )
)

(:action move_seg_W1_142a_0_34_seg_W1_142b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_142a_0_34)
                 (not_occupied seg_W1_142b_0_45)
                 (not_blocked seg_W1_142b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_142b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_142b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_142c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_142a_0_34))
                 (not_occupied seg_W1_142a_0_34)
                 (not (at-segment ?a seg_W1_142a_0_34))

                 (occupied seg_W1_142b_0_45)
                 (not (not_occupied seg_W1_142b_0_45))
                 (blocked seg_W1_142b_0_45 ?a)
                 (not (not_blocked seg_W1_142b_0_45 ?a))
                 (at-segment ?a seg_W1_142b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_141c_0_34 ?a))
                 (not_blocked seg_W1_141c_0_34 ?a)

                 (blocked seg_W1_142c_0_34 ?a)
                 (not (not_blocked seg_W1_142c_0_34 ?a))
                )
)

(:action move_seg_W1_142b_0_45_seg_p142_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_142b_0_45)
                 (not_occupied seg_p142_0_75)
                 (not_blocked seg_p142_0_75 airplane_CFBEG)
                 (not_blocked seg_p142_0_75 airplane_DAEWH)
                 (not_blocked seg_p142_0_75 airplane_DAEW3)
                 (not_blocked seg_p142_0_75 airplane_DAEW7)
                 (not_blocked seg_p142_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_142b_0_45))
                 (not_occupied seg_W1_142b_0_45)
                 (not (at-segment ?a seg_W1_142b_0_45))

                 (occupied seg_p142_0_75)
                 (not (not_occupied seg_p142_0_75))
                 (blocked seg_p142_0_75 ?a)
                 (not (not_blocked seg_p142_0_75 ?a))
                 (at-segment ?a seg_p142_0_75)

                 (not (blocked seg_W1_142a_0_34 ?a))
                 (not_blocked seg_W1_142a_0_34 ?a)
                 (not (blocked seg_W1_142c_0_34 ?a))
                 (not_blocked seg_W1_142c_0_34 ?a)

                )
)

(:action move_seg_p143_0_75_seg_W1_143b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p143_0_75)
                 (not_occupied seg_W1_143b_0_45)
                 (not_blocked seg_W1_143b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_143b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p143_0_75))
                 (not_occupied seg_p143_0_75)
                 (not (at-segment ?a seg_p143_0_75))

                 (occupied seg_W1_143b_0_45)
                 (not (not_occupied seg_W1_143b_0_45))
                 (blocked seg_W1_143b_0_45 ?a)
                 (not (not_blocked seg_W1_143b_0_45 ?a))
                 (at-segment ?a seg_W1_143b_0_45)


                )
)

(:action move_seg_W1_143b_0_45_seg_W1_143c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_143b_0_45)
                 (not_occupied seg_W1_143c_0_60)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBE1)

                 (not_occupied seg_W1_143a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_143b_0_45))
                 (not_occupied seg_W1_143b_0_45)
                 (not (at-segment ?a seg_W1_143b_0_45))

                 (occupied seg_W1_143c_0_60)
                 (not (not_occupied seg_W1_143c_0_60))
                 (blocked seg_W1_143c_0_60 ?a)
                 (not (not_blocked seg_W1_143c_0_60 ?a))
                 (at-segment ?a seg_W1_143c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p143_0_75 ?a))
                 (not_blocked seg_p143_0_75 ?a)

                 (blocked seg_W1_143a_0_34 ?a)
                 (not (not_blocked seg_W1_143a_0_34 ?a))
                )
)

(:action move_seg_W1_143c_0_60_seg_W1_C2a_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_143c_0_60)
                 (not_occupied seg_W1_C2a_0_60)
                 (not_blocked seg_W1_C2a_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_C2a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_143c_0_60))
                 (not_occupied seg_W1_143c_0_60)
                 (not (at-segment ?a seg_W1_143c_0_60))

                 (occupied seg_W1_C2a_0_60)
                 (not (not_occupied seg_W1_C2a_0_60))
                 (blocked seg_W1_C2a_0_60 ?a)
                 (not (not_blocked seg_W1_C2a_0_60 ?a))
                 (at-segment ?a seg_W1_C2a_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_143a_0_34 ?a))
                 (not_blocked seg_W1_143a_0_34 ?a)
                 (not (blocked seg_W1_143b_0_45 ?a))
                 (not_blocked seg_W1_143b_0_45 ?a)

                )
)

(:action move_seg_W1_C2a_0_60_seg_W1_143c_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C2a_0_60)
                 (not_occupied seg_W1_143c_0_60)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C2a_0_60))
                 (not_occupied seg_W1_C2a_0_60)
                 (not (at-segment ?a seg_W1_C2a_0_60))

                 (occupied seg_W1_143c_0_60)
                 (not (not_occupied seg_W1_143c_0_60))
                 (blocked seg_W1_143c_0_60 ?a)
                 (not (not_blocked seg_W1_143c_0_60 ?a))
                 (at-segment ?a seg_W1_143c_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C2b_0_60 ?a))
                 (not_blocked seg_W1_C2b_0_60 ?a)
                 (not (blocked seg_W1_C2c_0_34 ?a))
                 (not_blocked seg_W1_C2c_0_34 ?a)

                )
)

(:action move_seg_W1_143c_0_60_seg_W1_143a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_143c_0_60)
                 (not_occupied seg_W1_143a_0_34)
                 (not_blocked seg_W1_143a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_143a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_143a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_143b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_143c_0_60))
                 (not_occupied seg_W1_143c_0_60)
                 (not (at-segment ?a seg_W1_143c_0_60))

                 (occupied seg_W1_143a_0_34)
                 (not (not_occupied seg_W1_143a_0_34))
                 (blocked seg_W1_143a_0_34 ?a)
                 (not (not_blocked seg_W1_143a_0_34 ?a))
                 (at-segment ?a seg_W1_143a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C2a_0_60 ?a))
                 (not_blocked seg_W1_C2a_0_60 ?a)

                 (blocked seg_W1_143b_0_45 ?a)
                 (not (not_blocked seg_W1_143b_0_45 ?a))
                )
)

(:action move_seg_W1_142a_0_34_seg_W1_142c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_142a_0_34)
                 (not_occupied seg_W1_142c_0_34)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_142c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_142c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_142b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_142a_0_34))
                 (not_occupied seg_W1_142a_0_34)
                 (not (at-segment ?a seg_W1_142a_0_34))

                 (occupied seg_W1_142c_0_34)
                 (not (not_occupied seg_W1_142c_0_34))
                 (blocked seg_W1_142c_0_34 ?a)
                 (not (not_blocked seg_W1_142c_0_34 ?a))
                 (at-segment ?a seg_W1_142c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_141c_0_34 ?a))
                 (not_blocked seg_W1_141c_0_34 ?a)

                 (blocked seg_W1_142b_0_45 ?a)
                 (not (not_blocked seg_W1_142b_0_45 ?a))
                )
)

(:action move_seg_W1_143a_0_34_seg_W1_143b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_143a_0_34)
                 (not_occupied seg_W1_143b_0_45)
                 (not_blocked seg_W1_143b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_143b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_143b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_143c_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_143a_0_34))
                 (not_occupied seg_W1_143a_0_34)
                 (not (at-segment ?a seg_W1_143a_0_34))

                 (occupied seg_W1_143b_0_45)
                 (not (not_occupied seg_W1_143b_0_45))
                 (blocked seg_W1_143b_0_45 ?a)
                 (not (not_blocked seg_W1_143b_0_45 ?a))
                 (at-segment ?a seg_W1_143b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_142c_0_34 ?a))
                 (not_blocked seg_W1_142c_0_34 ?a)

                 (blocked seg_W1_143c_0_60 ?a)
                 (not (not_blocked seg_W1_143c_0_60 ?a))
                )
)

(:action move_seg_W1_143b_0_45_seg_p143_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_143b_0_45)
                 (not_occupied seg_p143_0_75)
                 (not_blocked seg_p143_0_75 airplane_CFBEG)
                 (not_blocked seg_p143_0_75 airplane_DAEWH)
                 (not_blocked seg_p143_0_75 airplane_DAEW3)
                 (not_blocked seg_p143_0_75 airplane_DAEW7)
                 (not_blocked seg_p143_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_143b_0_45))
                 (not_occupied seg_W1_143b_0_45)
                 (not (at-segment ?a seg_W1_143b_0_45))

                 (occupied seg_p143_0_75)
                 (not (not_occupied seg_p143_0_75))
                 (blocked seg_p143_0_75 ?a)
                 (not (not_blocked seg_p143_0_75 ?a))
                 (at-segment ?a seg_p143_0_75)

                 (not (blocked seg_W1_143a_0_34 ?a))
                 (not_blocked seg_W1_143a_0_34 ?a)
                 (not (blocked seg_W1_143c_0_60 ?a))
                 (not_blocked seg_W1_143c_0_60 ?a)

                )
)

(:action move_seg_p151_0_75_seg_W1_151b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p151_0_75)
                 (not_occupied seg_W1_151b_0_45)
                 (not_blocked seg_W1_151b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_151b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p151_0_75))
                 (not_occupied seg_p151_0_75)
                 (not (at-segment ?a seg_p151_0_75))

                 (occupied seg_W1_151b_0_45)
                 (not (not_occupied seg_W1_151b_0_45))
                 (blocked seg_W1_151b_0_45 ?a)
                 (not (not_blocked seg_W1_151b_0_45 ?a))
                 (at-segment ?a seg_W1_151b_0_45)


                )
)

(:action move_seg_W1_151b_0_45_seg_W1_151c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_151b_0_45)
                 (not_occupied seg_W1_151c_0_34)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_151a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_151b_0_45))
                 (not_occupied seg_W1_151b_0_45)
                 (not (at-segment ?a seg_W1_151b_0_45))

                 (occupied seg_W1_151c_0_34)
                 (not (not_occupied seg_W1_151c_0_34))
                 (blocked seg_W1_151c_0_34 ?a)
                 (not (not_blocked seg_W1_151c_0_34 ?a))
                 (at-segment ?a seg_W1_151c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p151_0_75 ?a))
                 (not_blocked seg_p151_0_75 ?a)

                 (blocked seg_W1_151a_0_34 ?a)
                 (not (not_blocked seg_W1_151a_0_34 ?a))
                )
)

(:action move_seg_W1_151c_0_34_seg_W1_152a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_151c_0_34)
                 (not_occupied seg_W1_152a_0_34)
                 (not_blocked seg_W1_152a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_152a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_151c_0_34))
                 (not_occupied seg_W1_151c_0_34)
                 (not (at-segment ?a seg_W1_151c_0_34))

                 (occupied seg_W1_152a_0_34)
                 (not (not_occupied seg_W1_152a_0_34))
                 (blocked seg_W1_152a_0_34 ?a)
                 (not (not_blocked seg_W1_152a_0_34 ?a))
                 (at-segment ?a seg_W1_152a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_151a_0_34 ?a))
                 (not_blocked seg_W1_151a_0_34 ?a)
                 (not (blocked seg_W1_151b_0_45 ?a))
                 (not_blocked seg_W1_151b_0_45 ?a)

                )
)

(:action move_seg_W1_152a_0_34_seg_W1_151c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_152a_0_34)
                 (not_occupied seg_W1_151c_0_34)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_152a_0_34))
                 (not_occupied seg_W1_152a_0_34)
                 (not (at-segment ?a seg_W1_152a_0_34))

                 (occupied seg_W1_151c_0_34)
                 (not (not_occupied seg_W1_151c_0_34))
                 (blocked seg_W1_151c_0_34 ?a)
                 (not (not_blocked seg_W1_151c_0_34 ?a))
                 (at-segment ?a seg_W1_151c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_152b_0_45 ?a))
                 (not_blocked seg_W1_152b_0_45 ?a)
                 (not (blocked seg_W1_152c_0_34 ?a))
                 (not_blocked seg_W1_152c_0_34 ?a)

                )
)

(:action move_seg_W1_151c_0_34_seg_W1_151a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_151c_0_34)
                 (not_occupied seg_W1_151a_0_34)
                 (not_blocked seg_W1_151a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_151a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_151b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_151c_0_34))
                 (not_occupied seg_W1_151c_0_34)
                 (not (at-segment ?a seg_W1_151c_0_34))

                 (occupied seg_W1_151a_0_34)
                 (not (not_occupied seg_W1_151a_0_34))
                 (blocked seg_W1_151a_0_34 ?a)
                 (not (not_blocked seg_W1_151a_0_34 ?a))
                 (at-segment ?a seg_W1_151a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_152a_0_34 ?a))
                 (not_blocked seg_W1_152a_0_34 ?a)

                 (blocked seg_W1_151b_0_45 ?a)
                 (not (not_blocked seg_W1_151b_0_45 ?a))
                )
)

(:action move_seg_W1_151a_0_34_seg_W1_C2c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_151a_0_34)
                 (not_occupied seg_W1_C2c_0_34)
                 (not_blocked seg_W1_C2c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C2c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_151a_0_34))
                 (not_occupied seg_W1_151a_0_34)
                 (not (at-segment ?a seg_W1_151a_0_34))

                 (occupied seg_W1_C2c_0_34)
                 (not (not_occupied seg_W1_C2c_0_34))
                 (blocked seg_W1_C2c_0_34 ?a)
                 (not (not_blocked seg_W1_C2c_0_34 ?a))
                 (at-segment ?a seg_W1_C2c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_151b_0_45 ?a))
                 (not_blocked seg_W1_151b_0_45 ?a)
                 (not (blocked seg_W1_151c_0_34 ?a))
                 (not_blocked seg_W1_151c_0_34 ?a)

                )
)

(:action move_seg_W1_C2c_0_34_seg_W1_C2a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C2c_0_34)
                 (not_occupied seg_W1_C2a_0_60)
                 (not_blocked seg_W1_C2a_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_C2a_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_C2a_0_60 airplane_CFBE1)

                 (not_occupied seg_W1_C2b_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C2c_0_34))
                 (not_occupied seg_W1_C2c_0_34)
                 (not (at-segment ?a seg_W1_C2c_0_34))

                 (occupied seg_W1_C2a_0_60)
                 (not (not_occupied seg_W1_C2a_0_60))
                 (blocked seg_W1_C2a_0_60 ?a)
                 (not (not_blocked seg_W1_C2a_0_60 ?a))
                 (at-segment ?a seg_W1_C2a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_151a_0_34 ?a))
                 (not_blocked seg_W1_151a_0_34 ?a)

                 (blocked seg_W1_C2b_0_60 ?a)
                 (not (not_blocked seg_W1_C2b_0_60 ?a))
                )
)

(:action move_seg_W1_143a_0_34_seg_W1_143c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_143a_0_34)
                 (not_occupied seg_W1_143c_0_60)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_143c_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_143c_0_60 airplane_CFBE1)

                 (not_occupied seg_W1_143b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_143a_0_34))
                 (not_occupied seg_W1_143a_0_34)
                 (not (at-segment ?a seg_W1_143a_0_34))

                 (occupied seg_W1_143c_0_60)
                 (not (not_occupied seg_W1_143c_0_60))
                 (blocked seg_W1_143c_0_60 ?a)
                 (not (not_blocked seg_W1_143c_0_60 ?a))
                 (at-segment ?a seg_W1_143c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_142c_0_34 ?a))
                 (not_blocked seg_W1_142c_0_34 ?a)

                 (blocked seg_W1_143b_0_45 ?a)
                 (not (not_blocked seg_W1_143b_0_45 ?a))
                )
)

(:action move_seg_W1_C2a_0_60_seg_W1_C2c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C2a_0_60)
                 (not_occupied seg_W1_C2c_0_34)
                 (not_blocked seg_W1_C2c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C2c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C2c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_C2b_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C2a_0_60))
                 (not_occupied seg_W1_C2a_0_60)
                 (not (at-segment ?a seg_W1_C2a_0_60))

                 (occupied seg_W1_C2c_0_34)
                 (not (not_occupied seg_W1_C2c_0_34))
                 (blocked seg_W1_C2c_0_34 ?a)
                 (not (not_blocked seg_W1_C2c_0_34 ?a))
                 (at-segment ?a seg_W1_C2c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_143c_0_60 ?a))
                 (not_blocked seg_W1_143c_0_60 ?a)

                 (blocked seg_W1_C2b_0_60 ?a)
                 (not (not_blocked seg_W1_C2b_0_60 ?a))
                )
)

(:action move_seg_W1_C2c_0_34_seg_W1_151a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C2c_0_34)
                 (not_occupied seg_W1_151a_0_34)
                 (not_blocked seg_W1_151a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_151a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_151a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C2c_0_34))
                 (not_occupied seg_W1_C2c_0_34)
                 (not (at-segment ?a seg_W1_C2c_0_34))

                 (occupied seg_W1_151a_0_34)
                 (not (not_occupied seg_W1_151a_0_34))
                 (blocked seg_W1_151a_0_34 ?a)
                 (not (not_blocked seg_W1_151a_0_34 ?a))
                 (at-segment ?a seg_W1_151a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C2a_0_60 ?a))
                 (not_blocked seg_W1_C2a_0_60 ?a)
                 (not (blocked seg_W1_C2b_0_60 ?a))
                 (not_blocked seg_W1_C2b_0_60 ?a)

                )
)

(:action move_seg_W1_151a_0_34_seg_W1_151b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_151a_0_34)
                 (not_occupied seg_W1_151b_0_45)
                 (not_blocked seg_W1_151b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_151b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_151b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_151c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_151a_0_34))
                 (not_occupied seg_W1_151a_0_34)
                 (not (at-segment ?a seg_W1_151a_0_34))

                 (occupied seg_W1_151b_0_45)
                 (not (not_occupied seg_W1_151b_0_45))
                 (blocked seg_W1_151b_0_45 ?a)
                 (not (not_blocked seg_W1_151b_0_45 ?a))
                 (at-segment ?a seg_W1_151b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C2c_0_34 ?a))
                 (not_blocked seg_W1_C2c_0_34 ?a)

                 (blocked seg_W1_151c_0_34 ?a)
                 (not (not_blocked seg_W1_151c_0_34 ?a))
                )
)

(:action move_seg_W1_151b_0_45_seg_p151_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_151b_0_45)
                 (not_occupied seg_p151_0_75)
                 (not_blocked seg_p151_0_75 airplane_CFBEG)
                 (not_blocked seg_p151_0_75 airplane_DAEWH)
                 (not_blocked seg_p151_0_75 airplane_DAEW3)
                 (not_blocked seg_p151_0_75 airplane_DAEW7)
                 (not_blocked seg_p151_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_151b_0_45))
                 (not_occupied seg_W1_151b_0_45)
                 (not (at-segment ?a seg_W1_151b_0_45))

                 (occupied seg_p151_0_75)
                 (not (not_occupied seg_p151_0_75))
                 (blocked seg_p151_0_75 ?a)
                 (not (not_blocked seg_p151_0_75 ?a))
                 (at-segment ?a seg_p151_0_75)

                 (not (blocked seg_W1_151a_0_34 ?a))
                 (not_blocked seg_W1_151a_0_34 ?a)
                 (not (blocked seg_W1_151c_0_34 ?a))
                 (not_blocked seg_W1_151c_0_34 ?a)

                )
)

(:action move_seg_p152_0_75_seg_W1_152b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p152_0_75)
                 (not_occupied seg_W1_152b_0_45)
                 (not_blocked seg_W1_152b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_152b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p152_0_75))
                 (not_occupied seg_p152_0_75)
                 (not (at-segment ?a seg_p152_0_75))

                 (occupied seg_W1_152b_0_45)
                 (not (not_occupied seg_W1_152b_0_45))
                 (blocked seg_W1_152b_0_45 ?a)
                 (not (not_blocked seg_W1_152b_0_45 ?a))
                 (at-segment ?a seg_W1_152b_0_45)


                )
)

(:action move_seg_W1_152b_0_45_seg_W1_152c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_152b_0_45)
                 (not_occupied seg_W1_152c_0_34)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_152a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_152b_0_45))
                 (not_occupied seg_W1_152b_0_45)
                 (not (at-segment ?a seg_W1_152b_0_45))

                 (occupied seg_W1_152c_0_34)
                 (not (not_occupied seg_W1_152c_0_34))
                 (blocked seg_W1_152c_0_34 ?a)
                 (not (not_blocked seg_W1_152c_0_34 ?a))
                 (at-segment ?a seg_W1_152c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p152_0_75 ?a))
                 (not_blocked seg_p152_0_75 ?a)

                 (blocked seg_W1_152a_0_34 ?a)
                 (not (not_blocked seg_W1_152a_0_34 ?a))
                )
)

(:action move_seg_W1_152c_0_34_seg_W1_153a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_152c_0_34)
                 (not_occupied seg_W1_153a_0_34)
                 (not_blocked seg_W1_153a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_153a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_152c_0_34))
                 (not_occupied seg_W1_152c_0_34)
                 (not (at-segment ?a seg_W1_152c_0_34))

                 (occupied seg_W1_153a_0_34)
                 (not (not_occupied seg_W1_153a_0_34))
                 (blocked seg_W1_153a_0_34 ?a)
                 (not (not_blocked seg_W1_153a_0_34 ?a))
                 (at-segment ?a seg_W1_153a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_152a_0_34 ?a))
                 (not_blocked seg_W1_152a_0_34 ?a)
                 (not (blocked seg_W1_152b_0_45 ?a))
                 (not_blocked seg_W1_152b_0_45 ?a)

                )
)

(:action move_seg_W1_153a_0_34_seg_W1_152c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_153a_0_34)
                 (not_occupied seg_W1_152c_0_34)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_153a_0_34))
                 (not_occupied seg_W1_153a_0_34)
                 (not (at-segment ?a seg_W1_153a_0_34))

                 (occupied seg_W1_152c_0_34)
                 (not (not_occupied seg_W1_152c_0_34))
                 (blocked seg_W1_152c_0_34 ?a)
                 (not (not_blocked seg_W1_152c_0_34 ?a))
                 (at-segment ?a seg_W1_152c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_153b_0_45 ?a))
                 (not_blocked seg_W1_153b_0_45 ?a)
                 (not (blocked seg_W1_153c_0_34 ?a))
                 (not_blocked seg_W1_153c_0_34 ?a)

                )
)

(:action move_seg_W1_152c_0_34_seg_W1_152a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_152c_0_34)
                 (not_occupied seg_W1_152a_0_34)
                 (not_blocked seg_W1_152a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_152a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_152a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_152b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_152c_0_34))
                 (not_occupied seg_W1_152c_0_34)
                 (not (at-segment ?a seg_W1_152c_0_34))

                 (occupied seg_W1_152a_0_34)
                 (not (not_occupied seg_W1_152a_0_34))
                 (blocked seg_W1_152a_0_34 ?a)
                 (not (not_blocked seg_W1_152a_0_34 ?a))
                 (at-segment ?a seg_W1_152a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_153a_0_34 ?a))
                 (not_blocked seg_W1_153a_0_34 ?a)

                 (blocked seg_W1_152b_0_45 ?a)
                 (not (not_blocked seg_W1_152b_0_45 ?a))
                )
)

(:action move_seg_W1_151a_0_34_seg_W1_151c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_151a_0_34)
                 (not_occupied seg_W1_151c_0_34)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_151c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_151c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_151b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_151a_0_34))
                 (not_occupied seg_W1_151a_0_34)
                 (not (at-segment ?a seg_W1_151a_0_34))

                 (occupied seg_W1_151c_0_34)
                 (not (not_occupied seg_W1_151c_0_34))
                 (blocked seg_W1_151c_0_34 ?a)
                 (not (not_blocked seg_W1_151c_0_34 ?a))
                 (at-segment ?a seg_W1_151c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C2c_0_34 ?a))
                 (not_blocked seg_W1_C2c_0_34 ?a)

                 (blocked seg_W1_151b_0_45 ?a)
                 (not (not_blocked seg_W1_151b_0_45 ?a))
                )
)

(:action move_seg_W1_152a_0_34_seg_W1_152b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_152a_0_34)
                 (not_occupied seg_W1_152b_0_45)
                 (not_blocked seg_W1_152b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_152b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_152b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_152c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_152a_0_34))
                 (not_occupied seg_W1_152a_0_34)
                 (not (at-segment ?a seg_W1_152a_0_34))

                 (occupied seg_W1_152b_0_45)
                 (not (not_occupied seg_W1_152b_0_45))
                 (blocked seg_W1_152b_0_45 ?a)
                 (not (not_blocked seg_W1_152b_0_45 ?a))
                 (at-segment ?a seg_W1_152b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_151c_0_34 ?a))
                 (not_blocked seg_W1_151c_0_34 ?a)

                 (blocked seg_W1_152c_0_34 ?a)
                 (not (not_blocked seg_W1_152c_0_34 ?a))
                )
)

(:action move_seg_W1_152b_0_45_seg_p152_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_152b_0_45)
                 (not_occupied seg_p152_0_75)
                 (not_blocked seg_p152_0_75 airplane_CFBEG)
                 (not_blocked seg_p152_0_75 airplane_DAEWH)
                 (not_blocked seg_p152_0_75 airplane_DAEW3)
                 (not_blocked seg_p152_0_75 airplane_DAEW7)
                 (not_blocked seg_p152_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_152b_0_45))
                 (not_occupied seg_W1_152b_0_45)
                 (not (at-segment ?a seg_W1_152b_0_45))

                 (occupied seg_p152_0_75)
                 (not (not_occupied seg_p152_0_75))
                 (blocked seg_p152_0_75 ?a)
                 (not (not_blocked seg_p152_0_75 ?a))
                 (at-segment ?a seg_p152_0_75)

                 (not (blocked seg_W1_152a_0_34 ?a))
                 (not_blocked seg_W1_152a_0_34 ?a)
                 (not (blocked seg_W1_152c_0_34 ?a))
                 (not_blocked seg_W1_152c_0_34 ?a)

                )
)

(:action move_seg_p153_0_75_seg_W1_153b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p153_0_75)
                 (not_occupied seg_W1_153b_0_45)
                 (not_blocked seg_W1_153b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_153b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p153_0_75))
                 (not_occupied seg_p153_0_75)
                 (not (at-segment ?a seg_p153_0_75))

                 (occupied seg_W1_153b_0_45)
                 (not (not_occupied seg_W1_153b_0_45))
                 (blocked seg_W1_153b_0_45 ?a)
                 (not (not_blocked seg_W1_153b_0_45 ?a))
                 (at-segment ?a seg_W1_153b_0_45)


                )
)

(:action move_seg_W1_153b_0_45_seg_W1_153c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_153b_0_45)
                 (not_occupied seg_W1_153c_0_34)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_153a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_153b_0_45))
                 (not_occupied seg_W1_153b_0_45)
                 (not (at-segment ?a seg_W1_153b_0_45))

                 (occupied seg_W1_153c_0_34)
                 (not (not_occupied seg_W1_153c_0_34))
                 (blocked seg_W1_153c_0_34 ?a)
                 (not (not_blocked seg_W1_153c_0_34 ?a))
                 (at-segment ?a seg_W1_153c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p153_0_75 ?a))
                 (not_blocked seg_p153_0_75 ?a)

                 (blocked seg_W1_153a_0_34 ?a)
                 (not (not_blocked seg_W1_153a_0_34 ?a))
                )
)

(:action move_seg_W1_153c_0_34_seg_W1_154a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_153c_0_34)
                 (not_occupied seg_W1_154a_0_34)
                 (not_blocked seg_W1_154a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_154a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_153c_0_34))
                 (not_occupied seg_W1_153c_0_34)
                 (not (at-segment ?a seg_W1_153c_0_34))

                 (occupied seg_W1_154a_0_34)
                 (not (not_occupied seg_W1_154a_0_34))
                 (blocked seg_W1_154a_0_34 ?a)
                 (not (not_blocked seg_W1_154a_0_34 ?a))
                 (at-segment ?a seg_W1_154a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_153a_0_34 ?a))
                 (not_blocked seg_W1_153a_0_34 ?a)
                 (not (blocked seg_W1_153b_0_45 ?a))
                 (not_blocked seg_W1_153b_0_45 ?a)

                )
)

(:action move_seg_W1_154a_0_34_seg_W1_153c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_154a_0_34)
                 (not_occupied seg_W1_153c_0_34)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_154a_0_34))
                 (not_occupied seg_W1_154a_0_34)
                 (not (at-segment ?a seg_W1_154a_0_34))

                 (occupied seg_W1_153c_0_34)
                 (not (not_occupied seg_W1_153c_0_34))
                 (blocked seg_W1_153c_0_34 ?a)
                 (not (not_blocked seg_W1_153c_0_34 ?a))
                 (at-segment ?a seg_W1_153c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_154b_0_45 ?a))
                 (not_blocked seg_W1_154b_0_45 ?a)
                 (not (blocked seg_W1_154c_0_34 ?a))
                 (not_blocked seg_W1_154c_0_34 ?a)

                )
)

(:action move_seg_W1_153c_0_34_seg_W1_153a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_153c_0_34)
                 (not_occupied seg_W1_153a_0_34)
                 (not_blocked seg_W1_153a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_153a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_153a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_153b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_153c_0_34))
                 (not_occupied seg_W1_153c_0_34)
                 (not (at-segment ?a seg_W1_153c_0_34))

                 (occupied seg_W1_153a_0_34)
                 (not (not_occupied seg_W1_153a_0_34))
                 (blocked seg_W1_153a_0_34 ?a)
                 (not (not_blocked seg_W1_153a_0_34 ?a))
                 (at-segment ?a seg_W1_153a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_154a_0_34 ?a))
                 (not_blocked seg_W1_154a_0_34 ?a)

                 (blocked seg_W1_153b_0_45 ?a)
                 (not (not_blocked seg_W1_153b_0_45 ?a))
                )
)

(:action move_seg_W1_152a_0_34_seg_W1_152c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_152a_0_34)
                 (not_occupied seg_W1_152c_0_34)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_152c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_152c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_152b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_152a_0_34))
                 (not_occupied seg_W1_152a_0_34)
                 (not (at-segment ?a seg_W1_152a_0_34))

                 (occupied seg_W1_152c_0_34)
                 (not (not_occupied seg_W1_152c_0_34))
                 (blocked seg_W1_152c_0_34 ?a)
                 (not (not_blocked seg_W1_152c_0_34 ?a))
                 (at-segment ?a seg_W1_152c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_151c_0_34 ?a))
                 (not_blocked seg_W1_151c_0_34 ?a)

                 (blocked seg_W1_152b_0_45 ?a)
                 (not (not_blocked seg_W1_152b_0_45 ?a))
                )
)

(:action move_seg_W1_153a_0_34_seg_W1_153b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_153a_0_34)
                 (not_occupied seg_W1_153b_0_45)
                 (not_blocked seg_W1_153b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_153b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_153b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_153c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_153a_0_34))
                 (not_occupied seg_W1_153a_0_34)
                 (not (at-segment ?a seg_W1_153a_0_34))

                 (occupied seg_W1_153b_0_45)
                 (not (not_occupied seg_W1_153b_0_45))
                 (blocked seg_W1_153b_0_45 ?a)
                 (not (not_blocked seg_W1_153b_0_45 ?a))
                 (at-segment ?a seg_W1_153b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_152c_0_34 ?a))
                 (not_blocked seg_W1_152c_0_34 ?a)

                 (blocked seg_W1_153c_0_34 ?a)
                 (not (not_blocked seg_W1_153c_0_34 ?a))
                )
)

(:action move_seg_W1_153b_0_45_seg_p153_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_153b_0_45)
                 (not_occupied seg_p153_0_75)
                 (not_blocked seg_p153_0_75 airplane_CFBEG)
                 (not_blocked seg_p153_0_75 airplane_DAEWH)
                 (not_blocked seg_p153_0_75 airplane_DAEW3)
                 (not_blocked seg_p153_0_75 airplane_DAEW7)
                 (not_blocked seg_p153_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_153b_0_45))
                 (not_occupied seg_W1_153b_0_45)
                 (not (at-segment ?a seg_W1_153b_0_45))

                 (occupied seg_p153_0_75)
                 (not (not_occupied seg_p153_0_75))
                 (blocked seg_p153_0_75 ?a)
                 (not (not_blocked seg_p153_0_75 ?a))
                 (at-segment ?a seg_p153_0_75)

                 (not (blocked seg_W1_153a_0_34 ?a))
                 (not_blocked seg_W1_153a_0_34 ?a)
                 (not (blocked seg_W1_153c_0_34 ?a))
                 (not_blocked seg_W1_153c_0_34 ?a)

                )
)

(:action move_seg_p154_0_75_seg_W1_154b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p154_0_75)
                 (not_occupied seg_W1_154b_0_45)
                 (not_blocked seg_W1_154b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_154b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p154_0_75))
                 (not_occupied seg_p154_0_75)
                 (not (at-segment ?a seg_p154_0_75))

                 (occupied seg_W1_154b_0_45)
                 (not (not_occupied seg_W1_154b_0_45))
                 (blocked seg_W1_154b_0_45 ?a)
                 (not (not_blocked seg_W1_154b_0_45 ?a))
                 (at-segment ?a seg_W1_154b_0_45)


                )
)

(:action move_seg_W1_154b_0_45_seg_W1_154c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_154b_0_45)
                 (not_occupied seg_W1_154c_0_34)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_154a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_154b_0_45))
                 (not_occupied seg_W1_154b_0_45)
                 (not (at-segment ?a seg_W1_154b_0_45))

                 (occupied seg_W1_154c_0_34)
                 (not (not_occupied seg_W1_154c_0_34))
                 (blocked seg_W1_154c_0_34 ?a)
                 (not (not_blocked seg_W1_154c_0_34 ?a))
                 (at-segment ?a seg_W1_154c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p154_0_75 ?a))
                 (not_blocked seg_p154_0_75 ?a)

                 (blocked seg_W1_154a_0_34 ?a)
                 (not (not_blocked seg_W1_154a_0_34 ?a))
                )
)

(:action move_seg_W1_154c_0_34_seg_W1_C3a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_154c_0_34)
                 (not_occupied seg_W1_C3a_0_34)
                 (not_blocked seg_W1_C3a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C3a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_154c_0_34))
                 (not_occupied seg_W1_154c_0_34)
                 (not (at-segment ?a seg_W1_154c_0_34))

                 (occupied seg_W1_C3a_0_34)
                 (not (not_occupied seg_W1_C3a_0_34))
                 (blocked seg_W1_C3a_0_34 ?a)
                 (not (not_blocked seg_W1_C3a_0_34 ?a))
                 (at-segment ?a seg_W1_C3a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_154a_0_34 ?a))
                 (not_blocked seg_W1_154a_0_34 ?a)
                 (not (blocked seg_W1_154b_0_45 ?a))
                 (not_blocked seg_W1_154b_0_45 ?a)

                )
)

(:action move_seg_W1_C3a_0_34_seg_W1_154c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C3a_0_34)
                 (not_occupied seg_W1_154c_0_34)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C3a_0_34))
                 (not_occupied seg_W1_C3a_0_34)
                 (not (at-segment ?a seg_W1_C3a_0_34))

                 (occupied seg_W1_154c_0_34)
                 (not (not_occupied seg_W1_154c_0_34))
                 (blocked seg_W1_154c_0_34 ?a)
                 (not (not_blocked seg_W1_154c_0_34 ?a))
                 (at-segment ?a seg_W1_154c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C3b_0_60 ?a))
                 (not_blocked seg_W1_C3b_0_60 ?a)
                 (not (blocked seg_W1_C3c_0_48 ?a))
                 (not_blocked seg_W1_C3c_0_48 ?a)

                )
)

(:action move_seg_W1_154c_0_34_seg_W1_154a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_154c_0_34)
                 (not_occupied seg_W1_154a_0_34)
                 (not_blocked seg_W1_154a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_154a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_154a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_154b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_154c_0_34))
                 (not_occupied seg_W1_154c_0_34)
                 (not (at-segment ?a seg_W1_154c_0_34))

                 (occupied seg_W1_154a_0_34)
                 (not (not_occupied seg_W1_154a_0_34))
                 (blocked seg_W1_154a_0_34 ?a)
                 (not (not_blocked seg_W1_154a_0_34 ?a))
                 (at-segment ?a seg_W1_154a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C3a_0_34 ?a))
                 (not_blocked seg_W1_C3a_0_34 ?a)

                 (blocked seg_W1_154b_0_45 ?a)
                 (not (not_blocked seg_W1_154b_0_45 ?a))
                )
)

(:action move_seg_W1_153a_0_34_seg_W1_153c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_153a_0_34)
                 (not_occupied seg_W1_153c_0_34)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_153c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_153c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_153b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_153a_0_34))
                 (not_occupied seg_W1_153a_0_34)
                 (not (at-segment ?a seg_W1_153a_0_34))

                 (occupied seg_W1_153c_0_34)
                 (not (not_occupied seg_W1_153c_0_34))
                 (blocked seg_W1_153c_0_34 ?a)
                 (not (not_blocked seg_W1_153c_0_34 ?a))
                 (at-segment ?a seg_W1_153c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_152c_0_34 ?a))
                 (not_blocked seg_W1_152c_0_34 ?a)

                 (blocked seg_W1_153b_0_45 ?a)
                 (not (not_blocked seg_W1_153b_0_45 ?a))
                )
)

(:action move_seg_W1_154a_0_34_seg_W1_154b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_154a_0_34)
                 (not_occupied seg_W1_154b_0_45)
                 (not_blocked seg_W1_154b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_154b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_154b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_154c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_154a_0_34))
                 (not_occupied seg_W1_154a_0_34)
                 (not (at-segment ?a seg_W1_154a_0_34))

                 (occupied seg_W1_154b_0_45)
                 (not (not_occupied seg_W1_154b_0_45))
                 (blocked seg_W1_154b_0_45 ?a)
                 (not (not_blocked seg_W1_154b_0_45 ?a))
                 (at-segment ?a seg_W1_154b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_153c_0_34 ?a))
                 (not_blocked seg_W1_153c_0_34 ?a)

                 (blocked seg_W1_154c_0_34 ?a)
                 (not (not_blocked seg_W1_154c_0_34 ?a))
                )
)

(:action move_seg_W1_154b_0_45_seg_p154_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_154b_0_45)
                 (not_occupied seg_p154_0_75)
                 (not_blocked seg_p154_0_75 airplane_CFBEG)
                 (not_blocked seg_p154_0_75 airplane_DAEWH)
                 (not_blocked seg_p154_0_75 airplane_DAEW3)
                 (not_blocked seg_p154_0_75 airplane_DAEW7)
                 (not_blocked seg_p154_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_154b_0_45))
                 (not_occupied seg_W1_154b_0_45)
                 (not (at-segment ?a seg_W1_154b_0_45))

                 (occupied seg_p154_0_75)
                 (not (not_occupied seg_p154_0_75))
                 (blocked seg_p154_0_75 ?a)
                 (not (not_blocked seg_p154_0_75 ?a))
                 (at-segment ?a seg_p154_0_75)

                 (not (blocked seg_W1_154a_0_34 ?a))
                 (not_blocked seg_W1_154a_0_34 ?a)
                 (not (blocked seg_W1_154c_0_34 ?a))
                 (not_blocked seg_W1_154c_0_34 ?a)

                )
)

(:action move_seg_p161_0_75_seg_W1_161b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p161_0_75)
                 (not_occupied seg_W1_161b_0_45)
                 (not_blocked seg_W1_161b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_161b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p161_0_75))
                 (not_occupied seg_p161_0_75)
                 (not (at-segment ?a seg_p161_0_75))

                 (occupied seg_W1_161b_0_45)
                 (not (not_occupied seg_W1_161b_0_45))
                 (blocked seg_W1_161b_0_45 ?a)
                 (not (not_blocked seg_W1_161b_0_45 ?a))
                 (at-segment ?a seg_W1_161b_0_45)


                )
)

(:action move_seg_W1_161b_0_45_seg_W1_161c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_161b_0_45)
                 (not_occupied seg_W1_161c_0_34)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_161a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_161b_0_45))
                 (not_occupied seg_W1_161b_0_45)
                 (not (at-segment ?a seg_W1_161b_0_45))

                 (occupied seg_W1_161c_0_34)
                 (not (not_occupied seg_W1_161c_0_34))
                 (blocked seg_W1_161c_0_34 ?a)
                 (not (not_blocked seg_W1_161c_0_34 ?a))
                 (at-segment ?a seg_W1_161c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p161_0_75 ?a))
                 (not_blocked seg_p161_0_75 ?a)

                 (blocked seg_W1_161a_0_34 ?a)
                 (not (not_blocked seg_W1_161a_0_34 ?a))
                )
)

(:action move_seg_W1_161c_0_34_seg_W1_162a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_161c_0_34)
                 (not_occupied seg_W1_162a_0_34)
                 (not_blocked seg_W1_162a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_162a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_161c_0_34))
                 (not_occupied seg_W1_161c_0_34)
                 (not (at-segment ?a seg_W1_161c_0_34))

                 (occupied seg_W1_162a_0_34)
                 (not (not_occupied seg_W1_162a_0_34))
                 (blocked seg_W1_162a_0_34 ?a)
                 (not (not_blocked seg_W1_162a_0_34 ?a))
                 (at-segment ?a seg_W1_162a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_161a_0_34 ?a))
                 (not_blocked seg_W1_161a_0_34 ?a)
                 (not (blocked seg_W1_161b_0_45 ?a))
                 (not_blocked seg_W1_161b_0_45 ?a)

                )
)

(:action move_seg_W1_162a_0_34_seg_W1_161c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_162a_0_34)
                 (not_occupied seg_W1_161c_0_34)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_162a_0_34))
                 (not_occupied seg_W1_162a_0_34)
                 (not (at-segment ?a seg_W1_162a_0_34))

                 (occupied seg_W1_161c_0_34)
                 (not (not_occupied seg_W1_161c_0_34))
                 (blocked seg_W1_161c_0_34 ?a)
                 (not (not_blocked seg_W1_161c_0_34 ?a))
                 (at-segment ?a seg_W1_161c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_162b_0_45 ?a))
                 (not_blocked seg_W1_162b_0_45 ?a)
                 (not (blocked seg_W1_162c_0_34 ?a))
                 (not_blocked seg_W1_162c_0_34 ?a)

                )
)

(:action move_seg_W1_161c_0_34_seg_W1_161a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_161c_0_34)
                 (not_occupied seg_W1_161a_0_34)
                 (not_blocked seg_W1_161a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_161a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_161b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_161c_0_34))
                 (not_occupied seg_W1_161c_0_34)
                 (not (at-segment ?a seg_W1_161c_0_34))

                 (occupied seg_W1_161a_0_34)
                 (not (not_occupied seg_W1_161a_0_34))
                 (blocked seg_W1_161a_0_34 ?a)
                 (not (not_blocked seg_W1_161a_0_34 ?a))
                 (at-segment ?a seg_W1_161a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_162a_0_34 ?a))
                 (not_blocked seg_W1_162a_0_34 ?a)

                 (blocked seg_W1_161b_0_45 ?a)
                 (not (not_blocked seg_W1_161b_0_45 ?a))
                )
)

(:action move_seg_W1_161a_0_34_seg_W1_C3c_0_48_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_161a_0_34)
                 (not_occupied seg_W1_C3c_0_48)
                 (not_blocked seg_W1_C3c_0_48 airplane_CFBEG)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEWH)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEW3)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEW7)
                 (not_blocked seg_W1_C3c_0_48 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_161a_0_34))
                 (not_occupied seg_W1_161a_0_34)
                 (not (at-segment ?a seg_W1_161a_0_34))

                 (occupied seg_W1_C3c_0_48)
                 (not (not_occupied seg_W1_C3c_0_48))
                 (blocked seg_W1_C3c_0_48 ?a)
                 (not (not_blocked seg_W1_C3c_0_48 ?a))
                 (at-segment ?a seg_W1_C3c_0_48)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_161b_0_45 ?a))
                 (not_blocked seg_W1_161b_0_45 ?a)
                 (not (blocked seg_W1_161c_0_34 ?a))
                 (not_blocked seg_W1_161c_0_34 ?a)

                )
)

(:action move_seg_W1_C3c_0_48_seg_W1_C3a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C3c_0_48)
                 (not_occupied seg_W1_C3a_0_34)
                 (not_blocked seg_W1_C3a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C3a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C3a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_C3b_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C3c_0_48))
                 (not_occupied seg_W1_C3c_0_48)
                 (not (at-segment ?a seg_W1_C3c_0_48))

                 (occupied seg_W1_C3a_0_34)
                 (not (not_occupied seg_W1_C3a_0_34))
                 (blocked seg_W1_C3a_0_34 ?a)
                 (not (not_blocked seg_W1_C3a_0_34 ?a))
                 (at-segment ?a seg_W1_C3a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_161a_0_34 ?a))
                 (not_blocked seg_W1_161a_0_34 ?a)

                 (blocked seg_W1_C3b_0_60 ?a)
                 (not (not_blocked seg_W1_C3b_0_60 ?a))
                )
)

(:action move_seg_W1_154a_0_34_seg_W1_154c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_154a_0_34)
                 (not_occupied seg_W1_154c_0_34)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_154c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_154c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_154b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_154a_0_34))
                 (not_occupied seg_W1_154a_0_34)
                 (not (at-segment ?a seg_W1_154a_0_34))

                 (occupied seg_W1_154c_0_34)
                 (not (not_occupied seg_W1_154c_0_34))
                 (blocked seg_W1_154c_0_34 ?a)
                 (not (not_blocked seg_W1_154c_0_34 ?a))
                 (at-segment ?a seg_W1_154c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_153c_0_34 ?a))
                 (not_blocked seg_W1_153c_0_34 ?a)

                 (blocked seg_W1_154b_0_45 ?a)
                 (not (not_blocked seg_W1_154b_0_45 ?a))
                )
)

(:action move_seg_W1_C3a_0_34_seg_W1_C3c_0_48_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C3a_0_34)
                 (not_occupied seg_W1_C3c_0_48)
                 (not_blocked seg_W1_C3c_0_48 airplane_CFBEG)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEWH)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEW3)
                 (not_blocked seg_W1_C3c_0_48 airplane_DAEW7)
                 (not_blocked seg_W1_C3c_0_48 airplane_CFBE1)

                 (not_occupied seg_W1_C3b_0_60)
              )

 :effect        (and
                 (not (occupied seg_W1_C3a_0_34))
                 (not_occupied seg_W1_C3a_0_34)
                 (not (at-segment ?a seg_W1_C3a_0_34))

                 (occupied seg_W1_C3c_0_48)
                 (not (not_occupied seg_W1_C3c_0_48))
                 (blocked seg_W1_C3c_0_48 ?a)
                 (not (not_blocked seg_W1_C3c_0_48 ?a))
                 (at-segment ?a seg_W1_C3c_0_48)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_154c_0_34 ?a))
                 (not_blocked seg_W1_154c_0_34 ?a)

                 (blocked seg_W1_C3b_0_60 ?a)
                 (not (not_blocked seg_W1_C3b_0_60 ?a))
                )
)

(:action move_seg_W1_C3c_0_48_seg_W1_161a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C3c_0_48)
                 (not_occupied seg_W1_161a_0_34)
                 (not_blocked seg_W1_161a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_161a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_161a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C3c_0_48))
                 (not_occupied seg_W1_C3c_0_48)
                 (not (at-segment ?a seg_W1_C3c_0_48))

                 (occupied seg_W1_161a_0_34)
                 (not (not_occupied seg_W1_161a_0_34))
                 (blocked seg_W1_161a_0_34 ?a)
                 (not (not_blocked seg_W1_161a_0_34 ?a))
                 (at-segment ?a seg_W1_161a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C3a_0_34 ?a))
                 (not_blocked seg_W1_C3a_0_34 ?a)
                 (not (blocked seg_W1_C3b_0_60 ?a))
                 (not_blocked seg_W1_C3b_0_60 ?a)

                )
)

(:action move_seg_W1_161a_0_34_seg_W1_161b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_161a_0_34)
                 (not_occupied seg_W1_161b_0_45)
                 (not_blocked seg_W1_161b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_161b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_161b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_161c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_161a_0_34))
                 (not_occupied seg_W1_161a_0_34)
                 (not (at-segment ?a seg_W1_161a_0_34))

                 (occupied seg_W1_161b_0_45)
                 (not (not_occupied seg_W1_161b_0_45))
                 (blocked seg_W1_161b_0_45 ?a)
                 (not (not_blocked seg_W1_161b_0_45 ?a))
                 (at-segment ?a seg_W1_161b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C3c_0_48 ?a))
                 (not_blocked seg_W1_C3c_0_48 ?a)

                 (blocked seg_W1_161c_0_34 ?a)
                 (not (not_blocked seg_W1_161c_0_34 ?a))
                )
)

(:action move_seg_W1_161b_0_45_seg_p161_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_161b_0_45)
                 (not_occupied seg_p161_0_75)
                 (not_blocked seg_p161_0_75 airplane_CFBEG)
                 (not_blocked seg_p161_0_75 airplane_DAEWH)
                 (not_blocked seg_p161_0_75 airplane_DAEW3)
                 (not_blocked seg_p161_0_75 airplane_DAEW7)
                 (not_blocked seg_p161_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_161b_0_45))
                 (not_occupied seg_W1_161b_0_45)
                 (not (at-segment ?a seg_W1_161b_0_45))

                 (occupied seg_p161_0_75)
                 (not (not_occupied seg_p161_0_75))
                 (blocked seg_p161_0_75 ?a)
                 (not (not_blocked seg_p161_0_75 ?a))
                 (at-segment ?a seg_p161_0_75)

                 (not (blocked seg_W1_161a_0_34 ?a))
                 (not_blocked seg_W1_161a_0_34 ?a)
                 (not (blocked seg_W1_161c_0_34 ?a))
                 (not_blocked seg_W1_161c_0_34 ?a)

                )
)

(:action move_seg_p162_0_75_seg_W1_162b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p162_0_75)
                 (not_occupied seg_W1_162b_0_45)
                 (not_blocked seg_W1_162b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_162b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p162_0_75))
                 (not_occupied seg_p162_0_75)
                 (not (at-segment ?a seg_p162_0_75))

                 (occupied seg_W1_162b_0_45)
                 (not (not_occupied seg_W1_162b_0_45))
                 (blocked seg_W1_162b_0_45 ?a)
                 (not (not_blocked seg_W1_162b_0_45 ?a))
                 (at-segment ?a seg_W1_162b_0_45)


                )
)

(:action move_seg_W1_162b_0_45_seg_W1_162c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_162b_0_45)
                 (not_occupied seg_W1_162c_0_34)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_162a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_162b_0_45))
                 (not_occupied seg_W1_162b_0_45)
                 (not (at-segment ?a seg_W1_162b_0_45))

                 (occupied seg_W1_162c_0_34)
                 (not (not_occupied seg_W1_162c_0_34))
                 (blocked seg_W1_162c_0_34 ?a)
                 (not (not_blocked seg_W1_162c_0_34 ?a))
                 (at-segment ?a seg_W1_162c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p162_0_75 ?a))
                 (not_blocked seg_p162_0_75 ?a)

                 (blocked seg_W1_162a_0_34 ?a)
                 (not (not_blocked seg_W1_162a_0_34 ?a))
                )
)

(:action move_seg_W1_162c_0_34_seg_W1_163a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_162c_0_34)
                 (not_occupied seg_W1_163a_0_34)
                 (not_blocked seg_W1_163a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_163a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_162c_0_34))
                 (not_occupied seg_W1_162c_0_34)
                 (not (at-segment ?a seg_W1_162c_0_34))

                 (occupied seg_W1_163a_0_34)
                 (not (not_occupied seg_W1_163a_0_34))
                 (blocked seg_W1_163a_0_34 ?a)
                 (not (not_blocked seg_W1_163a_0_34 ?a))
                 (at-segment ?a seg_W1_163a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_162a_0_34 ?a))
                 (not_blocked seg_W1_162a_0_34 ?a)
                 (not (blocked seg_W1_162b_0_45 ?a))
                 (not_blocked seg_W1_162b_0_45 ?a)

                )
)

(:action move_seg_W1_163a_0_34_seg_W1_162c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_163a_0_34)
                 (not_occupied seg_W1_162c_0_34)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_163a_0_34))
                 (not_occupied seg_W1_163a_0_34)
                 (not (at-segment ?a seg_W1_163a_0_34))

                 (occupied seg_W1_162c_0_34)
                 (not (not_occupied seg_W1_162c_0_34))
                 (blocked seg_W1_162c_0_34 ?a)
                 (not (not_blocked seg_W1_162c_0_34 ?a))
                 (at-segment ?a seg_W1_162c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_163b_0_45 ?a))
                 (not_blocked seg_W1_163b_0_45 ?a)
                 (not (blocked seg_W1_163c_0_34 ?a))
                 (not_blocked seg_W1_163c_0_34 ?a)

                )
)

(:action move_seg_W1_162c_0_34_seg_W1_162a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_162c_0_34)
                 (not_occupied seg_W1_162a_0_34)
                 (not_blocked seg_W1_162a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_162a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_162a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_162b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_162c_0_34))
                 (not_occupied seg_W1_162c_0_34)
                 (not (at-segment ?a seg_W1_162c_0_34))

                 (occupied seg_W1_162a_0_34)
                 (not (not_occupied seg_W1_162a_0_34))
                 (blocked seg_W1_162a_0_34 ?a)
                 (not (not_blocked seg_W1_162a_0_34 ?a))
                 (at-segment ?a seg_W1_162a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_163a_0_34 ?a))
                 (not_blocked seg_W1_163a_0_34 ?a)

                 (blocked seg_W1_162b_0_45 ?a)
                 (not (not_blocked seg_W1_162b_0_45 ?a))
                )
)

(:action move_seg_W1_161a_0_34_seg_W1_161c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_161a_0_34)
                 (not_occupied seg_W1_161c_0_34)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_161c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_161c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_161b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_161a_0_34))
                 (not_occupied seg_W1_161a_0_34)
                 (not (at-segment ?a seg_W1_161a_0_34))

                 (occupied seg_W1_161c_0_34)
                 (not (not_occupied seg_W1_161c_0_34))
                 (blocked seg_W1_161c_0_34 ?a)
                 (not (not_blocked seg_W1_161c_0_34 ?a))
                 (at-segment ?a seg_W1_161c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C3c_0_48 ?a))
                 (not_blocked seg_W1_C3c_0_48 ?a)

                 (blocked seg_W1_161b_0_45 ?a)
                 (not (not_blocked seg_W1_161b_0_45 ?a))
                )
)

(:action move_seg_W1_162a_0_34_seg_W1_162b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_162a_0_34)
                 (not_occupied seg_W1_162b_0_45)
                 (not_blocked seg_W1_162b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_162b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_162b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_162c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_162a_0_34))
                 (not_occupied seg_W1_162a_0_34)
                 (not (at-segment ?a seg_W1_162a_0_34))

                 (occupied seg_W1_162b_0_45)
                 (not (not_occupied seg_W1_162b_0_45))
                 (blocked seg_W1_162b_0_45 ?a)
                 (not (not_blocked seg_W1_162b_0_45 ?a))
                 (at-segment ?a seg_W1_162b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_161c_0_34 ?a))
                 (not_blocked seg_W1_161c_0_34 ?a)

                 (blocked seg_W1_162c_0_34 ?a)
                 (not (not_blocked seg_W1_162c_0_34 ?a))
                )
)

(:action move_seg_W1_162b_0_45_seg_p162_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_162b_0_45)
                 (not_occupied seg_p162_0_75)
                 (not_blocked seg_p162_0_75 airplane_CFBEG)
                 (not_blocked seg_p162_0_75 airplane_DAEWH)
                 (not_blocked seg_p162_0_75 airplane_DAEW3)
                 (not_blocked seg_p162_0_75 airplane_DAEW7)
                 (not_blocked seg_p162_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_162b_0_45))
                 (not_occupied seg_W1_162b_0_45)
                 (not (at-segment ?a seg_W1_162b_0_45))

                 (occupied seg_p162_0_75)
                 (not (not_occupied seg_p162_0_75))
                 (blocked seg_p162_0_75 ?a)
                 (not (not_blocked seg_p162_0_75 ?a))
                 (at-segment ?a seg_p162_0_75)

                 (not (blocked seg_W1_162a_0_34 ?a))
                 (not_blocked seg_W1_162a_0_34 ?a)
                 (not (blocked seg_W1_162c_0_34 ?a))
                 (not_blocked seg_W1_162c_0_34 ?a)

                )
)

(:action move_seg_p163_0_75_seg_W1_163b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p163_0_75)
                 (not_occupied seg_W1_163b_0_45)
                 (not_blocked seg_W1_163b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_163b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p163_0_75))
                 (not_occupied seg_p163_0_75)
                 (not (at-segment ?a seg_p163_0_75))

                 (occupied seg_W1_163b_0_45)
                 (not (not_occupied seg_W1_163b_0_45))
                 (blocked seg_W1_163b_0_45 ?a)
                 (not (not_blocked seg_W1_163b_0_45 ?a))
                 (at-segment ?a seg_W1_163b_0_45)


                )
)

(:action move_seg_W1_163b_0_45_seg_W1_163c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_163b_0_45)
                 (not_occupied seg_W1_163c_0_34)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_163a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_163b_0_45))
                 (not_occupied seg_W1_163b_0_45)
                 (not (at-segment ?a seg_W1_163b_0_45))

                 (occupied seg_W1_163c_0_34)
                 (not (not_occupied seg_W1_163c_0_34))
                 (blocked seg_W1_163c_0_34 ?a)
                 (not (not_blocked seg_W1_163c_0_34 ?a))
                 (at-segment ?a seg_W1_163c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p163_0_75 ?a))
                 (not_blocked seg_p163_0_75 ?a)

                 (blocked seg_W1_163a_0_34 ?a)
                 (not (not_blocked seg_W1_163a_0_34 ?a))
                )
)

(:action move_seg_W1_163c_0_34_seg_W1_164a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_163c_0_34)
                 (not_occupied seg_W1_164a_0_34)
                 (not_blocked seg_W1_164a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_164a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_163c_0_34))
                 (not_occupied seg_W1_163c_0_34)
                 (not (at-segment ?a seg_W1_163c_0_34))

                 (occupied seg_W1_164a_0_34)
                 (not (not_occupied seg_W1_164a_0_34))
                 (blocked seg_W1_164a_0_34 ?a)
                 (not (not_blocked seg_W1_164a_0_34 ?a))
                 (at-segment ?a seg_W1_164a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_163a_0_34 ?a))
                 (not_blocked seg_W1_163a_0_34 ?a)
                 (not (blocked seg_W1_163b_0_45 ?a))
                 (not_blocked seg_W1_163b_0_45 ?a)

                )
)

(:action move_seg_W1_164a_0_34_seg_W1_163c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_164a_0_34)
                 (not_occupied seg_W1_163c_0_34)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_164a_0_34))
                 (not_occupied seg_W1_164a_0_34)
                 (not (at-segment ?a seg_W1_164a_0_34))

                 (occupied seg_W1_163c_0_34)
                 (not (not_occupied seg_W1_163c_0_34))
                 (blocked seg_W1_163c_0_34 ?a)
                 (not (not_blocked seg_W1_163c_0_34 ?a))
                 (at-segment ?a seg_W1_163c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_164b_0_45 ?a))
                 (not_blocked seg_W1_164b_0_45 ?a)
                 (not (blocked seg_W1_164c_0_34 ?a))
                 (not_blocked seg_W1_164c_0_34 ?a)

                )
)

(:action move_seg_W1_163c_0_34_seg_W1_163a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_163c_0_34)
                 (not_occupied seg_W1_163a_0_34)
                 (not_blocked seg_W1_163a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_163a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_163a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_163b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_163c_0_34))
                 (not_occupied seg_W1_163c_0_34)
                 (not (at-segment ?a seg_W1_163c_0_34))

                 (occupied seg_W1_163a_0_34)
                 (not (not_occupied seg_W1_163a_0_34))
                 (blocked seg_W1_163a_0_34 ?a)
                 (not (not_blocked seg_W1_163a_0_34 ?a))
                 (at-segment ?a seg_W1_163a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_164a_0_34 ?a))
                 (not_blocked seg_W1_164a_0_34 ?a)

                 (blocked seg_W1_163b_0_45 ?a)
                 (not (not_blocked seg_W1_163b_0_45 ?a))
                )
)

(:action move_seg_W1_162a_0_34_seg_W1_162c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_162a_0_34)
                 (not_occupied seg_W1_162c_0_34)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_162c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_162c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_162b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_162a_0_34))
                 (not_occupied seg_W1_162a_0_34)
                 (not (at-segment ?a seg_W1_162a_0_34))

                 (occupied seg_W1_162c_0_34)
                 (not (not_occupied seg_W1_162c_0_34))
                 (blocked seg_W1_162c_0_34 ?a)
                 (not (not_blocked seg_W1_162c_0_34 ?a))
                 (at-segment ?a seg_W1_162c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_161c_0_34 ?a))
                 (not_blocked seg_W1_161c_0_34 ?a)

                 (blocked seg_W1_162b_0_45 ?a)
                 (not (not_blocked seg_W1_162b_0_45 ?a))
                )
)

(:action move_seg_W1_163a_0_34_seg_W1_163b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_163a_0_34)
                 (not_occupied seg_W1_163b_0_45)
                 (not_blocked seg_W1_163b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_163b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_163b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_163c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_163a_0_34))
                 (not_occupied seg_W1_163a_0_34)
                 (not (at-segment ?a seg_W1_163a_0_34))

                 (occupied seg_W1_163b_0_45)
                 (not (not_occupied seg_W1_163b_0_45))
                 (blocked seg_W1_163b_0_45 ?a)
                 (not (not_blocked seg_W1_163b_0_45 ?a))
                 (at-segment ?a seg_W1_163b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_162c_0_34 ?a))
                 (not_blocked seg_W1_162c_0_34 ?a)

                 (blocked seg_W1_163c_0_34 ?a)
                 (not (not_blocked seg_W1_163c_0_34 ?a))
                )
)

(:action move_seg_W1_163b_0_45_seg_p163_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_163b_0_45)
                 (not_occupied seg_p163_0_75)
                 (not_blocked seg_p163_0_75 airplane_CFBEG)
                 (not_blocked seg_p163_0_75 airplane_DAEWH)
                 (not_blocked seg_p163_0_75 airplane_DAEW3)
                 (not_blocked seg_p163_0_75 airplane_DAEW7)
                 (not_blocked seg_p163_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_163b_0_45))
                 (not_occupied seg_W1_163b_0_45)
                 (not (at-segment ?a seg_W1_163b_0_45))

                 (occupied seg_p163_0_75)
                 (not (not_occupied seg_p163_0_75))
                 (blocked seg_p163_0_75 ?a)
                 (not (not_blocked seg_p163_0_75 ?a))
                 (at-segment ?a seg_p163_0_75)

                 (not (blocked seg_W1_163a_0_34 ?a))
                 (not_blocked seg_W1_163a_0_34 ?a)
                 (not (blocked seg_W1_163c_0_34 ?a))
                 (not_blocked seg_W1_163c_0_34 ?a)

                )
)

(:action move_seg_p164_0_75_seg_W1_164b_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p164_0_75)
                 (not_occupied seg_W1_164b_0_45)
                 (not_blocked seg_W1_164b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_164b_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p164_0_75))
                 (not_occupied seg_p164_0_75)
                 (not (at-segment ?a seg_p164_0_75))

                 (occupied seg_W1_164b_0_45)
                 (not (not_occupied seg_W1_164b_0_45))
                 (blocked seg_W1_164b_0_45 ?a)
                 (not (not_blocked seg_W1_164b_0_45 ?a))
                 (at-segment ?a seg_W1_164b_0_45)


                )
)

(:action move_seg_W1_164b_0_45_seg_W1_164c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_164b_0_45)
                 (not_occupied seg_W1_164c_0_34)
                 (not_blocked seg_W1_164c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_164c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_164a_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_164b_0_45))
                 (not_occupied seg_W1_164b_0_45)
                 (not (at-segment ?a seg_W1_164b_0_45))

                 (occupied seg_W1_164c_0_34)
                 (not (not_occupied seg_W1_164c_0_34))
                 (blocked seg_W1_164c_0_34 ?a)
                 (not (not_blocked seg_W1_164c_0_34 ?a))
                 (at-segment ?a seg_W1_164c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p164_0_75 ?a))
                 (not_blocked seg_p164_0_75 ?a)

                 (blocked seg_W1_164a_0_34 ?a)
                 (not (not_blocked seg_W1_164a_0_34 ?a))
                )
)

(:action move_seg_W1_164c_0_34_seg_W1_C4a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_164c_0_34)
                 (not_occupied seg_W1_C4a_0_34)
                 (not_blocked seg_W1_C4a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_C4a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_C4a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_C4a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_C4a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_164c_0_34))
                 (not_occupied seg_W1_164c_0_34)
                 (not (at-segment ?a seg_W1_164c_0_34))

                 (occupied seg_W1_C4a_0_34)
                 (not (not_occupied seg_W1_C4a_0_34))
                 (blocked seg_W1_C4a_0_34 ?a)
                 (not (not_blocked seg_W1_C4a_0_34 ?a))
                 (at-segment ?a seg_W1_C4a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_164a_0_34 ?a))
                 (not_blocked seg_W1_164a_0_34 ?a)
                 (not (blocked seg_W1_164b_0_45 ?a))
                 (not_blocked seg_W1_164b_0_45 ?a)

                )
)

(:action move_seg_W1_C4a_0_34_seg_W1_164c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_C4a_0_34)
                 (not_occupied seg_W1_164c_0_34)
                 (not_blocked seg_W1_164c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_164c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_164c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_C4a_0_34))
                 (not_occupied seg_W1_C4a_0_34)
                 (not (at-segment ?a seg_W1_C4a_0_34))

                 (occupied seg_W1_164c_0_34)
                 (not (not_occupied seg_W1_164c_0_34))
                 (blocked seg_W1_164c_0_34 ?a)
                 (not (not_blocked seg_W1_164c_0_34 ?a))
                 (at-segment ?a seg_W1_164c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_W1_C4b_0_60 ?a))
                 (not_blocked seg_W1_C4b_0_60 ?a)

                )
)

(:action move_seg_W1_164c_0_34_seg_W1_164a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_164c_0_34)
                 (not_occupied seg_W1_164a_0_34)
                 (not_blocked seg_W1_164a_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_164a_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_164a_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_164b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_164c_0_34))
                 (not_occupied seg_W1_164c_0_34)
                 (not (at-segment ?a seg_W1_164c_0_34))

                 (occupied seg_W1_164a_0_34)
                 (not (not_occupied seg_W1_164a_0_34))
                 (blocked seg_W1_164a_0_34 ?a)
                 (not (not_blocked seg_W1_164a_0_34 ?a))
                 (at-segment ?a seg_W1_164a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_C4a_0_34 ?a))
                 (not_blocked seg_W1_C4a_0_34 ?a)

                 (blocked seg_W1_164b_0_45 ?a)
                 (not (not_blocked seg_W1_164b_0_45 ?a))
                )
)

(:action move_seg_W1_163a_0_34_seg_W1_163c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_163a_0_34)
                 (not_occupied seg_W1_163c_0_34)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBEG)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEWH)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW3)
                 (not_blocked seg_W1_163c_0_34 airplane_DAEW7)
                 (not_blocked seg_W1_163c_0_34 airplane_CFBE1)

                 (not_occupied seg_W1_163b_0_45)
              )

 :effect        (and
                 (not (occupied seg_W1_163a_0_34))
                 (not_occupied seg_W1_163a_0_34)
                 (not (at-segment ?a seg_W1_163a_0_34))

                 (occupied seg_W1_163c_0_34)
                 (not (not_occupied seg_W1_163c_0_34))
                 (blocked seg_W1_163c_0_34 ?a)
                 (not (not_blocked seg_W1_163c_0_34 ?a))
                 (at-segment ?a seg_W1_163c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_162c_0_34 ?a))
                 (not_blocked seg_W1_162c_0_34 ?a)

                 (blocked seg_W1_163b_0_45 ?a)
                 (not (not_blocked seg_W1_163b_0_45 ?a))
                )
)

(:action move_seg_W1_164a_0_34_seg_W1_164b_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_164a_0_34)
                 (not_occupied seg_W1_164b_0_45)
                 (not_blocked seg_W1_164b_0_45 airplane_CFBEG)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEWH)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEW3)
                 (not_blocked seg_W1_164b_0_45 airplane_DAEW7)
                 (not_blocked seg_W1_164b_0_45 airplane_CFBE1)

                 (not_occupied seg_W1_164c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_164a_0_34))
                 (not_occupied seg_W1_164a_0_34)
                 (not (at-segment ?a seg_W1_164a_0_34))

                 (occupied seg_W1_164b_0_45)
                 (not (not_occupied seg_W1_164b_0_45))
                 (blocked seg_W1_164b_0_45 ?a)
                 (not (not_blocked seg_W1_164b_0_45 ?a))
                 (at-segment ?a seg_W1_164b_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_W1_163c_0_34 ?a))
                 (not_blocked seg_W1_163c_0_34 ?a)

                 (blocked seg_W1_164c_0_34 ?a)
                 (not (not_blocked seg_W1_164c_0_34 ?a))
                )
)

(:action move_seg_W1_164b_0_45_seg_p164_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_W1_164b_0_45)
                 (not_occupied seg_p164_0_75)
                 (not_blocked seg_p164_0_75 airplane_CFBEG)
                 (not_blocked seg_p164_0_75 airplane_DAEWH)
                 (not_blocked seg_p164_0_75 airplane_DAEW3)
                 (not_blocked seg_p164_0_75 airplane_DAEW7)
                 (not_blocked seg_p164_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_W1_164b_0_45))
                 (not_occupied seg_W1_164b_0_45)
                 (not (at-segment ?a seg_W1_164b_0_45))

                 (occupied seg_p164_0_75)
                 (not (not_occupied seg_p164_0_75))
                 (blocked seg_p164_0_75 ?a)
                 (not (not_blocked seg_p164_0_75 ?a))
                 (at-segment ?a seg_p164_0_75)

                 (not (blocked seg_W1_164a_0_34 ?a))
                 (not_blocked seg_W1_164a_0_34 ?a)
                 (not (blocked seg_W1_164c_0_34 ?a))
                 (not_blocked seg_W1_164c_0_34 ?a)

                )
)

(:action move_seg_p101_0_76_seg_O1_C1a_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p101_0_76)
                 (not_occupied seg_O1_C1a_0_60)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p101_0_76))
                 (not_occupied seg_p101_0_76)
                 (not (at-segment ?a seg_p101_0_76))

                 (occupied seg_O1_C1a_0_60)
                 (not (not_occupied seg_O1_C1a_0_60))
                 (blocked seg_O1_C1a_0_60 ?a)
                 (not (not_blocked seg_O1_C1a_0_60 ?a))
                 (at-segment ?a seg_O1_C1a_0_60)


                )
)

(:action move_seg_O1_C1a_0_60_seg_O1_C1b_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C1a_0_60)
                 (not_occupied seg_O1_C1b_0_34)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C1c_0_80)
              )

 :effect        (and
                 (not (occupied seg_O1_C1a_0_60))
                 (not_occupied seg_O1_C1a_0_60)
                 (not (at-segment ?a seg_O1_C1a_0_60))

                 (occupied seg_O1_C1b_0_34)
                 (not (not_occupied seg_O1_C1b_0_34))
                 (blocked seg_O1_C1b_0_34 ?a)
                 (not (not_blocked seg_O1_C1b_0_34 ?a))
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p101_0_76 ?a))
                 (not_blocked seg_p101_0_76 ?a)

                 (blocked seg_O1_C1c_0_80 ?a)
                 (not (not_blocked seg_O1_C1c_0_80 ?a))
                )
)

(:action move_seg_O1_C1b_0_34_seg_O1_102a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not_occupied seg_O1_102a_0_34)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C1b_0_34))
                 (not_occupied seg_O1_C1b_0_34)
                 (not (at-segment ?a seg_O1_C1b_0_34))

                 (occupied seg_O1_102a_0_34)
                 (not (not_occupied seg_O1_102a_0_34))
                 (blocked seg_O1_102a_0_34 ?a)
                 (not (not_blocked seg_O1_102a_0_34 ?a))
                 (at-segment ?a seg_O1_102a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C1a_0_60 ?a))
                 (not_blocked seg_O1_C1a_0_60 ?a)
                 (not (blocked seg_O1_C1c_0_80 ?a))
                 (not_blocked seg_O1_C1c_0_80 ?a)

                )
)

(:action move_seg_O1_102a_0_34_seg_O1_C1b_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_102a_0_34)
                 (not_occupied seg_O1_C1b_0_34)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_102a_0_34))
                 (not_occupied seg_O1_102a_0_34)
                 (not (at-segment ?a seg_O1_102a_0_34))

                 (occupied seg_O1_C1b_0_34)
                 (not (not_occupied seg_O1_C1b_0_34))
                 (blocked seg_O1_C1b_0_34 ?a)
                 (not (not_blocked seg_O1_C1b_0_34 ?a))
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_102b_0_60 ?a))
                 (not_blocked seg_O1_102b_0_60 ?a)
                 (not (blocked seg_O1_102c_0_34 ?a))
                 (not_blocked seg_O1_102c_0_34 ?a)

                )
)

(:action move_seg_O1_C1b_0_34_seg_O1_C1c_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not_occupied seg_O1_C1c_0_80)
                 (not_blocked seg_O1_C1c_0_80 airplane_CFBEG)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEWH)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEW3)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEW7)
                 (not_blocked seg_O1_C1c_0_80 airplane_CFBE1)

                 (not_occupied seg_O1_C1a_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C1b_0_34))
                 (not_occupied seg_O1_C1b_0_34)
                 (not (at-segment ?a seg_O1_C1b_0_34))

                 (occupied seg_O1_C1c_0_80)
                 (not (not_occupied seg_O1_C1c_0_80))
                 (blocked seg_O1_C1c_0_80 ?a)
                 (not (not_blocked seg_O1_C1c_0_80 ?a))
                 (at-segment ?a seg_O1_C1c_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_102a_0_34 ?a))
                 (not_blocked seg_O1_102a_0_34 ?a)

                 (blocked seg_O1_C1a_0_60 ?a)
                 (not (not_blocked seg_O1_C1a_0_60 ?a))
                )
)

(:action move_seg_O1_C1c_0_80_seg_C1_n2b_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C1c_0_80)
                 (not_occupied seg_C1_n2b_0_80)
                 (not_blocked seg_C1_n2b_0_80 airplane_CFBEG)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEWH)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEW3)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEW7)
                 (not_blocked seg_C1_n2b_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C1c_0_80))
                 (not_occupied seg_O1_C1c_0_80)
                 (not (at-segment ?a seg_O1_C1c_0_80))

                 (occupied seg_C1_n2b_0_80)
                 (not (not_occupied seg_C1_n2b_0_80))
                 (blocked seg_C1_n2b_0_80 ?a)
                 (not (not_blocked seg_C1_n2b_0_80 ?a))
                 (at-segment ?a seg_C1_n2b_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C1a_0_60 ?a))
                 (not_blocked seg_O1_C1a_0_60 ?a)
                 (not (blocked seg_O1_C1b_0_34 ?a))
                 (not_blocked seg_O1_C1b_0_34 ?a)

                )
)

(:action move_seg_C1_n2b_0_80_seg_C1_n2c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C1_n2b_0_80)
                 (not_occupied seg_C1_n2c_0_60)
                 (not_blocked seg_C1_n2c_0_60 airplane_CFBEG)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEWH)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEW3)
                 (not_blocked seg_C1_n2c_0_60 airplane_DAEW7)
                 (not_blocked seg_C1_n2c_0_60 airplane_CFBE1)

                 (not_occupied seg_C1_n2a_0_60)
              )

 :effect        (and
                 (not (occupied seg_C1_n2b_0_80))
                 (not_occupied seg_C1_n2b_0_80)
                 (not (at-segment ?a seg_C1_n2b_0_80))

                 (occupied seg_C1_n2c_0_60)
                 (not (not_occupied seg_C1_n2c_0_60))
                 (blocked seg_C1_n2c_0_60 ?a)
                 (not (not_blocked seg_C1_n2c_0_60 ?a))
                 (at-segment ?a seg_C1_n2c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C1c_0_80 ?a))
                 (not_blocked seg_O1_C1c_0_80 ?a)

                 (blocked seg_C1_n2a_0_60 ?a)
                 (not (not_blocked seg_C1_n2a_0_60 ?a))
                )
)

(:action move_seg_W1_C1b_0_60_seg_W1_C1a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_W1_C1b_0_60)
                 (not_occupied seg_W1_C1a_0_60)
                 (not_blocked seg_W1_C1a_0_60 airplane_CFBEG)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEWH)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEW3)
                 (not_blocked seg_W1_C1a_0_60 airplane_DAEW7)
                 (not_blocked seg_W1_C1a_0_60 airplane_CFBE1)

                 (not_occupied seg_W1_C1c_0_34)
              )

 :effect        (and
                 (not (occupied seg_W1_C1b_0_60))
                 (not_occupied seg_W1_C1b_0_60)
                 (not (at-segment ?a seg_W1_C1b_0_60))

                 (occupied seg_W1_C1a_0_60)
                 (not (not_occupied seg_W1_C1a_0_60))
                 (blocked seg_W1_C1a_0_60 ?a)
                 (not (not_blocked seg_W1_C1a_0_60 ?a))
                 (at-segment ?a seg_W1_C1a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C1_n2c_0_60 ?a))
                 (not_blocked seg_C1_n2c_0_60 ?a)

                 (blocked seg_W1_C1c_0_34 ?a)
                 (not (not_blocked seg_W1_C1c_0_34 ?a))
                )
)

(:action move_seg_C1_n2a_0_60_seg_C1_n2b_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_C1_n2a_0_60)
                 (not_occupied seg_C1_n2b_0_80)
                 (not_blocked seg_C1_n2b_0_80 airplane_CFBEG)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEWH)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEW3)
                 (not_blocked seg_C1_n2b_0_80 airplane_DAEW7)
                 (not_blocked seg_C1_n2b_0_80 airplane_CFBE1)

                 (not_occupied seg_C1_n2c_0_60)
              )

 :effect        (and
                 (not (occupied seg_C1_n2a_0_60))
                 (not_occupied seg_C1_n2a_0_60)
                 (not (at-segment ?a seg_C1_n2a_0_60))

                 (occupied seg_C1_n2b_0_80)
                 (not (not_occupied seg_C1_n2b_0_80))
                 (blocked seg_C1_n2b_0_80 ?a)
                 (not (not_blocked seg_C1_n2b_0_80 ?a))
                 (at-segment ?a seg_C1_n2b_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_N2_0_108 ?a))
                 (not_blocked seg_N2_0_108 ?a)

                 (blocked seg_C1_n2c_0_60 ?a)
                 (not (not_blocked seg_C1_n2c_0_60 ?a))
                )
)

(:action move_seg_C1_n2b_0_80_seg_O1_C1c_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C1_n2b_0_80)
                 (not_occupied seg_O1_C1c_0_80)
                 (not_blocked seg_O1_C1c_0_80 airplane_CFBEG)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEWH)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEW3)
                 (not_blocked seg_O1_C1c_0_80 airplane_DAEW7)
                 (not_blocked seg_O1_C1c_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_C1_n2b_0_80))
                 (not_occupied seg_C1_n2b_0_80)
                 (not (at-segment ?a seg_C1_n2b_0_80))

                 (occupied seg_O1_C1c_0_80)
                 (not (not_occupied seg_O1_C1c_0_80))
                 (blocked seg_O1_C1c_0_80 ?a)
                 (not (not_blocked seg_O1_C1c_0_80 ?a))
                 (at-segment ?a seg_O1_C1c_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_C1_n2a_0_60 ?a))
                 (not_blocked seg_C1_n2a_0_60 ?a)
                 (not (blocked seg_C1_n2c_0_60 ?a))
                 (not_blocked seg_C1_n2c_0_60 ?a)

                )
)

(:action move_seg_O1_C1c_0_80_seg_O1_C1a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C1c_0_80)
                 (not_occupied seg_O1_C1a_0_60)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C1b_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_C1c_0_80))
                 (not_occupied seg_O1_C1c_0_80)
                 (not (at-segment ?a seg_O1_C1c_0_80))

                 (occupied seg_O1_C1a_0_60)
                 (not (not_occupied seg_O1_C1a_0_60))
                 (blocked seg_O1_C1a_0_60 ?a)
                 (not (not_blocked seg_O1_C1a_0_60 ?a))
                 (at-segment ?a seg_O1_C1a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C1_n2b_0_80 ?a))
                 (not_blocked seg_C1_n2b_0_80 ?a)

                 (blocked seg_O1_C1b_0_34 ?a)
                 (not (not_blocked seg_O1_C1b_0_34 ?a))
                )
)

(:action move_seg_O1_C1a_0_60_seg_p101_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C1a_0_60)
                 (not_occupied seg_p101_0_76)
                 (not_blocked seg_p101_0_76 airplane_CFBEG)
                 (not_blocked seg_p101_0_76 airplane_DAEWH)
                 (not_blocked seg_p101_0_76 airplane_DAEW3)
                 (not_blocked seg_p101_0_76 airplane_DAEW7)
                 (not_blocked seg_p101_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C1a_0_60))
                 (not_occupied seg_O1_C1a_0_60)
                 (not (at-segment ?a seg_O1_C1a_0_60))

                 (occupied seg_p101_0_76)
                 (not (not_occupied seg_p101_0_76))
                 (blocked seg_p101_0_76 ?a)
                 (not (not_blocked seg_p101_0_76 ?a))
                 (at-segment ?a seg_p101_0_76)

                 (not (blocked seg_O1_C1b_0_34 ?a))
                 (not_blocked seg_O1_C1b_0_34 ?a)
                 (not (blocked seg_O1_C1c_0_80 ?a))
                 (not_blocked seg_O1_C1c_0_80 ?a)

                )
)

(:action move_seg_p102_0_76_seg_O1_102b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p102_0_76)
                 (not_occupied seg_O1_102b_0_60)
                 (not_blocked seg_O1_102b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_102b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p102_0_76))
                 (not_occupied seg_p102_0_76)
                 (not (at-segment ?a seg_p102_0_76))

                 (occupied seg_O1_102b_0_60)
                 (not (not_occupied seg_O1_102b_0_60))
                 (blocked seg_O1_102b_0_60 ?a)
                 (not (not_blocked seg_O1_102b_0_60 ?a))
                 (at-segment ?a seg_O1_102b_0_60)


                )
)

(:action move_seg_O1_102b_0_60_seg_O1_102c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_102b_0_60)
                 (not_occupied seg_O1_102c_0_34)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_102a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_102b_0_60))
                 (not_occupied seg_O1_102b_0_60)
                 (not (at-segment ?a seg_O1_102b_0_60))

                 (occupied seg_O1_102c_0_34)
                 (not (not_occupied seg_O1_102c_0_34))
                 (blocked seg_O1_102c_0_34 ?a)
                 (not (not_blocked seg_O1_102c_0_34 ?a))
                 (at-segment ?a seg_O1_102c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p102_0_76 ?a))
                 (not_blocked seg_p102_0_76 ?a)

                 (blocked seg_O1_102a_0_34 ?a)
                 (not (not_blocked seg_O1_102a_0_34 ?a))
                )
)

(:action move_seg_O1_102c_0_34_seg_O1_103a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_102c_0_34)
                 (not_occupied seg_O1_103a_0_34)
                 (not_blocked seg_O1_103a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_103a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_102c_0_34))
                 (not_occupied seg_O1_102c_0_34)
                 (not (at-segment ?a seg_O1_102c_0_34))

                 (occupied seg_O1_103a_0_34)
                 (not (not_occupied seg_O1_103a_0_34))
                 (blocked seg_O1_103a_0_34 ?a)
                 (not (not_blocked seg_O1_103a_0_34 ?a))
                 (at-segment ?a seg_O1_103a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_102a_0_34 ?a))
                 (not_blocked seg_O1_102a_0_34 ?a)
                 (not (blocked seg_O1_102b_0_60 ?a))
                 (not_blocked seg_O1_102b_0_60 ?a)

                )
)

(:action move_seg_O1_103a_0_34_seg_O1_102c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_103a_0_34)
                 (not_occupied seg_O1_102c_0_34)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_103a_0_34))
                 (not_occupied seg_O1_103a_0_34)
                 (not (at-segment ?a seg_O1_103a_0_34))

                 (occupied seg_O1_102c_0_34)
                 (not (not_occupied seg_O1_102c_0_34))
                 (blocked seg_O1_102c_0_34 ?a)
                 (not (not_blocked seg_O1_102c_0_34 ?a))
                 (at-segment ?a seg_O1_102c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_103b_0_60 ?a))
                 (not_blocked seg_O1_103b_0_60 ?a)
                 (not (blocked seg_O1_103c_0_34 ?a))
                 (not_blocked seg_O1_103c_0_34 ?a)

                )
)

(:action move_seg_O1_102c_0_34_seg_O1_102a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_102c_0_34)
                 (not_occupied seg_O1_102a_0_34)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_102b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_102c_0_34))
                 (not_occupied seg_O1_102c_0_34)
                 (not (at-segment ?a seg_O1_102c_0_34))

                 (occupied seg_O1_102a_0_34)
                 (not (not_occupied seg_O1_102a_0_34))
                 (blocked seg_O1_102a_0_34 ?a)
                 (not (not_blocked seg_O1_102a_0_34 ?a))
                 (at-segment ?a seg_O1_102a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_103a_0_34 ?a))
                 (not_blocked seg_O1_103a_0_34 ?a)

                 (blocked seg_O1_102b_0_60 ?a)
                 (not (not_blocked seg_O1_102b_0_60 ?a))
                )
)

(:action move_seg_O1_C1c_0_80_seg_O1_C1b_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C1c_0_80)
                 (not_occupied seg_O1_C1b_0_34)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C1a_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C1c_0_80))
                 (not_occupied seg_O1_C1c_0_80)
                 (not (at-segment ?a seg_O1_C1c_0_80))

                 (occupied seg_O1_C1b_0_34)
                 (not (not_occupied seg_O1_C1b_0_34))
                 (blocked seg_O1_C1b_0_34 ?a)
                 (not (not_blocked seg_O1_C1b_0_34 ?a))
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C1_n2b_0_80 ?a))
                 (not_blocked seg_C1_n2b_0_80 ?a)

                 (blocked seg_O1_C1a_0_60 ?a)
                 (not (not_blocked seg_O1_C1a_0_60 ?a))
                )
)

(:action move_seg_O1_102a_0_34_seg_O1_102b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_102a_0_34)
                 (not_occupied seg_O1_102b_0_60)
                 (not_blocked seg_O1_102b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_102b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_102b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_102c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_102a_0_34))
                 (not_occupied seg_O1_102a_0_34)
                 (not (at-segment ?a seg_O1_102a_0_34))

                 (occupied seg_O1_102b_0_60)
                 (not (not_occupied seg_O1_102b_0_60))
                 (blocked seg_O1_102b_0_60 ?a)
                 (not (not_blocked seg_O1_102b_0_60 ?a))
                 (at-segment ?a seg_O1_102b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C1b_0_34 ?a))
                 (not_blocked seg_O1_C1b_0_34 ?a)

                 (blocked seg_O1_102c_0_34 ?a)
                 (not (not_blocked seg_O1_102c_0_34 ?a))
                )
)

(:action move_seg_O1_102b_0_60_seg_p102_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_102b_0_60)
                 (not_occupied seg_p102_0_76)
                 (not_blocked seg_p102_0_76 airplane_CFBEG)
                 (not_blocked seg_p102_0_76 airplane_DAEWH)
                 (not_blocked seg_p102_0_76 airplane_DAEW3)
                 (not_blocked seg_p102_0_76 airplane_DAEW7)
                 (not_blocked seg_p102_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_102b_0_60))
                 (not_occupied seg_O1_102b_0_60)
                 (not (at-segment ?a seg_O1_102b_0_60))

                 (occupied seg_p102_0_76)
                 (not (not_occupied seg_p102_0_76))
                 (blocked seg_p102_0_76 ?a)
                 (not (not_blocked seg_p102_0_76 ?a))
                 (at-segment ?a seg_p102_0_76)

                 (not (blocked seg_O1_102a_0_34 ?a))
                 (not_blocked seg_O1_102a_0_34 ?a)
                 (not (blocked seg_O1_102c_0_34 ?a))
                 (not_blocked seg_O1_102c_0_34 ?a)

                )
)

(:action move_seg_p103_0_76_seg_O1_103b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p103_0_76)
                 (not_occupied seg_O1_103b_0_60)
                 (not_blocked seg_O1_103b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_103b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p103_0_76))
                 (not_occupied seg_p103_0_76)
                 (not (at-segment ?a seg_p103_0_76))

                 (occupied seg_O1_103b_0_60)
                 (not (not_occupied seg_O1_103b_0_60))
                 (blocked seg_O1_103b_0_60 ?a)
                 (not (not_blocked seg_O1_103b_0_60 ?a))
                 (at-segment ?a seg_O1_103b_0_60)


                )
)

(:action move_seg_O1_103b_0_60_seg_O1_103c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_103b_0_60)
                 (not_occupied seg_O1_103c_0_34)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_103a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_103b_0_60))
                 (not_occupied seg_O1_103b_0_60)
                 (not (at-segment ?a seg_O1_103b_0_60))

                 (occupied seg_O1_103c_0_34)
                 (not (not_occupied seg_O1_103c_0_34))
                 (blocked seg_O1_103c_0_34 ?a)
                 (not (not_blocked seg_O1_103c_0_34 ?a))
                 (at-segment ?a seg_O1_103c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p103_0_76 ?a))
                 (not_blocked seg_p103_0_76 ?a)

                 (blocked seg_O1_103a_0_34 ?a)
                 (not (not_blocked seg_O1_103a_0_34 ?a))
                )
)

(:action move_seg_O1_103c_0_34_seg_O1_104a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_103c_0_34)
                 (not_occupied seg_O1_104a_0_34)
                 (not_blocked seg_O1_104a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_104a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_103c_0_34))
                 (not_occupied seg_O1_103c_0_34)
                 (not (at-segment ?a seg_O1_103c_0_34))

                 (occupied seg_O1_104a_0_34)
                 (not (not_occupied seg_O1_104a_0_34))
                 (blocked seg_O1_104a_0_34 ?a)
                 (not (not_blocked seg_O1_104a_0_34 ?a))
                 (at-segment ?a seg_O1_104a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_103a_0_34 ?a))
                 (not_blocked seg_O1_103a_0_34 ?a)
                 (not (blocked seg_O1_103b_0_60 ?a))
                 (not_blocked seg_O1_103b_0_60 ?a)

                )
)

(:action move_seg_O1_104a_0_34_seg_O1_103c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_104a_0_34)
                 (not_occupied seg_O1_103c_0_34)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_104a_0_34))
                 (not_occupied seg_O1_104a_0_34)
                 (not (at-segment ?a seg_O1_104a_0_34))

                 (occupied seg_O1_103c_0_34)
                 (not (not_occupied seg_O1_103c_0_34))
                 (blocked seg_O1_103c_0_34 ?a)
                 (not (not_blocked seg_O1_103c_0_34 ?a))
                 (at-segment ?a seg_O1_103c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_104b_0_60 ?a))
                 (not_blocked seg_O1_104b_0_60 ?a)
                 (not (blocked seg_O1_104c_0_60 ?a))
                 (not_blocked seg_O1_104c_0_60 ?a)

                )
)

(:action move_seg_O1_103c_0_34_seg_O1_103a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_103c_0_34)
                 (not_occupied seg_O1_103a_0_34)
                 (not_blocked seg_O1_103a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_103a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_103a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_103b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_103c_0_34))
                 (not_occupied seg_O1_103c_0_34)
                 (not (at-segment ?a seg_O1_103c_0_34))

                 (occupied seg_O1_103a_0_34)
                 (not (not_occupied seg_O1_103a_0_34))
                 (blocked seg_O1_103a_0_34 ?a)
                 (not (not_blocked seg_O1_103a_0_34 ?a))
                 (at-segment ?a seg_O1_103a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_104a_0_34 ?a))
                 (not_blocked seg_O1_104a_0_34 ?a)

                 (blocked seg_O1_103b_0_60 ?a)
                 (not (not_blocked seg_O1_103b_0_60 ?a))
                )
)

(:action move_seg_O1_102a_0_34_seg_O1_102c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_102a_0_34)
                 (not_occupied seg_O1_102c_0_34)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_102b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_102a_0_34))
                 (not_occupied seg_O1_102a_0_34)
                 (not (at-segment ?a seg_O1_102a_0_34))

                 (occupied seg_O1_102c_0_34)
                 (not (not_occupied seg_O1_102c_0_34))
                 (blocked seg_O1_102c_0_34 ?a)
                 (not (not_blocked seg_O1_102c_0_34 ?a))
                 (at-segment ?a seg_O1_102c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C1b_0_34 ?a))
                 (not_blocked seg_O1_C1b_0_34 ?a)

                 (blocked seg_O1_102b_0_60 ?a)
                 (not (not_blocked seg_O1_102b_0_60 ?a))
                )
)

(:action move_seg_O1_103a_0_34_seg_O1_103b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_103a_0_34)
                 (not_occupied seg_O1_103b_0_60)
                 (not_blocked seg_O1_103b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_103b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_103b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_103c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_103a_0_34))
                 (not_occupied seg_O1_103a_0_34)
                 (not (at-segment ?a seg_O1_103a_0_34))

                 (occupied seg_O1_103b_0_60)
                 (not (not_occupied seg_O1_103b_0_60))
                 (blocked seg_O1_103b_0_60 ?a)
                 (not (not_blocked seg_O1_103b_0_60 ?a))
                 (at-segment ?a seg_O1_103b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_102c_0_34 ?a))
                 (not_blocked seg_O1_102c_0_34 ?a)

                 (blocked seg_O1_103c_0_34 ?a)
                 (not (not_blocked seg_O1_103c_0_34 ?a))
                )
)

(:action move_seg_O1_103b_0_60_seg_p103_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_103b_0_60)
                 (not_occupied seg_p103_0_76)
                 (not_blocked seg_p103_0_76 airplane_CFBEG)
                 (not_blocked seg_p103_0_76 airplane_DAEWH)
                 (not_blocked seg_p103_0_76 airplane_DAEW3)
                 (not_blocked seg_p103_0_76 airplane_DAEW7)
                 (not_blocked seg_p103_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_103b_0_60))
                 (not_occupied seg_O1_103b_0_60)
                 (not (at-segment ?a seg_O1_103b_0_60))

                 (occupied seg_p103_0_76)
                 (not (not_occupied seg_p103_0_76))
                 (blocked seg_p103_0_76 ?a)
                 (not (not_blocked seg_p103_0_76 ?a))
                 (at-segment ?a seg_p103_0_76)

                 (not (blocked seg_O1_103a_0_34 ?a))
                 (not_blocked seg_O1_103a_0_34 ?a)
                 (not (blocked seg_O1_103c_0_34 ?a))
                 (not_blocked seg_O1_103c_0_34 ?a)

                )
)

(:action move_seg_p104_0_76_seg_O1_104b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p104_0_76)
                 (not_occupied seg_O1_104b_0_60)
                 (not_blocked seg_O1_104b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_104b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p104_0_76))
                 (not_occupied seg_p104_0_76)
                 (not (at-segment ?a seg_p104_0_76))

                 (occupied seg_O1_104b_0_60)
                 (not (not_occupied seg_O1_104b_0_60))
                 (blocked seg_O1_104b_0_60 ?a)
                 (not (not_blocked seg_O1_104b_0_60 ?a))
                 (at-segment ?a seg_O1_104b_0_60)


                )
)

(:action move_seg_O1_104b_0_60_seg_O1_104c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_104b_0_60)
                 (not_occupied seg_O1_104c_0_60)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_104a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_104b_0_60))
                 (not_occupied seg_O1_104b_0_60)
                 (not (at-segment ?a seg_O1_104b_0_60))

                 (occupied seg_O1_104c_0_60)
                 (not (not_occupied seg_O1_104c_0_60))
                 (blocked seg_O1_104c_0_60 ?a)
                 (not (not_blocked seg_O1_104c_0_60 ?a))
                 (at-segment ?a seg_O1_104c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p104_0_76 ?a))
                 (not_blocked seg_p104_0_76 ?a)

                 (blocked seg_O1_104a_0_34 ?a)
                 (not (not_blocked seg_O1_104a_0_34 ?a))
                )
)

(:action move_seg_O1_104c_0_60_seg_O1_C2a_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_104c_0_60)
                 (not_occupied seg_O1_C2a_0_60)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_104c_0_60))
                 (not_occupied seg_O1_104c_0_60)
                 (not (at-segment ?a seg_O1_104c_0_60))

                 (occupied seg_O1_C2a_0_60)
                 (not (not_occupied seg_O1_C2a_0_60))
                 (blocked seg_O1_C2a_0_60 ?a)
                 (not (not_blocked seg_O1_C2a_0_60 ?a))
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_104a_0_34 ?a))
                 (not_blocked seg_O1_104a_0_34 ?a)
                 (not (blocked seg_O1_104b_0_60 ?a))
                 (not_blocked seg_O1_104b_0_60 ?a)

                )
)

(:action move_seg_O1_C2a_0_60_seg_O1_104c_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not_occupied seg_O1_104c_0_60)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C2a_0_60))
                 (not_occupied seg_O1_C2a_0_60)
                 (not (at-segment ?a seg_O1_C2a_0_60))

                 (occupied seg_O1_104c_0_60)
                 (not (not_occupied seg_O1_104c_0_60))
                 (blocked seg_O1_104c_0_60 ?a)
                 (not (not_blocked seg_O1_104c_0_60 ?a))
                 (at-segment ?a seg_O1_104c_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C2b_0_60 ?a))
                 (not_blocked seg_O1_C2b_0_60 ?a)
                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)
                 (not (blocked seg_O1_C2d_0_60 ?a))
                 (not_blocked seg_O1_C2d_0_60 ?a)

                )
)

(:action move_seg_O1_104c_0_60_seg_O1_104a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_104c_0_60)
                 (not_occupied seg_O1_104a_0_34)
                 (not_blocked seg_O1_104a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_104a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_104a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_104b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_104c_0_60))
                 (not_occupied seg_O1_104c_0_60)
                 (not (at-segment ?a seg_O1_104c_0_60))

                 (occupied seg_O1_104a_0_34)
                 (not (not_occupied seg_O1_104a_0_34))
                 (blocked seg_O1_104a_0_34 ?a)
                 (not (not_blocked seg_O1_104a_0_34 ?a))
                 (at-segment ?a seg_O1_104a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C2a_0_60 ?a))
                 (not_blocked seg_O1_C2a_0_60 ?a)

                 (blocked seg_O1_104b_0_60 ?a)
                 (not (not_blocked seg_O1_104b_0_60 ?a))
                )
)

(:action move_seg_O1_103a_0_34_seg_O1_103c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_103a_0_34)
                 (not_occupied seg_O1_103c_0_34)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_103c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_103c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_103b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_103a_0_34))
                 (not_occupied seg_O1_103a_0_34)
                 (not (at-segment ?a seg_O1_103a_0_34))

                 (occupied seg_O1_103c_0_34)
                 (not (not_occupied seg_O1_103c_0_34))
                 (blocked seg_O1_103c_0_34 ?a)
                 (not (not_blocked seg_O1_103c_0_34 ?a))
                 (at-segment ?a seg_O1_103c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_102c_0_34 ?a))
                 (not_blocked seg_O1_102c_0_34 ?a)

                 (blocked seg_O1_103b_0_60 ?a)
                 (not (not_blocked seg_O1_103b_0_60 ?a))
                )
)

(:action move_seg_O1_104a_0_34_seg_O1_104b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_104a_0_34)
                 (not_occupied seg_O1_104b_0_60)
                 (not_blocked seg_O1_104b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_104b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_104b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_104c_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_104a_0_34))
                 (not_occupied seg_O1_104a_0_34)
                 (not (at-segment ?a seg_O1_104a_0_34))

                 (occupied seg_O1_104b_0_60)
                 (not (not_occupied seg_O1_104b_0_60))
                 (blocked seg_O1_104b_0_60 ?a)
                 (not (not_blocked seg_O1_104b_0_60 ?a))
                 (at-segment ?a seg_O1_104b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_103c_0_34 ?a))
                 (not_blocked seg_O1_103c_0_34 ?a)

                 (blocked seg_O1_104c_0_60 ?a)
                 (not (not_blocked seg_O1_104c_0_60 ?a))
                )
)

(:action move_seg_O1_104b_0_60_seg_p104_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_104b_0_60)
                 (not_occupied seg_p104_0_76)
                 (not_blocked seg_p104_0_76 airplane_CFBEG)
                 (not_blocked seg_p104_0_76 airplane_DAEWH)
                 (not_blocked seg_p104_0_76 airplane_DAEW3)
                 (not_blocked seg_p104_0_76 airplane_DAEW7)
                 (not_blocked seg_p104_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_104b_0_60))
                 (not_occupied seg_O1_104b_0_60)
                 (not (at-segment ?a seg_O1_104b_0_60))

                 (occupied seg_p104_0_76)
                 (not (not_occupied seg_p104_0_76))
                 (blocked seg_p104_0_76 ?a)
                 (not (not_blocked seg_p104_0_76 ?a))
                 (at-segment ?a seg_p104_0_76)

                 (not (blocked seg_O1_104a_0_34 ?a))
                 (not_blocked seg_O1_104a_0_34 ?a)
                 (not (blocked seg_O1_104c_0_60 ?a))
                 (not_blocked seg_O1_104c_0_60 ?a)

                )
)

(:action move_seg_p107_0_76_seg_O1_C2b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p107_0_76)
                 (not_occupied seg_O1_C2b_0_60)
                 (not_blocked seg_O1_C2b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p107_0_76))
                 (not_occupied seg_p107_0_76)
                 (not (at-segment ?a seg_p107_0_76))

                 (occupied seg_O1_C2b_0_60)
                 (not (not_occupied seg_O1_C2b_0_60))
                 (blocked seg_O1_C2b_0_60 ?a)
                 (not (not_blocked seg_O1_C2b_0_60 ?a))
                 (at-segment ?a seg_O1_C2b_0_60)


                )
)

(:action move_seg_O1_C2b_0_60_seg_O1_C2d_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C2b_0_60)
                 (not_occupied seg_O1_C2d_0_60)
                 (not_blocked seg_O1_C2d_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2d_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C2a_0_60)
                 (not_occupied seg_O1_C2c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_C2b_0_60))
                 (not_occupied seg_O1_C2b_0_60)
                 (not (at-segment ?a seg_O1_C2b_0_60))

                 (occupied seg_O1_C2d_0_60)
                 (not (not_occupied seg_O1_C2d_0_60))
                 (blocked seg_O1_C2d_0_60 ?a)
                 (not (not_blocked seg_O1_C2d_0_60 ?a))
                 (at-segment ?a seg_O1_C2d_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p107_0_76 ?a))
                 (not_blocked seg_p107_0_76 ?a)

                 (blocked seg_O1_C2a_0_60 ?a)
                 (not (not_blocked seg_O1_C2a_0_60 ?a))
                 (blocked seg_O1_C2c_0_34 ?a)
                 (not (not_blocked seg_O1_C2c_0_34 ?a))
                )
)

(:action move_seg_O1_C2d_0_60_seg_C2_b_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C2d_0_60)
                 (not_occupied seg_C2_b_0_80)
                 (not_blocked seg_C2_b_0_80 airplane_CFBEG)
                 (not_blocked seg_C2_b_0_80 airplane_DAEWH)
                 (not_blocked seg_C2_b_0_80 airplane_DAEW3)
                 (not_blocked seg_C2_b_0_80 airplane_DAEW7)
                 (not_blocked seg_C2_b_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C2d_0_60))
                 (not_occupied seg_O1_C2d_0_60)
                 (not (at-segment ?a seg_O1_C2d_0_60))

                 (occupied seg_C2_b_0_80)
                 (not (not_occupied seg_C2_b_0_80))
                 (blocked seg_C2_b_0_80 ?a)
                 (not (not_blocked seg_C2_b_0_80 ?a))
                 (at-segment ?a seg_C2_b_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C2a_0_60 ?a))
                 (not_blocked seg_O1_C2a_0_60 ?a)
                 (not (blocked seg_O1_C2b_0_60 ?a))
                 (not_blocked seg_O1_C2b_0_60 ?a)
                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)

                )
)

(:action move_seg_C2_b_0_80_seg_O1_C2d_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C2_b_0_80)
                 (not_occupied seg_O1_C2d_0_60)
                 (not_blocked seg_O1_C2d_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2d_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2d_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_C2_b_0_80))
                 (not_occupied seg_C2_b_0_80)
                 (not (at-segment ?a seg_C2_b_0_80))

                 (occupied seg_O1_C2d_0_60)
                 (not (not_occupied seg_O1_C2d_0_60))
                 (blocked seg_O1_C2d_0_60 ?a)
                 (not (not_blocked seg_O1_C2d_0_60 ?a))
                 (at-segment ?a seg_O1_C2d_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_C2_a_0_80 ?a))
                 (not_blocked seg_C2_a_0_80 ?a)

                )
)

(:action move_seg_O1_C2d_0_60_seg_O1_C2a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C2d_0_60)
                 (not_occupied seg_O1_C2a_0_60)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C2b_0_60)
                 (not_occupied seg_O1_C2c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_C2d_0_60))
                 (not_occupied seg_O1_C2d_0_60)
                 (not (at-segment ?a seg_O1_C2d_0_60))

                 (occupied seg_O1_C2a_0_60)
                 (not (not_occupied seg_O1_C2a_0_60))
                 (blocked seg_O1_C2a_0_60 ?a)
                 (not (not_blocked seg_O1_C2a_0_60 ?a))
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C2_b_0_80 ?a))
                 (not_blocked seg_C2_b_0_80 ?a)

                 (blocked seg_O1_C2b_0_60 ?a)
                 (not (not_blocked seg_O1_C2b_0_60 ?a))
                 (blocked seg_O1_C2c_0_34 ?a)
                 (not (not_blocked seg_O1_C2c_0_34 ?a))
                )
)

(:action move_seg_O1_104a_0_34_seg_O1_104c_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_104a_0_34)
                 (not_occupied seg_O1_104c_0_60)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_104c_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_104c_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_104b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_104a_0_34))
                 (not_occupied seg_O1_104a_0_34)
                 (not (at-segment ?a seg_O1_104a_0_34))

                 (occupied seg_O1_104c_0_60)
                 (not (not_occupied seg_O1_104c_0_60))
                 (blocked seg_O1_104c_0_60 ?a)
                 (not (not_blocked seg_O1_104c_0_60 ?a))
                 (at-segment ?a seg_O1_104c_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_103c_0_34 ?a))
                 (not_blocked seg_O1_103c_0_34 ?a)

                 (blocked seg_O1_104b_0_60 ?a)
                 (not (not_blocked seg_O1_104b_0_60 ?a))
                )
)

(:action move_seg_O1_C2a_0_60_seg_O1_C2b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not_occupied seg_O1_C2b_0_60)
                 (not_blocked seg_O1_C2b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C2c_0_34)
                 (not_occupied seg_O1_C2d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C2a_0_60))
                 (not_occupied seg_O1_C2a_0_60)
                 (not (at-segment ?a seg_O1_C2a_0_60))

                 (occupied seg_O1_C2b_0_60)
                 (not (not_occupied seg_O1_C2b_0_60))
                 (blocked seg_O1_C2b_0_60 ?a)
                 (not (not_blocked seg_O1_C2b_0_60 ?a))
                 (at-segment ?a seg_O1_C2b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_104c_0_60 ?a))
                 (not_blocked seg_O1_104c_0_60 ?a)

                 (blocked seg_O1_C2c_0_34 ?a)
                 (not (not_blocked seg_O1_C2c_0_34 ?a))
                 (blocked seg_O1_C2d_0_60 ?a)
                 (not (not_blocked seg_O1_C2d_0_60 ?a))
                )
)

(:action move_seg_O1_C2b_0_60_seg_p107_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C2b_0_60)
                 (not_occupied seg_p107_0_76)
                 (not_blocked seg_p107_0_76 airplane_CFBEG)
                 (not_blocked seg_p107_0_76 airplane_DAEWH)
                 (not_blocked seg_p107_0_76 airplane_DAEW3)
                 (not_blocked seg_p107_0_76 airplane_DAEW7)
                 (not_blocked seg_p107_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C2b_0_60))
                 (not_occupied seg_O1_C2b_0_60)
                 (not (at-segment ?a seg_O1_C2b_0_60))

                 (occupied seg_p107_0_76)
                 (not (not_occupied seg_p107_0_76))
                 (blocked seg_p107_0_76 ?a)
                 (not (not_blocked seg_p107_0_76 ?a))
                 (at-segment ?a seg_p107_0_76)

                 (not (blocked seg_O1_C2a_0_60 ?a))
                 (not_blocked seg_O1_C2a_0_60 ?a)
                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)
                 (not (blocked seg_O1_C2d_0_60 ?a))
                 (not_blocked seg_O1_C2d_0_60 ?a)

                )
)

(:action move_seg_p108_0_76_seg_O1_108b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p108_0_76)
                 (not_occupied seg_O1_108b_0_60)
                 (not_blocked seg_O1_108b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_108b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p108_0_76))
                 (not_occupied seg_p108_0_76)
                 (not (at-segment ?a seg_p108_0_76))

                 (occupied seg_O1_108b_0_60)
                 (not (not_occupied seg_O1_108b_0_60))
                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                 (at-segment ?a seg_O1_108b_0_60)


                )
)

(:action move_seg_O1_108b_0_60_seg_O1_108c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108b_0_60)
                 (not_occupied seg_O1_108c_0_34)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_108a_0_34)
                 (not_occupied seg_O1_108d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_108b_0_60))
                 (not_occupied seg_O1_108b_0_60)
                 (not (at-segment ?a seg_O1_108b_0_60))

                 (occupied seg_O1_108c_0_34)
                 (not (not_occupied seg_O1_108c_0_34))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (at-segment ?a seg_O1_108c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p108_0_76 ?a))
                 (not_blocked seg_p108_0_76 ?a)

                 (blocked seg_O1_108a_0_34 ?a)
                 (not (not_blocked seg_O1_108a_0_34 ?a))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                )
)

(:action move_seg_O1_108c_0_34_seg_O1_109a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_108c_0_34)
                 (not_occupied seg_O1_109a_0_34)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_108c_0_34))
                 (not_occupied seg_O1_108c_0_34)
                 (not (at-segment ?a seg_O1_108c_0_34))

                 (occupied seg_O1_109a_0_34)
                 (not (not_occupied seg_O1_109a_0_34))
                 (blocked seg_O1_109a_0_34 ?a)
                 (not (not_blocked seg_O1_109a_0_34 ?a))
                 (at-segment ?a seg_O1_109a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_108a_0_34 ?a))
                 (not_blocked seg_O1_108a_0_34 ?a)
                 (not (blocked seg_O1_108b_0_60 ?a))
                 (not_blocked seg_O1_108b_0_60 ?a)
                 (not (blocked seg_O1_108d_0_45 ?a))
                 (not_blocked seg_O1_108d_0_45 ?a)

                )
)

(:action move_seg_O1_109a_0_34_seg_O1_108c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_109a_0_34)
                 (not_occupied seg_O1_108c_0_34)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_109a_0_34))
                 (not_occupied seg_O1_109a_0_34)
                 (not (at-segment ?a seg_O1_109a_0_34))

                 (occupied seg_O1_108c_0_34)
                 (not (not_occupied seg_O1_108c_0_34))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (at-segment ?a seg_O1_108c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_109b_0_60 ?a))
                 (not_blocked seg_O1_109b_0_60 ?a)
                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)
                 (not (blocked seg_O1_109d_0_45 ?a))
                 (not_blocked seg_O1_109d_0_45 ?a)

                )
)

(:action move_seg_O1_108c_0_34_seg_O1_108a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108c_0_34)
                 (not_occupied seg_O1_108a_0_34)
                 (not_blocked seg_O1_108a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_108b_0_60)
                 (not_occupied seg_O1_108d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_108c_0_34))
                 (not_occupied seg_O1_108c_0_34)
                 (not (at-segment ?a seg_O1_108c_0_34))

                 (occupied seg_O1_108a_0_34)
                 (not (not_occupied seg_O1_108a_0_34))
                 (blocked seg_O1_108a_0_34 ?a)
                 (not (not_blocked seg_O1_108a_0_34 ?a))
                 (at-segment ?a seg_O1_108a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_109a_0_34 ?a))
                 (not_blocked seg_O1_109a_0_34 ?a)

                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                )
)

(:action move_seg_O1_108a_0_34_seg_O1_C2c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_108a_0_34)
                 (not_occupied seg_O1_C2c_0_34)
                 (not_blocked seg_O1_C2c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C2c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_108a_0_34))
                 (not_occupied seg_O1_108a_0_34)
                 (not (at-segment ?a seg_O1_108a_0_34))

                 (occupied seg_O1_C2c_0_34)
                 (not (not_occupied seg_O1_C2c_0_34))
                 (blocked seg_O1_C2c_0_34 ?a)
                 (not (not_blocked seg_O1_C2c_0_34 ?a))
                 (at-segment ?a seg_O1_C2c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_108b_0_60 ?a))
                 (not_blocked seg_O1_108b_0_60 ?a)
                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)
                 (not (blocked seg_O1_108d_0_45 ?a))
                 (not_blocked seg_O1_108d_0_45 ?a)

                )
)

(:action move_seg_O1_C2c_0_34_seg_O1_C2a_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C2c_0_34)
                 (not_occupied seg_O1_C2a_0_60)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C2a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C2a_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C2b_0_60)
                 (not_occupied seg_O1_C2d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C2c_0_34))
                 (not_occupied seg_O1_C2c_0_34)
                 (not (at-segment ?a seg_O1_C2c_0_34))

                 (occupied seg_O1_C2a_0_60)
                 (not (not_occupied seg_O1_C2a_0_60))
                 (blocked seg_O1_C2a_0_60 ?a)
                 (not (not_blocked seg_O1_C2a_0_60 ?a))
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_108a_0_34 ?a))
                 (not_blocked seg_O1_108a_0_34 ?a)

                 (blocked seg_O1_C2b_0_60 ?a)
                 (not (not_blocked seg_O1_C2b_0_60 ?a))
                 (blocked seg_O1_C2d_0_60 ?a)
                 (not (not_blocked seg_O1_C2d_0_60 ?a))
                )
)

(:action move_seg_O1_C2a_0_60_seg_O1_C2c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C2a_0_60)
                 (not_occupied seg_O1_C2c_0_34)
                 (not_blocked seg_O1_C2c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C2c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C2c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C2b_0_60)
                 (not_occupied seg_O1_C2d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C2a_0_60))
                 (not_occupied seg_O1_C2a_0_60)
                 (not (at-segment ?a seg_O1_C2a_0_60))

                 (occupied seg_O1_C2c_0_34)
                 (not (not_occupied seg_O1_C2c_0_34))
                 (blocked seg_O1_C2c_0_34 ?a)
                 (not (not_blocked seg_O1_C2c_0_34 ?a))
                 (at-segment ?a seg_O1_C2c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_104c_0_60 ?a))
                 (not_blocked seg_O1_104c_0_60 ?a)

                 (blocked seg_O1_C2b_0_60 ?a)
                 (not (not_blocked seg_O1_C2b_0_60 ?a))
                 (blocked seg_O1_C2d_0_60 ?a)
                 (not (not_blocked seg_O1_C2d_0_60 ?a))
                )
)

(:action move_seg_O1_C2c_0_34_seg_O1_108a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C2c_0_34)
                 (not_occupied seg_O1_108a_0_34)
                 (not_blocked seg_O1_108a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C2c_0_34))
                 (not_occupied seg_O1_C2c_0_34)
                 (not (at-segment ?a seg_O1_C2c_0_34))

                 (occupied seg_O1_108a_0_34)
                 (not (not_occupied seg_O1_108a_0_34))
                 (blocked seg_O1_108a_0_34 ?a)
                 (not (not_blocked seg_O1_108a_0_34 ?a))
                 (at-segment ?a seg_O1_108a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C2a_0_60 ?a))
                 (not_blocked seg_O1_C2a_0_60 ?a)
                 (not (blocked seg_O1_C2b_0_60 ?a))
                 (not_blocked seg_O1_C2b_0_60 ?a)
                 (not (blocked seg_O1_C2d_0_60 ?a))
                 (not_blocked seg_O1_C2d_0_60 ?a)

                )
)

(:action move_seg_O1_108a_0_34_seg_O1_108b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108a_0_34)
                 (not_occupied seg_O1_108b_0_60)
                 (not_blocked seg_O1_108b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_108b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_108b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_108c_0_34)
                 (not_occupied seg_O1_108d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_108a_0_34))
                 (not_occupied seg_O1_108a_0_34)
                 (not (at-segment ?a seg_O1_108a_0_34))

                 (occupied seg_O1_108b_0_60)
                 (not (not_occupied seg_O1_108b_0_60))
                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                 (at-segment ?a seg_O1_108b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)

                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                )
)

(:action move_seg_O1_108b_0_60_seg_p108_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_108b_0_60)
                 (not_occupied seg_p108_0_76)
                 (not_blocked seg_p108_0_76 airplane_CFBEG)
                 (not_blocked seg_p108_0_76 airplane_DAEWH)
                 (not_blocked seg_p108_0_76 airplane_DAEW3)
                 (not_blocked seg_p108_0_76 airplane_DAEW7)
                 (not_blocked seg_p108_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_108b_0_60))
                 (not_occupied seg_O1_108b_0_60)
                 (not (at-segment ?a seg_O1_108b_0_60))

                 (occupied seg_p108_0_76)
                 (not (not_occupied seg_p108_0_76))
                 (blocked seg_p108_0_76 ?a)
                 (not (not_blocked seg_p108_0_76 ?a))
                 (at-segment ?a seg_p108_0_76)

                 (not (blocked seg_O1_108a_0_34 ?a))
                 (not_blocked seg_O1_108a_0_34 ?a)
                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)
                 (not (blocked seg_O1_108d_0_45 ?a))
                 (not_blocked seg_O1_108d_0_45 ?a)

                )
)

(:action move_seg_p131_0_75_seg_O1_108d_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p131_0_75)
                 (not_occupied seg_O1_108d_0_45)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p131_0_75))
                 (not_occupied seg_p131_0_75)
                 (not (at-segment ?a seg_p131_0_75))

                 (occupied seg_O1_108d_0_45)
                 (not (not_occupied seg_O1_108d_0_45))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                 (at-segment ?a seg_O1_108d_0_45)


                )
)

(:action move_seg_O1_108d_0_45_seg_O1_108c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108d_0_45)
                 (not_occupied seg_O1_108c_0_34)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_108a_0_34)
                 (not_occupied seg_O1_108b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_108d_0_45))
                 (not_occupied seg_O1_108d_0_45)
                 (not (at-segment ?a seg_O1_108d_0_45))

                 (occupied seg_O1_108c_0_34)
                 (not (not_occupied seg_O1_108c_0_34))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (at-segment ?a seg_O1_108c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p131_0_75 ?a))
                 (not_blocked seg_p131_0_75 ?a)

                 (blocked seg_O1_108a_0_34 ?a)
                 (not (not_blocked seg_O1_108a_0_34 ?a))
                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                )
)

(:action move_seg_O1_108a_0_34_seg_O1_108d_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108a_0_34)
                 (not_occupied seg_O1_108d_0_45)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBE1)

                 (not_occupied seg_O1_108b_0_60)
                 (not_occupied seg_O1_108c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_108a_0_34))
                 (not_occupied seg_O1_108a_0_34)
                 (not (at-segment ?a seg_O1_108a_0_34))

                 (occupied seg_O1_108d_0_45)
                 (not (not_occupied seg_O1_108d_0_45))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                 (at-segment ?a seg_O1_108d_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)

                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                )
)

(:action move_seg_O1_108d_0_45_seg_p131_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_108d_0_45)
                 (not_occupied seg_p131_0_75)
                 (not_blocked seg_p131_0_75 airplane_CFBEG)
                 (not_blocked seg_p131_0_75 airplane_DAEWH)
                 (not_blocked seg_p131_0_75 airplane_DAEW3)
                 (not_blocked seg_p131_0_75 airplane_DAEW7)
                 (not_blocked seg_p131_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_108d_0_45))
                 (not_occupied seg_O1_108d_0_45)
                 (not (at-segment ?a seg_O1_108d_0_45))

                 (occupied seg_p131_0_75)
                 (not (not_occupied seg_p131_0_75))
                 (blocked seg_p131_0_75 ?a)
                 (not (not_blocked seg_p131_0_75 ?a))
                 (at-segment ?a seg_p131_0_75)

                 (not (blocked seg_O1_108a_0_34 ?a))
                 (not_blocked seg_O1_108a_0_34 ?a)
                 (not (blocked seg_O1_108b_0_60 ?a))
                 (not_blocked seg_O1_108b_0_60 ?a)
                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)

                )
)

(:action move_seg_p109_0_76_seg_O1_109b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p109_0_76)
                 (not_occupied seg_O1_109b_0_60)
                 (not_blocked seg_O1_109b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_109b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p109_0_76))
                 (not_occupied seg_p109_0_76)
                 (not (at-segment ?a seg_p109_0_76))

                 (occupied seg_O1_109b_0_60)
                 (not (not_occupied seg_O1_109b_0_60))
                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                 (at-segment ?a seg_O1_109b_0_60)


                )
)

(:action move_seg_O1_109b_0_60_seg_O1_109c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109b_0_60)
                 (not_occupied seg_O1_109c_0_34)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_109a_0_34)
                 (not_occupied seg_O1_109d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_109b_0_60))
                 (not_occupied seg_O1_109b_0_60)
                 (not (at-segment ?a seg_O1_109b_0_60))

                 (occupied seg_O1_109c_0_34)
                 (not (not_occupied seg_O1_109c_0_34))
                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                 (at-segment ?a seg_O1_109c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p109_0_76 ?a))
                 (not_blocked seg_p109_0_76 ?a)

                 (blocked seg_O1_109a_0_34 ?a)
                 (not (not_blocked seg_O1_109a_0_34 ?a))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                )
)

(:action move_seg_O1_109c_0_34_seg_O1_110a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_109c_0_34)
                 (not_occupied seg_O1_110a_0_34)
                 (not_blocked seg_O1_110a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_109c_0_34))
                 (not_occupied seg_O1_109c_0_34)
                 (not (at-segment ?a seg_O1_109c_0_34))

                 (occupied seg_O1_110a_0_34)
                 (not (not_occupied seg_O1_110a_0_34))
                 (blocked seg_O1_110a_0_34 ?a)
                 (not (not_blocked seg_O1_110a_0_34 ?a))
                 (at-segment ?a seg_O1_110a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_109a_0_34 ?a))
                 (not_blocked seg_O1_109a_0_34 ?a)
                 (not (blocked seg_O1_109b_0_60 ?a))
                 (not_blocked seg_O1_109b_0_60 ?a)
                 (not (blocked seg_O1_109d_0_45 ?a))
                 (not_blocked seg_O1_109d_0_45 ?a)

                )
)

(:action move_seg_O1_110a_0_34_seg_O1_109c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_110a_0_34)
                 (not_occupied seg_O1_109c_0_34)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_110a_0_34))
                 (not_occupied seg_O1_110a_0_34)
                 (not (at-segment ?a seg_O1_110a_0_34))

                 (occupied seg_O1_109c_0_34)
                 (not (not_occupied seg_O1_109c_0_34))
                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                 (at-segment ?a seg_O1_109c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_110b_0_60 ?a))
                 (not_blocked seg_O1_110b_0_60 ?a)
                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)
                 (not (blocked seg_O1_110d_0_45 ?a))
                 (not_blocked seg_O1_110d_0_45 ?a)

                )
)

(:action move_seg_O1_109c_0_34_seg_O1_109a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109c_0_34)
                 (not_occupied seg_O1_109a_0_34)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_109b_0_60)
                 (not_occupied seg_O1_109d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_109c_0_34))
                 (not_occupied seg_O1_109c_0_34)
                 (not (at-segment ?a seg_O1_109c_0_34))

                 (occupied seg_O1_109a_0_34)
                 (not (not_occupied seg_O1_109a_0_34))
                 (blocked seg_O1_109a_0_34 ?a)
                 (not (not_blocked seg_O1_109a_0_34 ?a))
                 (at-segment ?a seg_O1_109a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_110a_0_34 ?a))
                 (not_blocked seg_O1_110a_0_34 ?a)

                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                )
)

(:action move_seg_O1_108a_0_34_seg_O1_108c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108a_0_34)
                 (not_occupied seg_O1_108c_0_34)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_108b_0_60)
                 (not_occupied seg_O1_108d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_108a_0_34))
                 (not_occupied seg_O1_108a_0_34)
                 (not (at-segment ?a seg_O1_108a_0_34))

                 (occupied seg_O1_108c_0_34)
                 (not (not_occupied seg_O1_108c_0_34))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (at-segment ?a seg_O1_108c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C2c_0_34 ?a))
                 (not_blocked seg_O1_C2c_0_34 ?a)

                 (blocked seg_O1_108b_0_60 ?a)
                 (not (not_blocked seg_O1_108b_0_60 ?a))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                )
)

(:action move_seg_O1_109a_0_34_seg_O1_109b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109a_0_34)
                 (not_occupied seg_O1_109b_0_60)
                 (not_blocked seg_O1_109b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_109b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_109b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_109c_0_34)
                 (not_occupied seg_O1_109d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_109a_0_34))
                 (not_occupied seg_O1_109a_0_34)
                 (not (at-segment ?a seg_O1_109a_0_34))

                 (occupied seg_O1_109b_0_60)
                 (not (not_occupied seg_O1_109b_0_60))
                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                 (at-segment ?a seg_O1_109b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)

                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                )
)

(:action move_seg_O1_109b_0_60_seg_p109_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_109b_0_60)
                 (not_occupied seg_p109_0_76)
                 (not_blocked seg_p109_0_76 airplane_CFBEG)
                 (not_blocked seg_p109_0_76 airplane_DAEWH)
                 (not_blocked seg_p109_0_76 airplane_DAEW3)
                 (not_blocked seg_p109_0_76 airplane_DAEW7)
                 (not_blocked seg_p109_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_109b_0_60))
                 (not_occupied seg_O1_109b_0_60)
                 (not (at-segment ?a seg_O1_109b_0_60))

                 (occupied seg_p109_0_76)
                 (not (not_occupied seg_p109_0_76))
                 (blocked seg_p109_0_76 ?a)
                 (not (not_blocked seg_p109_0_76 ?a))
                 (at-segment ?a seg_p109_0_76)

                 (not (blocked seg_O1_109a_0_34 ?a))
                 (not_blocked seg_O1_109a_0_34 ?a)
                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)
                 (not (blocked seg_O1_109d_0_45 ?a))
                 (not_blocked seg_O1_109d_0_45 ?a)

                )
)

(:action move_seg_p132_0_75_seg_O1_109d_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p132_0_75)
                 (not_occupied seg_O1_109d_0_45)
                 (not_blocked seg_O1_109d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_109d_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p132_0_75))
                 (not_occupied seg_p132_0_75)
                 (not (at-segment ?a seg_p132_0_75))

                 (occupied seg_O1_109d_0_45)
                 (not (not_occupied seg_O1_109d_0_45))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                 (at-segment ?a seg_O1_109d_0_45)


                )
)

(:action move_seg_O1_109d_0_45_seg_O1_109c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109d_0_45)
                 (not_occupied seg_O1_109c_0_34)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_109a_0_34)
                 (not_occupied seg_O1_109b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_109d_0_45))
                 (not_occupied seg_O1_109d_0_45)
                 (not (at-segment ?a seg_O1_109d_0_45))

                 (occupied seg_O1_109c_0_34)
                 (not (not_occupied seg_O1_109c_0_34))
                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                 (at-segment ?a seg_O1_109c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p132_0_75 ?a))
                 (not_blocked seg_p132_0_75 ?a)

                 (blocked seg_O1_109a_0_34 ?a)
                 (not (not_blocked seg_O1_109a_0_34 ?a))
                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                )
)

(:action move_seg_O1_109a_0_34_seg_O1_109d_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109a_0_34)
                 (not_occupied seg_O1_109d_0_45)
                 (not_blocked seg_O1_109d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_109d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_109d_0_45 airplane_CFBE1)

                 (not_occupied seg_O1_109b_0_60)
                 (not_occupied seg_O1_109c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_109a_0_34))
                 (not_occupied seg_O1_109a_0_34)
                 (not (at-segment ?a seg_O1_109a_0_34))

                 (occupied seg_O1_109d_0_45)
                 (not (not_occupied seg_O1_109d_0_45))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                 (at-segment ?a seg_O1_109d_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)

                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                )
)

(:action move_seg_O1_109d_0_45_seg_p132_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_109d_0_45)
                 (not_occupied seg_p132_0_75)
                 (not_blocked seg_p132_0_75 airplane_CFBEG)
                 (not_blocked seg_p132_0_75 airplane_DAEWH)
                 (not_blocked seg_p132_0_75 airplane_DAEW3)
                 (not_blocked seg_p132_0_75 airplane_DAEW7)
                 (not_blocked seg_p132_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_109d_0_45))
                 (not_occupied seg_O1_109d_0_45)
                 (not (at-segment ?a seg_O1_109d_0_45))

                 (occupied seg_p132_0_75)
                 (not (not_occupied seg_p132_0_75))
                 (blocked seg_p132_0_75 ?a)
                 (not (not_blocked seg_p132_0_75 ?a))
                 (at-segment ?a seg_p132_0_75)

                 (not (blocked seg_O1_109a_0_34 ?a))
                 (not_blocked seg_O1_109a_0_34 ?a)
                 (not (blocked seg_O1_109b_0_60 ?a))
                 (not_blocked seg_O1_109b_0_60 ?a)
                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)

                )
)

(:action move_seg_p110_0_76_seg_O1_110b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p110_0_76)
                 (not_occupied seg_O1_110b_0_60)
                 (not_blocked seg_O1_110b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_110b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p110_0_76))
                 (not_occupied seg_p110_0_76)
                 (not (at-segment ?a seg_p110_0_76))

                 (occupied seg_O1_110b_0_60)
                 (not (not_occupied seg_O1_110b_0_60))
                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                 (at-segment ?a seg_O1_110b_0_60)


                )
)

(:action move_seg_O1_110b_0_60_seg_O1_110c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110b_0_60)
                 (not_occupied seg_O1_110c_0_34)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_110a_0_34)
                 (not_occupied seg_O1_110d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_110b_0_60))
                 (not_occupied seg_O1_110b_0_60)
                 (not (at-segment ?a seg_O1_110b_0_60))

                 (occupied seg_O1_110c_0_34)
                 (not (not_occupied seg_O1_110c_0_34))
                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                 (at-segment ?a seg_O1_110c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p110_0_76 ?a))
                 (not_blocked seg_p110_0_76 ?a)

                 (blocked seg_O1_110a_0_34 ?a)
                 (not (not_blocked seg_O1_110a_0_34 ?a))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                )
)

(:action move_seg_O1_110c_0_34_seg_O1_111a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_110c_0_34)
                 (not_occupied seg_O1_111a_0_34)
                 (not_blocked seg_O1_111a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_110c_0_34))
                 (not_occupied seg_O1_110c_0_34)
                 (not (at-segment ?a seg_O1_110c_0_34))

                 (occupied seg_O1_111a_0_34)
                 (not (not_occupied seg_O1_111a_0_34))
                 (blocked seg_O1_111a_0_34 ?a)
                 (not (not_blocked seg_O1_111a_0_34 ?a))
                 (at-segment ?a seg_O1_111a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_110a_0_34 ?a))
                 (not_blocked seg_O1_110a_0_34 ?a)
                 (not (blocked seg_O1_110b_0_60 ?a))
                 (not_blocked seg_O1_110b_0_60 ?a)
                 (not (blocked seg_O1_110d_0_45 ?a))
                 (not_blocked seg_O1_110d_0_45 ?a)

                )
)

(:action move_seg_O1_111a_0_34_seg_O1_110c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_111a_0_34)
                 (not_occupied seg_O1_110c_0_34)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_111a_0_34))
                 (not_occupied seg_O1_111a_0_34)
                 (not (at-segment ?a seg_O1_111a_0_34))

                 (occupied seg_O1_110c_0_34)
                 (not (not_occupied seg_O1_110c_0_34))
                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                 (at-segment ?a seg_O1_110c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_111b_0_60 ?a))
                 (not_blocked seg_O1_111b_0_60 ?a)
                 (not (blocked seg_O1_111c_0_34 ?a))
                 (not_blocked seg_O1_111c_0_34 ?a)
                 (not (blocked seg_O1_111d_0_45 ?a))
                 (not_blocked seg_O1_111d_0_45 ?a)

                )
)

(:action move_seg_O1_110c_0_34_seg_O1_110a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110c_0_34)
                 (not_occupied seg_O1_110a_0_34)
                 (not_blocked seg_O1_110a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_110b_0_60)
                 (not_occupied seg_O1_110d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_110c_0_34))
                 (not_occupied seg_O1_110c_0_34)
                 (not (at-segment ?a seg_O1_110c_0_34))

                 (occupied seg_O1_110a_0_34)
                 (not (not_occupied seg_O1_110a_0_34))
                 (blocked seg_O1_110a_0_34 ?a)
                 (not (not_blocked seg_O1_110a_0_34 ?a))
                 (at-segment ?a seg_O1_110a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_111a_0_34 ?a))
                 (not_blocked seg_O1_111a_0_34 ?a)

                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                )
)

(:action move_seg_O1_109a_0_34_seg_O1_109c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_109a_0_34)
                 (not_occupied seg_O1_109c_0_34)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_109b_0_60)
                 (not_occupied seg_O1_109d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_109a_0_34))
                 (not_occupied seg_O1_109a_0_34)
                 (not (at-segment ?a seg_O1_109a_0_34))

                 (occupied seg_O1_109c_0_34)
                 (not (not_occupied seg_O1_109c_0_34))
                 (blocked seg_O1_109c_0_34 ?a)
                 (not (not_blocked seg_O1_109c_0_34 ?a))
                 (at-segment ?a seg_O1_109c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)

                 (blocked seg_O1_109b_0_60 ?a)
                 (not (not_blocked seg_O1_109b_0_60 ?a))
                 (blocked seg_O1_109d_0_45 ?a)
                 (not (not_blocked seg_O1_109d_0_45 ?a))
                )
)

(:action move_seg_O1_110a_0_34_seg_O1_110b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110a_0_34)
                 (not_occupied seg_O1_110b_0_60)
                 (not_blocked seg_O1_110b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_110b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_110b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_110c_0_34)
                 (not_occupied seg_O1_110d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_110a_0_34))
                 (not_occupied seg_O1_110a_0_34)
                 (not (at-segment ?a seg_O1_110a_0_34))

                 (occupied seg_O1_110b_0_60)
                 (not (not_occupied seg_O1_110b_0_60))
                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                 (at-segment ?a seg_O1_110b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)

                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                )
)

(:action move_seg_O1_110b_0_60_seg_p110_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_110b_0_60)
                 (not_occupied seg_p110_0_76)
                 (not_blocked seg_p110_0_76 airplane_CFBEG)
                 (not_blocked seg_p110_0_76 airplane_DAEWH)
                 (not_blocked seg_p110_0_76 airplane_DAEW3)
                 (not_blocked seg_p110_0_76 airplane_DAEW7)
                 (not_blocked seg_p110_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_110b_0_60))
                 (not_occupied seg_O1_110b_0_60)
                 (not (at-segment ?a seg_O1_110b_0_60))

                 (occupied seg_p110_0_76)
                 (not (not_occupied seg_p110_0_76))
                 (blocked seg_p110_0_76 ?a)
                 (not (not_blocked seg_p110_0_76 ?a))
                 (at-segment ?a seg_p110_0_76)

                 (not (blocked seg_O1_110a_0_34 ?a))
                 (not_blocked seg_O1_110a_0_34 ?a)
                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)
                 (not (blocked seg_O1_110d_0_45 ?a))
                 (not_blocked seg_O1_110d_0_45 ?a)

                )
)

(:action move_seg_p133_0_75_seg_O1_110d_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p133_0_75)
                 (not_occupied seg_O1_110d_0_45)
                 (not_blocked seg_O1_110d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_110d_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p133_0_75))
                 (not_occupied seg_p133_0_75)
                 (not (at-segment ?a seg_p133_0_75))

                 (occupied seg_O1_110d_0_45)
                 (not (not_occupied seg_O1_110d_0_45))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                 (at-segment ?a seg_O1_110d_0_45)


                )
)

(:action move_seg_O1_110d_0_45_seg_O1_110c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110d_0_45)
                 (not_occupied seg_O1_110c_0_34)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_110a_0_34)
                 (not_occupied seg_O1_110b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_110d_0_45))
                 (not_occupied seg_O1_110d_0_45)
                 (not (at-segment ?a seg_O1_110d_0_45))

                 (occupied seg_O1_110c_0_34)
                 (not (not_occupied seg_O1_110c_0_34))
                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                 (at-segment ?a seg_O1_110c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p133_0_75 ?a))
                 (not_blocked seg_p133_0_75 ?a)

                 (blocked seg_O1_110a_0_34 ?a)
                 (not (not_blocked seg_O1_110a_0_34 ?a))
                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                )
)

(:action move_seg_O1_110a_0_34_seg_O1_110d_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110a_0_34)
                 (not_occupied seg_O1_110d_0_45)
                 (not_blocked seg_O1_110d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_110d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_110d_0_45 airplane_CFBE1)

                 (not_occupied seg_O1_110b_0_60)
                 (not_occupied seg_O1_110c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_110a_0_34))
                 (not_occupied seg_O1_110a_0_34)
                 (not (at-segment ?a seg_O1_110a_0_34))

                 (occupied seg_O1_110d_0_45)
                 (not (not_occupied seg_O1_110d_0_45))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                 (at-segment ?a seg_O1_110d_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)

                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                )
)

(:action move_seg_O1_110d_0_45_seg_p133_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_110d_0_45)
                 (not_occupied seg_p133_0_75)
                 (not_blocked seg_p133_0_75 airplane_CFBEG)
                 (not_blocked seg_p133_0_75 airplane_DAEWH)
                 (not_blocked seg_p133_0_75 airplane_DAEW3)
                 (not_blocked seg_p133_0_75 airplane_DAEW7)
                 (not_blocked seg_p133_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_110d_0_45))
                 (not_occupied seg_O1_110d_0_45)
                 (not (at-segment ?a seg_O1_110d_0_45))

                 (occupied seg_p133_0_75)
                 (not (not_occupied seg_p133_0_75))
                 (blocked seg_p133_0_75 ?a)
                 (not (not_blocked seg_p133_0_75 ?a))
                 (at-segment ?a seg_p133_0_75)

                 (not (blocked seg_O1_110a_0_34 ?a))
                 (not_blocked seg_O1_110a_0_34 ?a)
                 (not (blocked seg_O1_110b_0_60 ?a))
                 (not_blocked seg_O1_110b_0_60 ?a)
                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)

                )
)

(:action move_seg_p111_0_76_seg_O1_111b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p111_0_76)
                 (not_occupied seg_O1_111b_0_60)
                 (not_blocked seg_O1_111b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_111b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p111_0_76))
                 (not_occupied seg_p111_0_76)
                 (not (at-segment ?a seg_p111_0_76))

                 (occupied seg_O1_111b_0_60)
                 (not (not_occupied seg_O1_111b_0_60))
                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                 (at-segment ?a seg_O1_111b_0_60)


                )
)

(:action move_seg_O1_111b_0_60_seg_O1_111c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111b_0_60)
                 (not_occupied seg_O1_111c_0_34)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_111a_0_34)
                 (not_occupied seg_O1_111d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_111b_0_60))
                 (not_occupied seg_O1_111b_0_60)
                 (not (at-segment ?a seg_O1_111b_0_60))

                 (occupied seg_O1_111c_0_34)
                 (not (not_occupied seg_O1_111c_0_34))
                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                 (at-segment ?a seg_O1_111c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p111_0_76 ?a))
                 (not_blocked seg_p111_0_76 ?a)

                 (blocked seg_O1_111a_0_34 ?a)
                 (not (not_blocked seg_O1_111a_0_34 ?a))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                )
)

(:action move_seg_O1_111c_0_34_seg_O1_C3a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_111c_0_34)
                 (not_occupied seg_O1_C3a_0_34)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_111c_0_34))
                 (not_occupied seg_O1_111c_0_34)
                 (not (at-segment ?a seg_O1_111c_0_34))

                 (occupied seg_O1_C3a_0_34)
                 (not (not_occupied seg_O1_C3a_0_34))
                 (blocked seg_O1_C3a_0_34 ?a)
                 (not (not_blocked seg_O1_C3a_0_34 ?a))
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_111a_0_34 ?a))
                 (not_blocked seg_O1_111a_0_34 ?a)
                 (not (blocked seg_O1_111b_0_60 ?a))
                 (not_blocked seg_O1_111b_0_60 ?a)
                 (not (blocked seg_O1_111d_0_45 ?a))
                 (not_blocked seg_O1_111d_0_45 ?a)

                )
)

(:action move_seg_O1_C3a_0_34_seg_O1_111c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not_occupied seg_O1_111c_0_34)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C3a_0_34))
                 (not_occupied seg_O1_C3a_0_34)
                 (not (at-segment ?a seg_O1_C3a_0_34))

                 (occupied seg_O1_111c_0_34)
                 (not (not_occupied seg_O1_111c_0_34))
                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                 (at-segment ?a seg_O1_111c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C3b_0_60 ?a))
                 (not_blocked seg_O1_C3b_0_60 ?a)
                 (not (blocked seg_O1_C3c_0_48 ?a))
                 (not_blocked seg_O1_C3c_0_48 ?a)
                 (not (blocked seg_O1_C3d_0_60 ?a))
                 (not_blocked seg_O1_C3d_0_60 ?a)

                )
)

(:action move_seg_O1_111c_0_34_seg_O1_111a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111c_0_34)
                 (not_occupied seg_O1_111a_0_34)
                 (not_blocked seg_O1_111a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_111b_0_60)
                 (not_occupied seg_O1_111d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_111c_0_34))
                 (not_occupied seg_O1_111c_0_34)
                 (not (at-segment ?a seg_O1_111c_0_34))

                 (occupied seg_O1_111a_0_34)
                 (not (not_occupied seg_O1_111a_0_34))
                 (blocked seg_O1_111a_0_34 ?a)
                 (not (not_blocked seg_O1_111a_0_34 ?a))
                 (at-segment ?a seg_O1_111a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C3a_0_34 ?a))
                 (not_blocked seg_O1_C3a_0_34 ?a)

                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                )
)

(:action move_seg_O1_110a_0_34_seg_O1_110c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_110a_0_34)
                 (not_occupied seg_O1_110c_0_34)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_110c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_110c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_110b_0_60)
                 (not_occupied seg_O1_110d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_110a_0_34))
                 (not_occupied seg_O1_110a_0_34)
                 (not (at-segment ?a seg_O1_110a_0_34))

                 (occupied seg_O1_110c_0_34)
                 (not (not_occupied seg_O1_110c_0_34))
                 (blocked seg_O1_110c_0_34 ?a)
                 (not (not_blocked seg_O1_110c_0_34 ?a))
                 (at-segment ?a seg_O1_110c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_109c_0_34 ?a))
                 (not_blocked seg_O1_109c_0_34 ?a)

                 (blocked seg_O1_110b_0_60 ?a)
                 (not (not_blocked seg_O1_110b_0_60 ?a))
                 (blocked seg_O1_110d_0_45 ?a)
                 (not (not_blocked seg_O1_110d_0_45 ?a))
                )
)

(:action move_seg_O1_111a_0_34_seg_O1_111b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111a_0_34)
                 (not_occupied seg_O1_111b_0_60)
                 (not_blocked seg_O1_111b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_111b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_111b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_111c_0_34)
                 (not_occupied seg_O1_111d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_111a_0_34))
                 (not_occupied seg_O1_111a_0_34)
                 (not (at-segment ?a seg_O1_111a_0_34))

                 (occupied seg_O1_111b_0_60)
                 (not (not_occupied seg_O1_111b_0_60))
                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                 (at-segment ?a seg_O1_111b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)

                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                )
)

(:action move_seg_O1_111b_0_60_seg_p111_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_111b_0_60)
                 (not_occupied seg_p111_0_76)
                 (not_blocked seg_p111_0_76 airplane_CFBEG)
                 (not_blocked seg_p111_0_76 airplane_DAEWH)
                 (not_blocked seg_p111_0_76 airplane_DAEW3)
                 (not_blocked seg_p111_0_76 airplane_DAEW7)
                 (not_blocked seg_p111_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_111b_0_60))
                 (not_occupied seg_O1_111b_0_60)
                 (not (at-segment ?a seg_O1_111b_0_60))

                 (occupied seg_p111_0_76)
                 (not (not_occupied seg_p111_0_76))
                 (blocked seg_p111_0_76 ?a)
                 (not (not_blocked seg_p111_0_76 ?a))
                 (at-segment ?a seg_p111_0_76)

                 (not (blocked seg_O1_111a_0_34 ?a))
                 (not_blocked seg_O1_111a_0_34 ?a)
                 (not (blocked seg_O1_111c_0_34 ?a))
                 (not_blocked seg_O1_111c_0_34 ?a)
                 (not (blocked seg_O1_111d_0_45 ?a))
                 (not_blocked seg_O1_111d_0_45 ?a)

                )
)

(:action move_seg_p134_0_75_seg_O1_111d_0_45_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p134_0_75)
                 (not_occupied seg_O1_111d_0_45)
                 (not_blocked seg_O1_111d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_111d_0_45 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p134_0_75))
                 (not_occupied seg_p134_0_75)
                 (not (at-segment ?a seg_p134_0_75))

                 (occupied seg_O1_111d_0_45)
                 (not (not_occupied seg_O1_111d_0_45))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                 (at-segment ?a seg_O1_111d_0_45)


                )
)

(:action move_seg_O1_111d_0_45_seg_O1_111c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111d_0_45)
                 (not_occupied seg_O1_111c_0_34)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_111a_0_34)
                 (not_occupied seg_O1_111b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_111d_0_45))
                 (not_occupied seg_O1_111d_0_45)
                 (not (at-segment ?a seg_O1_111d_0_45))

                 (occupied seg_O1_111c_0_34)
                 (not (not_occupied seg_O1_111c_0_34))
                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                 (at-segment ?a seg_O1_111c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p134_0_75 ?a))
                 (not_blocked seg_p134_0_75 ?a)

                 (blocked seg_O1_111a_0_34 ?a)
                 (not (not_blocked seg_O1_111a_0_34 ?a))
                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                )
)

(:action move_seg_O1_111a_0_34_seg_O1_111d_0_45_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111a_0_34)
                 (not_occupied seg_O1_111d_0_45)
                 (not_blocked seg_O1_111d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_111d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_111d_0_45 airplane_CFBE1)

                 (not_occupied seg_O1_111b_0_60)
                 (not_occupied seg_O1_111c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_111a_0_34))
                 (not_occupied seg_O1_111a_0_34)
                 (not (at-segment ?a seg_O1_111a_0_34))

                 (occupied seg_O1_111d_0_45)
                 (not (not_occupied seg_O1_111d_0_45))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                 (at-segment ?a seg_O1_111d_0_45)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)

                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                )
)

(:action move_seg_O1_111d_0_45_seg_p134_0_75_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_111d_0_45)
                 (not_occupied seg_p134_0_75)
                 (not_blocked seg_p134_0_75 airplane_CFBEG)
                 (not_blocked seg_p134_0_75 airplane_DAEWH)
                 (not_blocked seg_p134_0_75 airplane_DAEW3)
                 (not_blocked seg_p134_0_75 airplane_DAEW7)
                 (not_blocked seg_p134_0_75 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_111d_0_45))
                 (not_occupied seg_O1_111d_0_45)
                 (not (at-segment ?a seg_O1_111d_0_45))

                 (occupied seg_p134_0_75)
                 (not (not_occupied seg_p134_0_75))
                 (blocked seg_p134_0_75 ?a)
                 (not (not_blocked seg_p134_0_75 ?a))
                 (at-segment ?a seg_p134_0_75)

                 (not (blocked seg_O1_111a_0_34 ?a))
                 (not_blocked seg_O1_111a_0_34 ?a)
                 (not (blocked seg_O1_111b_0_60 ?a))
                 (not_blocked seg_O1_111b_0_60 ?a)
                 (not (blocked seg_O1_111c_0_34 ?a))
                 (not_blocked seg_O1_111c_0_34 ?a)

                )
)

(:action move_seg_p112_0_76_seg_O1_C3b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p112_0_76)
                 (not_occupied seg_O1_C3b_0_60)
                 (not_blocked seg_O1_C3b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C3b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p112_0_76))
                 (not_occupied seg_p112_0_76)
                 (not (at-segment ?a seg_p112_0_76))

                 (occupied seg_O1_C3b_0_60)
                 (not (not_occupied seg_O1_C3b_0_60))
                 (blocked seg_O1_C3b_0_60 ?a)
                 (not (not_blocked seg_O1_C3b_0_60 ?a))
                 (at-segment ?a seg_O1_C3b_0_60)


                )
)

(:action move_seg_O1_C3b_0_60_seg_O1_C3d_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C3b_0_60)
                 (not_occupied seg_O1_C3d_0_60)
                 (not_blocked seg_O1_C3d_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C3d_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C3a_0_34)
                 (not_occupied seg_O1_C3c_0_48)
              )

 :effect        (and
                 (not (occupied seg_O1_C3b_0_60))
                 (not_occupied seg_O1_C3b_0_60)
                 (not (at-segment ?a seg_O1_C3b_0_60))

                 (occupied seg_O1_C3d_0_60)
                 (not (not_occupied seg_O1_C3d_0_60))
                 (blocked seg_O1_C3d_0_60 ?a)
                 (not (not_blocked seg_O1_C3d_0_60 ?a))
                 (at-segment ?a seg_O1_C3d_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p112_0_76 ?a))
                 (not_blocked seg_p112_0_76 ?a)

                 (blocked seg_O1_C3a_0_34 ?a)
                 (not (not_blocked seg_O1_C3a_0_34 ?a))
                 (blocked seg_O1_C3c_0_48 ?a)
                 (not (not_blocked seg_O1_C3c_0_48 ?a))
                )
)

(:action move_seg_O1_C3d_0_60_seg_C3_b_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C3d_0_60)
                 (not_occupied seg_C3_b_0_80)
                 (not_blocked seg_C3_b_0_80 airplane_CFBEG)
                 (not_blocked seg_C3_b_0_80 airplane_DAEWH)
                 (not_blocked seg_C3_b_0_80 airplane_DAEW3)
                 (not_blocked seg_C3_b_0_80 airplane_DAEW7)
                 (not_blocked seg_C3_b_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C3d_0_60))
                 (not_occupied seg_O1_C3d_0_60)
                 (not (at-segment ?a seg_O1_C3d_0_60))

                 (occupied seg_C3_b_0_80)
                 (not (not_occupied seg_C3_b_0_80))
                 (blocked seg_C3_b_0_80 ?a)
                 (not (not_blocked seg_C3_b_0_80 ?a))
                 (at-segment ?a seg_C3_b_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C3a_0_34 ?a))
                 (not_blocked seg_O1_C3a_0_34 ?a)
                 (not (blocked seg_O1_C3b_0_60 ?a))
                 (not_blocked seg_O1_C3b_0_60 ?a)
                 (not (blocked seg_O1_C3c_0_48 ?a))
                 (not_blocked seg_O1_C3c_0_48 ?a)

                )
)

(:action move_seg_C3_b_0_80_seg_O1_C3d_0_60_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C3_b_0_80)
                 (not_occupied seg_O1_C3d_0_60)
                 (not_blocked seg_O1_C3d_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C3d_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C3d_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_C3_b_0_80))
                 (not_occupied seg_C3_b_0_80)
                 (not (at-segment ?a seg_C3_b_0_80))

                 (occupied seg_O1_C3d_0_60)
                 (not (not_occupied seg_O1_C3d_0_60))
                 (blocked seg_O1_C3d_0_60 ?a)
                 (not (not_blocked seg_O1_C3d_0_60 ?a))
                 (at-segment ?a seg_O1_C3d_0_60)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_C3_a_0_80 ?a))
                 (not_blocked seg_C3_a_0_80 ?a)

                )
)

(:action move_seg_O1_C3d_0_60_seg_O1_C3a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C3d_0_60)
                 (not_occupied seg_O1_C3a_0_34)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C3b_0_60)
                 (not_occupied seg_O1_C3c_0_48)
              )

 :effect        (and
                 (not (occupied seg_O1_C3d_0_60))
                 (not_occupied seg_O1_C3d_0_60)
                 (not (at-segment ?a seg_O1_C3d_0_60))

                 (occupied seg_O1_C3a_0_34)
                 (not (not_occupied seg_O1_C3a_0_34))
                 (blocked seg_O1_C3a_0_34 ?a)
                 (not (not_blocked seg_O1_C3a_0_34 ?a))
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C3_b_0_80 ?a))
                 (not_blocked seg_C3_b_0_80 ?a)

                 (blocked seg_O1_C3b_0_60 ?a)
                 (not (not_blocked seg_O1_C3b_0_60 ?a))
                 (blocked seg_O1_C3c_0_48 ?a)
                 (not (not_blocked seg_O1_C3c_0_48 ?a))
                )
)

(:action move_seg_O1_111a_0_34_seg_O1_111c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_111a_0_34)
                 (not_occupied seg_O1_111c_0_34)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_111c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_111c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_111b_0_60)
                 (not_occupied seg_O1_111d_0_45)
              )

 :effect        (and
                 (not (occupied seg_O1_111a_0_34))
                 (not_occupied seg_O1_111a_0_34)
                 (not (at-segment ?a seg_O1_111a_0_34))

                 (occupied seg_O1_111c_0_34)
                 (not (not_occupied seg_O1_111c_0_34))
                 (blocked seg_O1_111c_0_34 ?a)
                 (not (not_blocked seg_O1_111c_0_34 ?a))
                 (at-segment ?a seg_O1_111c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_110c_0_34 ?a))
                 (not_blocked seg_O1_110c_0_34 ?a)

                 (blocked seg_O1_111b_0_60 ?a)
                 (not (not_blocked seg_O1_111b_0_60 ?a))
                 (blocked seg_O1_111d_0_45 ?a)
                 (not (not_blocked seg_O1_111d_0_45 ?a))
                )
)

(:action move_seg_O1_C3a_0_34_seg_O1_C3b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not_occupied seg_O1_C3b_0_60)
                 (not_blocked seg_O1_C3b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C3b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C3b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C3c_0_48)
                 (not_occupied seg_O1_C3d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C3a_0_34))
                 (not_occupied seg_O1_C3a_0_34)
                 (not (at-segment ?a seg_O1_C3a_0_34))

                 (occupied seg_O1_C3b_0_60)
                 (not (not_occupied seg_O1_C3b_0_60))
                 (blocked seg_O1_C3b_0_60 ?a)
                 (not (not_blocked seg_O1_C3b_0_60 ?a))
                 (at-segment ?a seg_O1_C3b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_111c_0_34 ?a))
                 (not_blocked seg_O1_111c_0_34 ?a)

                 (blocked seg_O1_C3c_0_48 ?a)
                 (not (not_blocked seg_O1_C3c_0_48 ?a))
                 (blocked seg_O1_C3d_0_60 ?a)
                 (not (not_blocked seg_O1_C3d_0_60 ?a))
                )
)

(:action move_seg_O1_C3b_0_60_seg_p112_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C3b_0_60)
                 (not_occupied seg_p112_0_76)
                 (not_blocked seg_p112_0_76 airplane_CFBEG)
                 (not_blocked seg_p112_0_76 airplane_DAEWH)
                 (not_blocked seg_p112_0_76 airplane_DAEW3)
                 (not_blocked seg_p112_0_76 airplane_DAEW7)
                 (not_blocked seg_p112_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C3b_0_60))
                 (not_occupied seg_O1_C3b_0_60)
                 (not (at-segment ?a seg_O1_C3b_0_60))

                 (occupied seg_p112_0_76)
                 (not (not_occupied seg_p112_0_76))
                 (blocked seg_p112_0_76 ?a)
                 (not (not_blocked seg_p112_0_76 ?a))
                 (at-segment ?a seg_p112_0_76)

                 (not (blocked seg_O1_C3a_0_34 ?a))
                 (not_blocked seg_O1_C3a_0_34 ?a)
                 (not (blocked seg_O1_C3c_0_48 ?a))
                 (not_blocked seg_O1_C3c_0_48 ?a)
                 (not (blocked seg_O1_C3d_0_60 ?a))
                 (not_blocked seg_O1_C3d_0_60 ?a)

                )
)

(:action move_seg_p115_0_76_seg_O1_115b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p115_0_76)
                 (not_occupied seg_O1_115b_0_60)
                 (not_blocked seg_O1_115b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_115b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p115_0_76))
                 (not_occupied seg_p115_0_76)
                 (not (at-segment ?a seg_p115_0_76))

                 (occupied seg_O1_115b_0_60)
                 (not (not_occupied seg_O1_115b_0_60))
                 (blocked seg_O1_115b_0_60 ?a)
                 (not (not_blocked seg_O1_115b_0_60 ?a))
                 (at-segment ?a seg_O1_115b_0_60)


                )
)

(:action move_seg_O1_115b_0_60_seg_O1_115c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_115b_0_60)
                 (not_occupied seg_O1_115c_0_34)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_115a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_115b_0_60))
                 (not_occupied seg_O1_115b_0_60)
                 (not (at-segment ?a seg_O1_115b_0_60))

                 (occupied seg_O1_115c_0_34)
                 (not (not_occupied seg_O1_115c_0_34))
                 (blocked seg_O1_115c_0_34 ?a)
                 (not (not_blocked seg_O1_115c_0_34 ?a))
                 (at-segment ?a seg_O1_115c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p115_0_76 ?a))
                 (not_blocked seg_p115_0_76 ?a)

                 (blocked seg_O1_115a_0_34 ?a)
                 (not (not_blocked seg_O1_115a_0_34 ?a))
                )
)

(:action move_seg_O1_115c_0_34_seg_O1_116a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_115c_0_34)
                 (not_occupied seg_O1_116a_0_34)
                 (not_blocked seg_O1_116a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_116a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_115c_0_34))
                 (not_occupied seg_O1_115c_0_34)
                 (not (at-segment ?a seg_O1_115c_0_34))

                 (occupied seg_O1_116a_0_34)
                 (not (not_occupied seg_O1_116a_0_34))
                 (blocked seg_O1_116a_0_34 ?a)
                 (not (not_blocked seg_O1_116a_0_34 ?a))
                 (at-segment ?a seg_O1_116a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_115a_0_34 ?a))
                 (not_blocked seg_O1_115a_0_34 ?a)
                 (not (blocked seg_O1_115b_0_60 ?a))
                 (not_blocked seg_O1_115b_0_60 ?a)

                )
)

(:action move_seg_O1_116a_0_34_seg_O1_115c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_116a_0_34)
                 (not_occupied seg_O1_115c_0_34)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_116a_0_34))
                 (not_occupied seg_O1_116a_0_34)
                 (not (at-segment ?a seg_O1_116a_0_34))

                 (occupied seg_O1_115c_0_34)
                 (not (not_occupied seg_O1_115c_0_34))
                 (blocked seg_O1_115c_0_34 ?a)
                 (not (not_blocked seg_O1_115c_0_34 ?a))
                 (at-segment ?a seg_O1_115c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_116b_0_60 ?a))
                 (not_blocked seg_O1_116b_0_60 ?a)
                 (not (blocked seg_O1_116c_0_34 ?a))
                 (not_blocked seg_O1_116c_0_34 ?a)

                )
)

(:action move_seg_O1_115c_0_34_seg_O1_115a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_115c_0_34)
                 (not_occupied seg_O1_115a_0_34)
                 (not_blocked seg_O1_115a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_115a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_115b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_115c_0_34))
                 (not_occupied seg_O1_115c_0_34)
                 (not (at-segment ?a seg_O1_115c_0_34))

                 (occupied seg_O1_115a_0_34)
                 (not (not_occupied seg_O1_115a_0_34))
                 (blocked seg_O1_115a_0_34 ?a)
                 (not (not_blocked seg_O1_115a_0_34 ?a))
                 (at-segment ?a seg_O1_115a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_116a_0_34 ?a))
                 (not_blocked seg_O1_116a_0_34 ?a)

                 (blocked seg_O1_115b_0_60 ?a)
                 (not (not_blocked seg_O1_115b_0_60 ?a))
                )
)

(:action move_seg_O1_115a_0_34_seg_O1_C3c_0_48_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_115a_0_34)
                 (not_occupied seg_O1_C3c_0_48)
                 (not_blocked seg_O1_C3c_0_48 airplane_CFBEG)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEWH)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEW3)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEW7)
                 (not_blocked seg_O1_C3c_0_48 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_115a_0_34))
                 (not_occupied seg_O1_115a_0_34)
                 (not (at-segment ?a seg_O1_115a_0_34))

                 (occupied seg_O1_C3c_0_48)
                 (not (not_occupied seg_O1_C3c_0_48))
                 (blocked seg_O1_C3c_0_48 ?a)
                 (not (not_blocked seg_O1_C3c_0_48 ?a))
                 (at-segment ?a seg_O1_C3c_0_48)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_115b_0_60 ?a))
                 (not_blocked seg_O1_115b_0_60 ?a)
                 (not (blocked seg_O1_115c_0_34 ?a))
                 (not_blocked seg_O1_115c_0_34 ?a)

                )
)

(:action move_seg_O1_C3c_0_48_seg_O1_C3a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C3c_0_48)
                 (not_occupied seg_O1_C3a_0_34)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C3a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C3a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C3b_0_60)
                 (not_occupied seg_O1_C3d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C3c_0_48))
                 (not_occupied seg_O1_C3c_0_48)
                 (not (at-segment ?a seg_O1_C3c_0_48))

                 (occupied seg_O1_C3a_0_34)
                 (not (not_occupied seg_O1_C3a_0_34))
                 (blocked seg_O1_C3a_0_34 ?a)
                 (not (not_blocked seg_O1_C3a_0_34 ?a))
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_115a_0_34 ?a))
                 (not_blocked seg_O1_115a_0_34 ?a)

                 (blocked seg_O1_C3b_0_60 ?a)
                 (not (not_blocked seg_O1_C3b_0_60 ?a))
                 (blocked seg_O1_C3d_0_60 ?a)
                 (not (not_blocked seg_O1_C3d_0_60 ?a))
                )
)

(:action move_seg_O1_C3a_0_34_seg_O1_C3c_0_48_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C3a_0_34)
                 (not_occupied seg_O1_C3c_0_48)
                 (not_blocked seg_O1_C3c_0_48 airplane_CFBEG)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEWH)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEW3)
                 (not_blocked seg_O1_C3c_0_48 airplane_DAEW7)
                 (not_blocked seg_O1_C3c_0_48 airplane_CFBE1)

                 (not_occupied seg_O1_C3b_0_60)
                 (not_occupied seg_O1_C3d_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C3a_0_34))
                 (not_occupied seg_O1_C3a_0_34)
                 (not (at-segment ?a seg_O1_C3a_0_34))

                 (occupied seg_O1_C3c_0_48)
                 (not (not_occupied seg_O1_C3c_0_48))
                 (blocked seg_O1_C3c_0_48 ?a)
                 (not (not_blocked seg_O1_C3c_0_48 ?a))
                 (at-segment ?a seg_O1_C3c_0_48)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_111c_0_34 ?a))
                 (not_blocked seg_O1_111c_0_34 ?a)

                 (blocked seg_O1_C3b_0_60 ?a)
                 (not (not_blocked seg_O1_C3b_0_60 ?a))
                 (blocked seg_O1_C3d_0_60 ?a)
                 (not (not_blocked seg_O1_C3d_0_60 ?a))
                )
)

(:action move_seg_O1_C3c_0_48_seg_O1_115a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C3c_0_48)
                 (not_occupied seg_O1_115a_0_34)
                 (not_blocked seg_O1_115a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_115a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_115a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C3c_0_48))
                 (not_occupied seg_O1_C3c_0_48)
                 (not (at-segment ?a seg_O1_C3c_0_48))

                 (occupied seg_O1_115a_0_34)
                 (not (not_occupied seg_O1_115a_0_34))
                 (blocked seg_O1_115a_0_34 ?a)
                 (not (not_blocked seg_O1_115a_0_34 ?a))
                 (at-segment ?a seg_O1_115a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C3a_0_34 ?a))
                 (not_blocked seg_O1_C3a_0_34 ?a)
                 (not (blocked seg_O1_C3b_0_60 ?a))
                 (not_blocked seg_O1_C3b_0_60 ?a)
                 (not (blocked seg_O1_C3d_0_60 ?a))
                 (not_blocked seg_O1_C3d_0_60 ?a)

                )
)

(:action move_seg_O1_115a_0_34_seg_O1_115b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_115a_0_34)
                 (not_occupied seg_O1_115b_0_60)
                 (not_blocked seg_O1_115b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_115b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_115b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_115c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_115a_0_34))
                 (not_occupied seg_O1_115a_0_34)
                 (not (at-segment ?a seg_O1_115a_0_34))

                 (occupied seg_O1_115b_0_60)
                 (not (not_occupied seg_O1_115b_0_60))
                 (blocked seg_O1_115b_0_60 ?a)
                 (not (not_blocked seg_O1_115b_0_60 ?a))
                 (at-segment ?a seg_O1_115b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C3c_0_48 ?a))
                 (not_blocked seg_O1_C3c_0_48 ?a)

                 (blocked seg_O1_115c_0_34 ?a)
                 (not (not_blocked seg_O1_115c_0_34 ?a))
                )
)

(:action move_seg_O1_115b_0_60_seg_p115_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_115b_0_60)
                 (not_occupied seg_p115_0_76)
                 (not_blocked seg_p115_0_76 airplane_CFBEG)
                 (not_blocked seg_p115_0_76 airplane_DAEWH)
                 (not_blocked seg_p115_0_76 airplane_DAEW3)
                 (not_blocked seg_p115_0_76 airplane_DAEW7)
                 (not_blocked seg_p115_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_115b_0_60))
                 (not_occupied seg_O1_115b_0_60)
                 (not (at-segment ?a seg_O1_115b_0_60))

                 (occupied seg_p115_0_76)
                 (not (not_occupied seg_p115_0_76))
                 (blocked seg_p115_0_76 ?a)
                 (not (not_blocked seg_p115_0_76 ?a))
                 (at-segment ?a seg_p115_0_76)

                 (not (blocked seg_O1_115a_0_34 ?a))
                 (not_blocked seg_O1_115a_0_34 ?a)
                 (not (blocked seg_O1_115c_0_34 ?a))
                 (not_blocked seg_O1_115c_0_34 ?a)

                )
)

(:action move_seg_p116_0_76_seg_O1_116b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p116_0_76)
                 (not_occupied seg_O1_116b_0_60)
                 (not_blocked seg_O1_116b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_116b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p116_0_76))
                 (not_occupied seg_p116_0_76)
                 (not (at-segment ?a seg_p116_0_76))

                 (occupied seg_O1_116b_0_60)
                 (not (not_occupied seg_O1_116b_0_60))
                 (blocked seg_O1_116b_0_60 ?a)
                 (not (not_blocked seg_O1_116b_0_60 ?a))
                 (at-segment ?a seg_O1_116b_0_60)


                )
)

(:action move_seg_O1_116b_0_60_seg_O1_116c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_116b_0_60)
                 (not_occupied seg_O1_116c_0_34)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_116a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_116b_0_60))
                 (not_occupied seg_O1_116b_0_60)
                 (not (at-segment ?a seg_O1_116b_0_60))

                 (occupied seg_O1_116c_0_34)
                 (not (not_occupied seg_O1_116c_0_34))
                 (blocked seg_O1_116c_0_34 ?a)
                 (not (not_blocked seg_O1_116c_0_34 ?a))
                 (at-segment ?a seg_O1_116c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p116_0_76 ?a))
                 (not_blocked seg_p116_0_76 ?a)

                 (blocked seg_O1_116a_0_34 ?a)
                 (not (not_blocked seg_O1_116a_0_34 ?a))
                )
)

(:action move_seg_O1_116c_0_34_seg_O1_117a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_116c_0_34)
                 (not_occupied seg_O1_117a_0_34)
                 (not_blocked seg_O1_117a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_117a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_116c_0_34))
                 (not_occupied seg_O1_116c_0_34)
                 (not (at-segment ?a seg_O1_116c_0_34))

                 (occupied seg_O1_117a_0_34)
                 (not (not_occupied seg_O1_117a_0_34))
                 (blocked seg_O1_117a_0_34 ?a)
                 (not (not_blocked seg_O1_117a_0_34 ?a))
                 (at-segment ?a seg_O1_117a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_116a_0_34 ?a))
                 (not_blocked seg_O1_116a_0_34 ?a)
                 (not (blocked seg_O1_116b_0_60 ?a))
                 (not_blocked seg_O1_116b_0_60 ?a)

                )
)

(:action move_seg_O1_117a_0_34_seg_O1_116c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_117a_0_34)
                 (not_occupied seg_O1_116c_0_34)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_117a_0_34))
                 (not_occupied seg_O1_117a_0_34)
                 (not (at-segment ?a seg_O1_117a_0_34))

                 (occupied seg_O1_116c_0_34)
                 (not (not_occupied seg_O1_116c_0_34))
                 (blocked seg_O1_116c_0_34 ?a)
                 (not (not_blocked seg_O1_116c_0_34 ?a))
                 (at-segment ?a seg_O1_116c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_117b_0_60 ?a))
                 (not_blocked seg_O1_117b_0_60 ?a)
                 (not (blocked seg_O1_117c_0_34 ?a))
                 (not_blocked seg_O1_117c_0_34 ?a)

                )
)

(:action move_seg_O1_116c_0_34_seg_O1_116a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_116c_0_34)
                 (not_occupied seg_O1_116a_0_34)
                 (not_blocked seg_O1_116a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_116a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_116a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_116b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_116c_0_34))
                 (not_occupied seg_O1_116c_0_34)
                 (not (at-segment ?a seg_O1_116c_0_34))

                 (occupied seg_O1_116a_0_34)
                 (not (not_occupied seg_O1_116a_0_34))
                 (blocked seg_O1_116a_0_34 ?a)
                 (not (not_blocked seg_O1_116a_0_34 ?a))
                 (at-segment ?a seg_O1_116a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_117a_0_34 ?a))
                 (not_blocked seg_O1_117a_0_34 ?a)

                 (blocked seg_O1_116b_0_60 ?a)
                 (not (not_blocked seg_O1_116b_0_60 ?a))
                )
)

(:action move_seg_O1_115a_0_34_seg_O1_115c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_115a_0_34)
                 (not_occupied seg_O1_115c_0_34)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_115c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_115c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_115b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_115a_0_34))
                 (not_occupied seg_O1_115a_0_34)
                 (not (at-segment ?a seg_O1_115a_0_34))

                 (occupied seg_O1_115c_0_34)
                 (not (not_occupied seg_O1_115c_0_34))
                 (blocked seg_O1_115c_0_34 ?a)
                 (not (not_blocked seg_O1_115c_0_34 ?a))
                 (at-segment ?a seg_O1_115c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C3c_0_48 ?a))
                 (not_blocked seg_O1_C3c_0_48 ?a)

                 (blocked seg_O1_115b_0_60 ?a)
                 (not (not_blocked seg_O1_115b_0_60 ?a))
                )
)

(:action move_seg_O1_116a_0_34_seg_O1_116b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_116a_0_34)
                 (not_occupied seg_O1_116b_0_60)
                 (not_blocked seg_O1_116b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_116b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_116b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_116c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_116a_0_34))
                 (not_occupied seg_O1_116a_0_34)
                 (not (at-segment ?a seg_O1_116a_0_34))

                 (occupied seg_O1_116b_0_60)
                 (not (not_occupied seg_O1_116b_0_60))
                 (blocked seg_O1_116b_0_60 ?a)
                 (not (not_blocked seg_O1_116b_0_60 ?a))
                 (at-segment ?a seg_O1_116b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_115c_0_34 ?a))
                 (not_blocked seg_O1_115c_0_34 ?a)

                 (blocked seg_O1_116c_0_34 ?a)
                 (not (not_blocked seg_O1_116c_0_34 ?a))
                )
)

(:action move_seg_O1_116b_0_60_seg_p116_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_116b_0_60)
                 (not_occupied seg_p116_0_76)
                 (not_blocked seg_p116_0_76 airplane_CFBEG)
                 (not_blocked seg_p116_0_76 airplane_DAEWH)
                 (not_blocked seg_p116_0_76 airplane_DAEW3)
                 (not_blocked seg_p116_0_76 airplane_DAEW7)
                 (not_blocked seg_p116_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_116b_0_60))
                 (not_occupied seg_O1_116b_0_60)
                 (not (at-segment ?a seg_O1_116b_0_60))

                 (occupied seg_p116_0_76)
                 (not (not_occupied seg_p116_0_76))
                 (blocked seg_p116_0_76 ?a)
                 (not (not_blocked seg_p116_0_76 ?a))
                 (at-segment ?a seg_p116_0_76)

                 (not (blocked seg_O1_116a_0_34 ?a))
                 (not_blocked seg_O1_116a_0_34 ?a)
                 (not (blocked seg_O1_116c_0_34 ?a))
                 (not_blocked seg_O1_116c_0_34 ?a)

                )
)

(:action move_seg_p117_0_76_seg_O1_117b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p117_0_76)
                 (not_occupied seg_O1_117b_0_60)
                 (not_blocked seg_O1_117b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_117b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p117_0_76))
                 (not_occupied seg_p117_0_76)
                 (not (at-segment ?a seg_p117_0_76))

                 (occupied seg_O1_117b_0_60)
                 (not (not_occupied seg_O1_117b_0_60))
                 (blocked seg_O1_117b_0_60 ?a)
                 (not (not_blocked seg_O1_117b_0_60 ?a))
                 (at-segment ?a seg_O1_117b_0_60)


                )
)

(:action move_seg_O1_117b_0_60_seg_O1_117c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_117b_0_60)
                 (not_occupied seg_O1_117c_0_34)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_117a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_117b_0_60))
                 (not_occupied seg_O1_117b_0_60)
                 (not (at-segment ?a seg_O1_117b_0_60))

                 (occupied seg_O1_117c_0_34)
                 (not (not_occupied seg_O1_117c_0_34))
                 (blocked seg_O1_117c_0_34 ?a)
                 (not (not_blocked seg_O1_117c_0_34 ?a))
                 (at-segment ?a seg_O1_117c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p117_0_76 ?a))
                 (not_blocked seg_p117_0_76 ?a)

                 (blocked seg_O1_117a_0_34 ?a)
                 (not (not_blocked seg_O1_117a_0_34 ?a))
                )
)

(:action move_seg_O1_117c_0_34_seg_O1_118a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_117c_0_34)
                 (not_occupied seg_O1_118a_0_34)
                 (not_blocked seg_O1_118a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_117c_0_34))
                 (not_occupied seg_O1_117c_0_34)
                 (not (at-segment ?a seg_O1_117c_0_34))

                 (occupied seg_O1_118a_0_34)
                 (not (not_occupied seg_O1_118a_0_34))
                 (blocked seg_O1_118a_0_34 ?a)
                 (not (not_blocked seg_O1_118a_0_34 ?a))
                 (at-segment ?a seg_O1_118a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_117a_0_34 ?a))
                 (not_blocked seg_O1_117a_0_34 ?a)
                 (not (blocked seg_O1_117b_0_60 ?a))
                 (not_blocked seg_O1_117b_0_60 ?a)

                )
)

(:action move_seg_O1_118a_0_34_seg_O1_117c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_118a_0_34)
                 (not_occupied seg_O1_117c_0_34)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_118a_0_34))
                 (not_occupied seg_O1_118a_0_34)
                 (not (at-segment ?a seg_O1_118a_0_34))

                 (occupied seg_O1_117c_0_34)
                 (not (not_occupied seg_O1_117c_0_34))
                 (blocked seg_O1_117c_0_34 ?a)
                 (not (not_blocked seg_O1_117c_0_34 ?a))
                 (at-segment ?a seg_O1_117c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_118b_0_60 ?a))
                 (not_blocked seg_O1_118b_0_60 ?a)
                 (not (blocked seg_O1_118c_0_34 ?a))
                 (not_blocked seg_O1_118c_0_34 ?a)

                )
)

(:action move_seg_O1_117c_0_34_seg_O1_117a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_117c_0_34)
                 (not_occupied seg_O1_117a_0_34)
                 (not_blocked seg_O1_117a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_117a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_117a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_117b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_117c_0_34))
                 (not_occupied seg_O1_117c_0_34)
                 (not (at-segment ?a seg_O1_117c_0_34))

                 (occupied seg_O1_117a_0_34)
                 (not (not_occupied seg_O1_117a_0_34))
                 (blocked seg_O1_117a_0_34 ?a)
                 (not (not_blocked seg_O1_117a_0_34 ?a))
                 (at-segment ?a seg_O1_117a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_118a_0_34 ?a))
                 (not_blocked seg_O1_118a_0_34 ?a)

                 (blocked seg_O1_117b_0_60 ?a)
                 (not (not_blocked seg_O1_117b_0_60 ?a))
                )
)

(:action move_seg_O1_116a_0_34_seg_O1_116c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_116a_0_34)
                 (not_occupied seg_O1_116c_0_34)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_116c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_116c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_116b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_116a_0_34))
                 (not_occupied seg_O1_116a_0_34)
                 (not (at-segment ?a seg_O1_116a_0_34))

                 (occupied seg_O1_116c_0_34)
                 (not (not_occupied seg_O1_116c_0_34))
                 (blocked seg_O1_116c_0_34 ?a)
                 (not (not_blocked seg_O1_116c_0_34 ?a))
                 (at-segment ?a seg_O1_116c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_115c_0_34 ?a))
                 (not_blocked seg_O1_115c_0_34 ?a)

                 (blocked seg_O1_116b_0_60 ?a)
                 (not (not_blocked seg_O1_116b_0_60 ?a))
                )
)

(:action move_seg_O1_117a_0_34_seg_O1_117b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_117a_0_34)
                 (not_occupied seg_O1_117b_0_60)
                 (not_blocked seg_O1_117b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_117b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_117b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_117c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_117a_0_34))
                 (not_occupied seg_O1_117a_0_34)
                 (not (at-segment ?a seg_O1_117a_0_34))

                 (occupied seg_O1_117b_0_60)
                 (not (not_occupied seg_O1_117b_0_60))
                 (blocked seg_O1_117b_0_60 ?a)
                 (not (not_blocked seg_O1_117b_0_60 ?a))
                 (at-segment ?a seg_O1_117b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_116c_0_34 ?a))
                 (not_blocked seg_O1_116c_0_34 ?a)

                 (blocked seg_O1_117c_0_34 ?a)
                 (not (not_blocked seg_O1_117c_0_34 ?a))
                )
)

(:action move_seg_O1_117b_0_60_seg_p117_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_117b_0_60)
                 (not_occupied seg_p117_0_76)
                 (not_blocked seg_p117_0_76 airplane_CFBEG)
                 (not_blocked seg_p117_0_76 airplane_DAEWH)
                 (not_blocked seg_p117_0_76 airplane_DAEW3)
                 (not_blocked seg_p117_0_76 airplane_DAEW7)
                 (not_blocked seg_p117_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_117b_0_60))
                 (not_occupied seg_O1_117b_0_60)
                 (not (at-segment ?a seg_O1_117b_0_60))

                 (occupied seg_p117_0_76)
                 (not (not_occupied seg_p117_0_76))
                 (blocked seg_p117_0_76 ?a)
                 (not (not_blocked seg_p117_0_76 ?a))
                 (at-segment ?a seg_p117_0_76)

                 (not (blocked seg_O1_117a_0_34 ?a))
                 (not_blocked seg_O1_117a_0_34 ?a)
                 (not (blocked seg_O1_117c_0_34 ?a))
                 (not_blocked seg_O1_117c_0_34 ?a)

                )
)

(:action move_seg_p118_0_76_seg_O1_118b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p118_0_76)
                 (not_occupied seg_O1_118b_0_60)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p118_0_76))
                 (not_occupied seg_p118_0_76)
                 (not (at-segment ?a seg_p118_0_76))

                 (occupied seg_O1_118b_0_60)
                 (not (not_occupied seg_O1_118b_0_60))
                 (blocked seg_O1_118b_0_60 ?a)
                 (not (not_blocked seg_O1_118b_0_60 ?a))
                 (at-segment ?a seg_O1_118b_0_60)


                )
)

(:action move_seg_O1_118b_0_60_seg_O1_118c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_118b_0_60)
                 (not_occupied seg_O1_118c_0_34)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_118a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_118b_0_60))
                 (not_occupied seg_O1_118b_0_60)
                 (not (at-segment ?a seg_O1_118b_0_60))

                 (occupied seg_O1_118c_0_34)
                 (not (not_occupied seg_O1_118c_0_34))
                 (blocked seg_O1_118c_0_34 ?a)
                 (not (not_blocked seg_O1_118c_0_34 ?a))
                 (at-segment ?a seg_O1_118c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p118_0_76 ?a))
                 (not_blocked seg_p118_0_76 ?a)

                 (blocked seg_O1_118a_0_34 ?a)
                 (not (not_blocked seg_O1_118a_0_34 ?a))
                )
)

(:action move_seg_O1_118c_0_34_seg_O1_C4a_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_118c_0_34)
                 (not_occupied seg_O1_C4a_0_34)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_118c_0_34))
                 (not_occupied seg_O1_118c_0_34)
                 (not (at-segment ?a seg_O1_118c_0_34))

                 (occupied seg_O1_C4a_0_34)
                 (not (not_occupied seg_O1_C4a_0_34))
                 (blocked seg_O1_C4a_0_34 ?a)
                 (not (not_blocked seg_O1_C4a_0_34 ?a))
                 (at-segment ?a seg_O1_C4a_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_118a_0_34 ?a))
                 (not_blocked seg_O1_118a_0_34 ?a)
                 (not (blocked seg_O1_118b_0_60 ?a))
                 (not_blocked seg_O1_118b_0_60 ?a)

                )
)

(:action move_seg_O1_C4a_0_34_seg_O1_118c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C4a_0_34)
                 (not_occupied seg_O1_118c_0_34)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C4a_0_34))
                 (not_occupied seg_O1_C4a_0_34)
                 (not (at-segment ?a seg_O1_C4a_0_34))

                 (occupied seg_O1_118c_0_34)
                 (not (not_occupied seg_O1_118c_0_34))
                 (blocked seg_O1_118c_0_34 ?a)
                 (not (not_blocked seg_O1_118c_0_34 ?a))
                 (at-segment ?a seg_O1_118c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C4b_0_60 ?a))
                 (not_blocked seg_O1_C4b_0_60 ?a)
                 (not (blocked seg_O1_C4c_0_80 ?a))
                 (not_blocked seg_O1_C4c_0_80 ?a)

                )
)

(:action move_seg_O1_118c_0_34_seg_O1_118a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_118c_0_34)
                 (not_occupied seg_O1_118a_0_34)
                 (not_blocked seg_O1_118a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_118b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_118c_0_34))
                 (not_occupied seg_O1_118c_0_34)
                 (not (at-segment ?a seg_O1_118c_0_34))

                 (occupied seg_O1_118a_0_34)
                 (not (not_occupied seg_O1_118a_0_34))
                 (blocked seg_O1_118a_0_34 ?a)
                 (not (not_blocked seg_O1_118a_0_34 ?a))
                 (at-segment ?a seg_O1_118a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_C4a_0_34 ?a))
                 (not_blocked seg_O1_C4a_0_34 ?a)

                 (blocked seg_O1_118b_0_60 ?a)
                 (not (not_blocked seg_O1_118b_0_60 ?a))
                )
)

(:action move_seg_O1_117a_0_34_seg_O1_117c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_117a_0_34)
                 (not_occupied seg_O1_117c_0_34)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_117c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_117c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_117b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_117a_0_34))
                 (not_occupied seg_O1_117a_0_34)
                 (not (at-segment ?a seg_O1_117a_0_34))

                 (occupied seg_O1_117c_0_34)
                 (not (not_occupied seg_O1_117c_0_34))
                 (blocked seg_O1_117c_0_34 ?a)
                 (not (not_blocked seg_O1_117c_0_34 ?a))
                 (at-segment ?a seg_O1_117c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_116c_0_34 ?a))
                 (not_blocked seg_O1_116c_0_34 ?a)

                 (blocked seg_O1_117b_0_60 ?a)
                 (not (not_blocked seg_O1_117b_0_60 ?a))
                )
)

(:action move_seg_O1_118a_0_34_seg_O1_118b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_118a_0_34)
                 (not_occupied seg_O1_118b_0_60)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_118c_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_118a_0_34))
                 (not_occupied seg_O1_118a_0_34)
                 (not (at-segment ?a seg_O1_118a_0_34))

                 (occupied seg_O1_118b_0_60)
                 (not (not_occupied seg_O1_118b_0_60))
                 (blocked seg_O1_118b_0_60 ?a)
                 (not (not_blocked seg_O1_118b_0_60 ?a))
                 (at-segment ?a seg_O1_118b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_117c_0_34 ?a))
                 (not_blocked seg_O1_117c_0_34 ?a)

                 (blocked seg_O1_118c_0_34 ?a)
                 (not (not_blocked seg_O1_118c_0_34 ?a))
                )
)

(:action move_seg_O1_118b_0_60_seg_p118_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_118b_0_60)
                 (not_occupied seg_p118_0_76)
                 (not_blocked seg_p118_0_76 airplane_CFBEG)
                 (not_blocked seg_p118_0_76 airplane_DAEWH)
                 (not_blocked seg_p118_0_76 airplane_DAEW3)
                 (not_blocked seg_p118_0_76 airplane_DAEW7)
                 (not_blocked seg_p118_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_118b_0_60))
                 (not_occupied seg_O1_118b_0_60)
                 (not (at-segment ?a seg_O1_118b_0_60))

                 (occupied seg_p118_0_76)
                 (not (not_occupied seg_p118_0_76))
                 (blocked seg_p118_0_76 ?a)
                 (not (not_blocked seg_p118_0_76 ?a))
                 (at-segment ?a seg_p118_0_76)

                 (not (blocked seg_O1_118a_0_34 ?a))
                 (not_blocked seg_O1_118a_0_34 ?a)
                 (not (blocked seg_O1_118c_0_34 ?a))
                 (not_blocked seg_O1_118c_0_34 ?a)

                )
)

(:action move_seg_p119_0_76_seg_O1_C4b_0_60_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_p119_0_76)
                 (not_occupied seg_O1_C4b_0_60)
                 (not_blocked seg_O1_C4b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C4b_0_60 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_p119_0_76))
                 (not_occupied seg_p119_0_76)
                 (not (at-segment ?a seg_p119_0_76))

                 (occupied seg_O1_C4b_0_60)
                 (not (not_occupied seg_O1_C4b_0_60))
                 (blocked seg_O1_C4b_0_60 ?a)
                 (not (not_blocked seg_O1_C4b_0_60 ?a))
                 (at-segment ?a seg_O1_C4b_0_60)


                )
)

(:action move_seg_O1_C4b_0_60_seg_O1_C4c_0_80_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C4b_0_60)
                 (not_occupied seg_O1_C4c_0_80)
                 (not_blocked seg_O1_C4c_0_80 airplane_CFBEG)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEWH)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEW3)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEW7)
                 (not_blocked seg_O1_C4c_0_80 airplane_CFBE1)

                 (not_occupied seg_O1_C4a_0_34)
              )

 :effect        (and
                 (not (occupied seg_O1_C4b_0_60))
                 (not_occupied seg_O1_C4b_0_60)
                 (not (at-segment ?a seg_O1_C4b_0_60))

                 (occupied seg_O1_C4c_0_80)
                 (not (not_occupied seg_O1_C4c_0_80))
                 (blocked seg_O1_C4c_0_80 ?a)
                 (not (not_blocked seg_O1_C4c_0_80 ?a))
                 (at-segment ?a seg_O1_C4c_0_80)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_p119_0_76 ?a))
                 (not_blocked seg_p119_0_76 ?a)

                 (blocked seg_O1_C4a_0_34 ?a)
                 (not (not_blocked seg_O1_C4a_0_34 ?a))
                )
)

(:action move_seg_O1_C4c_0_80_seg_C4_S6a_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C4c_0_80)
                 (not_occupied seg_C4_S6a_0_80)
                 (not_blocked seg_C4_S6a_0_80 airplane_CFBEG)
                 (not_blocked seg_C4_S6a_0_80 airplane_DAEWH)
                 (not_blocked seg_C4_S6a_0_80 airplane_DAEW3)
                 (not_blocked seg_C4_S6a_0_80 airplane_DAEW7)
                 (not_blocked seg_C4_S6a_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C4c_0_80))
                 (not_occupied seg_O1_C4c_0_80)
                 (not (at-segment ?a seg_O1_C4c_0_80))

                 (occupied seg_C4_S6a_0_80)
                 (not (not_occupied seg_C4_S6a_0_80))
                 (blocked seg_C4_S6a_0_80 ?a)
                 (not (not_blocked seg_C4_S6a_0_80 ?a))
                 (at-segment ?a seg_C4_S6a_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_O1_C4a_0_34 ?a))
                 (not_blocked seg_O1_C4a_0_34 ?a)
                 (not (blocked seg_O1_C4b_0_60 ?a))
                 (not_blocked seg_O1_C4b_0_60 ?a)

                )
)

(:action move_seg_C4_S6a_0_80_seg_O1_C4c_0_80_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_C4_S6a_0_80)
                 (not_occupied seg_O1_C4c_0_80)
                 (not_blocked seg_O1_C4c_0_80 airplane_CFBEG)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEWH)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEW3)
                 (not_blocked seg_O1_C4c_0_80 airplane_DAEW7)
                 (not_blocked seg_O1_C4c_0_80 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_C4_S6a_0_80))
                 (not_occupied seg_C4_S6a_0_80)
                 (not (at-segment ?a seg_C4_S6a_0_80))

                 (occupied seg_O1_C4c_0_80)
                 (not (not_occupied seg_O1_C4c_0_80))
                 (blocked seg_O1_C4c_0_80 ?a)
                 (not (not_blocked seg_O1_C4c_0_80 ?a))
                 (at-segment ?a seg_O1_C4c_0_80)
                 (not (facing ?a south))
                 (facing ?a north)

                 (not (blocked seg_C4_S6c_0_60 ?a))
                 (not_blocked seg_C4_S6c_0_60 ?a)

                )
)

(:action move_seg_O1_C4c_0_80_seg_O1_C4a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C4c_0_80)
                 (not_occupied seg_O1_C4a_0_34)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_C4b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_C4c_0_80))
                 (not_occupied seg_O1_C4c_0_80)
                 (not (at-segment ?a seg_O1_C4c_0_80))

                 (occupied seg_O1_C4a_0_34)
                 (not (not_occupied seg_O1_C4a_0_34))
                 (blocked seg_O1_C4a_0_34 ?a)
                 (not (not_blocked seg_O1_C4a_0_34 ?a))
                 (at-segment ?a seg_O1_C4a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_C4_S6a_0_80 ?a))
                 (not_blocked seg_C4_S6a_0_80 ?a)

                 (blocked seg_O1_C4b_0_60 ?a)
                 (not (not_blocked seg_O1_C4b_0_60 ?a))
                )
)

(:action move_seg_O1_118a_0_34_seg_O1_118c_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_118a_0_34)
                 (not_occupied seg_O1_118c_0_34)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBE1)

                 (not_occupied seg_O1_118b_0_60)
              )

 :effect        (and
                 (not (occupied seg_O1_118a_0_34))
                 (not_occupied seg_O1_118a_0_34)
                 (not (at-segment ?a seg_O1_118a_0_34))

                 (occupied seg_O1_118c_0_34)
                 (not (not_occupied seg_O1_118c_0_34))
                 (blocked seg_O1_118c_0_34 ?a)
                 (not (not_blocked seg_O1_118c_0_34 ?a))
                 (at-segment ?a seg_O1_118c_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_117c_0_34 ?a))
                 (not_blocked seg_O1_117c_0_34 ?a)

                 (blocked seg_O1_118b_0_60 ?a)
                 (not (not_blocked seg_O1_118b_0_60 ?a))
                )
)

(:action move_seg_O1_C4a_0_34_seg_O1_C4b_0_60_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C4a_0_34)
                 (not_occupied seg_O1_C4b_0_60)
                 (not_blocked seg_O1_C4b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C4b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C4b_0_60 airplane_CFBE1)

                 (not_occupied seg_O1_C4c_0_80)
              )

 :effect        (and
                 (not (occupied seg_O1_C4a_0_34))
                 (not_occupied seg_O1_C4a_0_34)
                 (not (at-segment ?a seg_O1_C4a_0_34))

                 (occupied seg_O1_C4b_0_60)
                 (not (not_occupied seg_O1_C4b_0_60))
                 (blocked seg_O1_C4b_0_60 ?a)
                 (not (not_blocked seg_O1_C4b_0_60 ?a))
                 (at-segment ?a seg_O1_C4b_0_60)
                 (not (facing ?a north))
                 (facing ?a south)

                 (not (blocked seg_O1_118c_0_34 ?a))
                 (not_blocked seg_O1_118c_0_34 ?a)

                 (blocked seg_O1_C4c_0_80 ?a)
                 (not (not_blocked seg_O1_C4c_0_80 ?a))
                )
)

(:action move_seg_O1_C4b_0_60_seg_p119_0_76_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-moving ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C4b_0_60)
                 (not_occupied seg_p119_0_76)
                 (not_blocked seg_p119_0_76 airplane_CFBEG)
                 (not_blocked seg_p119_0_76 airplane_DAEWH)
                 (not_blocked seg_p119_0_76 airplane_DAEW3)
                 (not_blocked seg_p119_0_76 airplane_DAEW7)
                 (not_blocked seg_p119_0_76 airplane_CFBE1)

              )

 :effect        (and
                 (not (occupied seg_O1_C4b_0_60))
                 (not_occupied seg_O1_C4b_0_60)
                 (not (at-segment ?a seg_O1_C4b_0_60))

                 (occupied seg_p119_0_76)
                 (not (not_occupied seg_p119_0_76))
                 (blocked seg_p119_0_76 ?a)
                 (not (not_blocked seg_p119_0_76 ?a))
                 (at-segment ?a seg_p119_0_76)

                 (not (blocked seg_O1_C4a_0_34 ?a))
                 (not_blocked seg_O1_C4a_0_34 ?a)
                 (not (blocked seg_O1_C4c_0_80 ?a))
                 (not_blocked seg_O1_C4c_0_80 ?a)

                )
)

(:action pushback_seg_p101_0_76_seg_O1_C1a_0_60_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_p101_0_76)
                 (not_occupied seg_O1_C1a_0_60)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_C1a_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_C1a_0_60 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_p101_0_76))
                 (not_occupied seg_p101_0_76)
                 (not (blocked seg_p101_0_76 ?a))
                 (not_blocked seg_p101_0_76 ?a)
                 (not (at-segment ?a seg_p101_0_76))

                 (occupied seg_O1_C1a_0_60)
                 (not (not_occupied seg_O1_C1a_0_60))
                 (blocked seg_O1_C1a_0_60 ?a)
                 (not (not_blocked seg_O1_C1a_0_60 ?a))
                 (at-segment ?a seg_O1_C1a_0_60)

                )
)

(:action pushback_seg_O1_C1a_0_60_seg_O1_C1b_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_C1a_0_60)
                 (not_occupied seg_O1_C1b_0_34)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C1b_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C1b_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_C1a_0_60))
                 (not_occupied seg_O1_C1a_0_60)
                 (not (blocked seg_O1_C1a_0_60 ?a))
                 (not_blocked seg_O1_C1a_0_60 ?a)
                 (not (at-segment ?a seg_O1_C1a_0_60))

                 (occupied seg_O1_C1b_0_34)
                 (not (not_occupied seg_O1_C1b_0_34))
                 (blocked seg_O1_C1b_0_34 ?a)
                 (not (not_blocked seg_O1_C1b_0_34 ?a))
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                )
)

(:action pushback_seg_O1_C1b_0_34_seg_O1_102a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_C1b_0_34)
                 (not_occupied seg_O1_102a_0_34)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_102a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_102a_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_C1b_0_34))
                 (not_occupied seg_O1_C1b_0_34)
                 (not (blocked seg_O1_C1b_0_34 ?a))
                 (not_blocked seg_O1_C1b_0_34 ?a)
                 (not (at-segment ?a seg_O1_C1b_0_34))

                 (occupied seg_O1_102a_0_34)
                 (not (not_occupied seg_O1_102a_0_34))
                 (blocked seg_O1_102a_0_34 ?a)
                 (not (not_blocked seg_O1_102a_0_34 ?a))
                 (at-segment ?a seg_O1_102a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                )
)

(:action pushback_seg_p131_0_75_seg_O1_108d_0_45_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_p131_0_75)
                 (not_occupied seg_O1_108d_0_45)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBEG)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEWH)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW3)
                 (not_blocked seg_O1_108d_0_45 airplane_DAEW7)
                 (not_blocked seg_O1_108d_0_45 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_p131_0_75))
                 (not_occupied seg_p131_0_75)
                 (not (blocked seg_p131_0_75 ?a))
                 (not_blocked seg_p131_0_75 ?a)
                 (not (at-segment ?a seg_p131_0_75))

                 (occupied seg_O1_108d_0_45)
                 (not (not_occupied seg_O1_108d_0_45))
                 (blocked seg_O1_108d_0_45 ?a)
                 (not (not_blocked seg_O1_108d_0_45 ?a))
                 (at-segment ?a seg_O1_108d_0_45)

                )
)

(:action pushback_seg_O1_108d_0_45_seg_O1_108c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_108d_0_45)
                 (not_occupied seg_O1_108c_0_34)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_108c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_108c_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_108d_0_45))
                 (not_occupied seg_O1_108d_0_45)
                 (not (blocked seg_O1_108d_0_45 ?a))
                 (not_blocked seg_O1_108d_0_45 ?a)
                 (not (at-segment ?a seg_O1_108d_0_45))

                 (occupied seg_O1_108c_0_34)
                 (not (not_occupied seg_O1_108c_0_34))
                 (blocked seg_O1_108c_0_34 ?a)
                 (not (not_blocked seg_O1_108c_0_34 ?a))
                 (at-segment ?a seg_O1_108c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                )
)

(:action pushback_seg_O1_108c_0_34_seg_O1_109a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_108c_0_34)
                 (not_occupied seg_O1_109a_0_34)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_109a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_109a_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_108c_0_34))
                 (not_occupied seg_O1_108c_0_34)
                 (not (blocked seg_O1_108c_0_34 ?a))
                 (not_blocked seg_O1_108c_0_34 ?a)
                 (not (at-segment ?a seg_O1_108c_0_34))

                 (occupied seg_O1_109a_0_34)
                 (not (not_occupied seg_O1_109a_0_34))
                 (blocked seg_O1_109a_0_34 ?a)
                 (not (not_blocked seg_O1_109a_0_34 ?a))
                 (at-segment ?a seg_O1_109a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                )
)

(:action pushback_seg_p118_0_76_seg_O1_118b_0_60_south_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_p118_0_76)
                 (not_occupied seg_O1_118b_0_60)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBEG)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEWH)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW3)
                 (not_blocked seg_O1_118b_0_60 airplane_DAEW7)
                 (not_blocked seg_O1_118b_0_60 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_p118_0_76))
                 (not_occupied seg_p118_0_76)
                 (not (blocked seg_p118_0_76 ?a))
                 (not_blocked seg_p118_0_76 ?a)
                 (not (at-segment ?a seg_p118_0_76))

                 (occupied seg_O1_118b_0_60)
                 (not (not_occupied seg_O1_118b_0_60))
                 (blocked seg_O1_118b_0_60 ?a)
                 (not (not_blocked seg_O1_118b_0_60 ?a))
                 (at-segment ?a seg_O1_118b_0_60)

                )
)

(:action pushback_seg_O1_118b_0_60_seg_O1_118c_0_34_south_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a south)
                 (at-segment ?a seg_O1_118b_0_60)
                 (not_occupied seg_O1_118c_0_34)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_118c_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_118c_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_118b_0_60))
                 (not_occupied seg_O1_118b_0_60)
                 (not (blocked seg_O1_118b_0_60 ?a))
                 (not_blocked seg_O1_118b_0_60 ?a)
                 (not (at-segment ?a seg_O1_118b_0_60))

                 (occupied seg_O1_118c_0_34)
                 (not (not_occupied seg_O1_118c_0_34))
                 (blocked seg_O1_118c_0_34 ?a)
                 (not (not_blocked seg_O1_118c_0_34 ?a))
                 (at-segment ?a seg_O1_118c_0_34)
                 (not (facing ?a south))
                 (facing ?a north)

                )
)

(:action pushback_seg_O1_118c_0_34_seg_O1_C4a_0_34_north_south_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (has-type ?a medium)
                 (is-pushing ?a)
                 (facing ?a north)
                 (at-segment ?a seg_O1_118c_0_34)
                 (not_occupied seg_O1_C4a_0_34)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBEG)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEWH)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW3)
                 (not_blocked seg_O1_C4a_0_34 airplane_DAEW7)
                 (not_blocked seg_O1_C4a_0_34 airplane_CFBE1)
                )

 :effect        (and
                 (not (occupied seg_O1_118c_0_34))
                 (not_occupied seg_O1_118c_0_34)
                 (not (blocked seg_O1_118c_0_34 ?a))
                 (not_blocked seg_O1_118c_0_34 ?a)
                 (not (at-segment ?a seg_O1_118c_0_34))

                 (occupied seg_O1_C4a_0_34)
                 (not (not_occupied seg_O1_C4a_0_34))
                 (blocked seg_O1_C4a_0_34 ?a)
                 (not (not_blocked seg_O1_C4a_0_34 ?a))
                 (at-segment ?a seg_O1_C4a_0_34)
                 (not (facing ?a north))
                 (facing ?a south)

                )
)


(:action takeoff_seg_09l_0_80_north

 :parameters (?a - airplane)

 :precondition (and (at-segment ?a seg_09l_0_80)
                    (facing ?a north)
                    (is-moving ?a)
               )

 :effect (and (not (occupied seg_09l_0_80))
              (not_occupied seg_09l_0_80)
              (not (blocked seg_09l_0_80 ?a))
              (not_blocked seg_09l_0_80 ?a)
              (not (at-segment ?a seg_09l_0_80))
              (airborne ?a seg_09l_0_80)
              (not (is-moving ?a ))
              (not (blocked seg_08L_A9A10_0_1010 ?a))
              (not_blocked seg_08L_A9A10_0_1010 ?a)
         )
)

(:action takeoff_seg_08l_0_80_north

 :parameters (?a - airplane)

 :precondition (and (at-segment ?a seg_08l_0_80)
                    (facing ?a north)
                    (is-moving ?a)
               )

 :effect (and (not (occupied seg_08l_0_80))
              (not_occupied seg_08l_0_80)
              (not (blocked seg_08l_0_80 ?a))
              (not_blocked seg_08l_0_80 ?a)
              (not (at-segment ?a seg_08l_0_80))
              (airborne ?a seg_08l_0_80)
              (not (is-moving ?a ))
              (not (blocked seg_08L_A2A3_0_970 ?a))
              (not_blocked seg_08L_A2A3_0_970 ?a)
         )
)


(:action startup_seg_W1_C1a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1a_0_60)
                    (not_occupied seg_N1_0_108)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_0_108 ?a)
                    (not (not_blocked seg_N1_0_108 ?a))
         )
)
(:action startup_seg_W1_C1a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1a_0_60)
                    (not_occupied seg_W1_C1b_0_60)
                    (not_occupied seg_W1_C1c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1b_0_60 ?a)
                    (not (not_blocked seg_W1_C1b_0_60 ?a))
                    (blocked seg_W1_C1c_0_34 ?a)
                    (not (not_blocked seg_W1_C1c_0_34 ?a))
         )
)
(:action startup_seg_W1_C1b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1b_0_60)
                    (not_occupied seg_C1_n2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2c_0_60 ?a)
                    (not (not_blocked seg_C1_n2c_0_60 ?a))
         )
)
(:action startup_seg_W1_C1b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1b_0_60)
                    (not_occupied seg_W1_C1a_0_60)
                    (not_occupied seg_W1_C1c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1a_0_60 ?a)
                    (not (not_blocked seg_W1_C1a_0_60 ?a))
                    (blocked seg_W1_C1c_0_34 ?a)
                    (not (not_blocked seg_W1_C1c_0_34 ?a))
         )
)
(:action startup_seg_W1_C1c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1c_0_34)
                    (not_occupied seg_W1_141a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141a_0_34 ?a)
                    (not (not_blocked seg_W1_141a_0_34 ?a))
         )
)
(:action startup_seg_W1_C1c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C1c_0_34)
                    (not_occupied seg_W1_C1a_0_60)
                    (not_occupied seg_W1_C1b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1a_0_60 ?a)
                    (not (not_blocked seg_W1_C1a_0_60 ?a))
                    (blocked seg_W1_C1b_0_60 ?a)
                    (not (not_blocked seg_W1_C1b_0_60 ?a))
         )
)
(:action startup_seg_N1_0_108_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_0_108)
                    (not_occupied seg_W1_C1a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1a_0_60 ?a)
                    (not (not_blocked seg_W1_C1a_0_60 ?a))
         )
)
(:action startup_seg_N1_0_108_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N1_0_108)
                    (not_occupied seg_N_A3c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3c_0_60 ?a)
                    (not (not_blocked seg_N_A3c_0_60 ?a))
         )
)
(:action startup_seg_C1_n2c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2c_0_60)
                    (not_occupied seg_W1_C1b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1b_0_60 ?a)
                    (not (not_blocked seg_W1_C1b_0_60 ?a))
         )
)
(:action startup_seg_C1_n2c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2c_0_60)
                    (not_occupied seg_C1_n2a_0_60)
                    (not_occupied seg_C1_n2b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2a_0_60 ?a)
                    (not (not_blocked seg_C1_n2a_0_60 ?a))
                    (blocked seg_C1_n2b_0_80 ?a)
                    (not (not_blocked seg_C1_n2b_0_80 ?a))
         )
)
(:action startup_seg_W1_141a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141a_0_34)
                    (not_occupied seg_W1_C1c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C1c_0_34 ?a)
                    (not (not_blocked seg_W1_C1c_0_34 ?a))
         )
)
(:action startup_seg_W1_141a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141a_0_34)
                    (not_occupied seg_W1_141b_0_45)
                    (not_occupied seg_W1_141c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141b_0_45 ?a)
                    (not (not_blocked seg_W1_141b_0_45 ?a))
                    (blocked seg_W1_141c_0_34 ?a)
                    (not (not_blocked seg_W1_141c_0_34 ?a))
         )
)
(:action startup_seg_W1_141b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141b_0_45)
                    (not_occupied seg_p141_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p141_0_75 ?a)
                    (not (not_blocked seg_p141_0_75 ?a))
         )
)
(:action startup_seg_W1_141b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141b_0_45)
                    (not_occupied seg_W1_141a_0_34)
                    (not_occupied seg_W1_141c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141a_0_34 ?a)
                    (not (not_blocked seg_W1_141a_0_34 ?a))
                    (blocked seg_W1_141c_0_34 ?a)
                    (not (not_blocked seg_W1_141c_0_34 ?a))
         )
)
(:action startup_seg_W1_141c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141c_0_34)
                    (not_occupied seg_W1_142a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142a_0_34 ?a)
                    (not (not_blocked seg_W1_142a_0_34 ?a))
         )
)
(:action startup_seg_W1_141c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_141c_0_34)
                    (not_occupied seg_W1_141a_0_34)
                    (not_occupied seg_W1_141b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141a_0_34 ?a)
                    (not (not_blocked seg_W1_141a_0_34 ?a))
                    (blocked seg_W1_141b_0_45 ?a)
                    (not (not_blocked seg_W1_141b_0_45 ?a))
         )
)
(:action park_seg_p141_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p141_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p141_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p141_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p141_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p141_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_141b_0_45 ?a))
              (not_blocked seg_W1_141b_0_45 ?a)
         )
)
(:action startup_seg_p141_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p141_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p141_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p141_0_75)
                    (not_occupied seg_W1_141b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141b_0_45 ?a)
                    (not (not_blocked seg_W1_141b_0_45 ?a))
         )
)
(:action startup_seg_W1_142a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142a_0_34)
                    (not_occupied seg_W1_141c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_141c_0_34 ?a)
                    (not (not_blocked seg_W1_141c_0_34 ?a))
         )
)
(:action startup_seg_W1_142a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142a_0_34)
                    (not_occupied seg_W1_142b_0_45)
                    (not_occupied seg_W1_142c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142b_0_45 ?a)
                    (not (not_blocked seg_W1_142b_0_45 ?a))
                    (blocked seg_W1_142c_0_34 ?a)
                    (not (not_blocked seg_W1_142c_0_34 ?a))
         )
)
(:action startup_seg_W1_142b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142b_0_45)
                    (not_occupied seg_p142_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p142_0_75 ?a)
                    (not (not_blocked seg_p142_0_75 ?a))
         )
)
(:action startup_seg_W1_142b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142b_0_45)
                    (not_occupied seg_W1_142a_0_34)
                    (not_occupied seg_W1_142c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142a_0_34 ?a)
                    (not (not_blocked seg_W1_142a_0_34 ?a))
                    (blocked seg_W1_142c_0_34 ?a)
                    (not (not_blocked seg_W1_142c_0_34 ?a))
         )
)
(:action startup_seg_W1_142c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142c_0_34)
                    (not_occupied seg_W1_143a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143a_0_34 ?a)
                    (not (not_blocked seg_W1_143a_0_34 ?a))
         )
)
(:action startup_seg_W1_142c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_142c_0_34)
                    (not_occupied seg_W1_142a_0_34)
                    (not_occupied seg_W1_142b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142a_0_34 ?a)
                    (not (not_blocked seg_W1_142a_0_34 ?a))
                    (blocked seg_W1_142b_0_45 ?a)
                    (not (not_blocked seg_W1_142b_0_45 ?a))
         )
)
(:action park_seg_p142_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p142_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p142_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p142_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p142_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p142_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_142b_0_45 ?a))
              (not_blocked seg_W1_142b_0_45 ?a)
         )
)
(:action startup_seg_p142_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p142_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p142_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p142_0_75)
                    (not_occupied seg_W1_142b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142b_0_45 ?a)
                    (not (not_blocked seg_W1_142b_0_45 ?a))
         )
)
(:action startup_seg_W1_143a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143a_0_34)
                    (not_occupied seg_W1_142c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_142c_0_34 ?a)
                    (not (not_blocked seg_W1_142c_0_34 ?a))
         )
)
(:action startup_seg_W1_143a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143a_0_34)
                    (not_occupied seg_W1_143b_0_45)
                    (not_occupied seg_W1_143c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143b_0_45 ?a)
                    (not (not_blocked seg_W1_143b_0_45 ?a))
                    (blocked seg_W1_143c_0_60 ?a)
                    (not (not_blocked seg_W1_143c_0_60 ?a))
         )
)
(:action startup_seg_W1_143b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143b_0_45)
                    (not_occupied seg_p143_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p143_0_75 ?a)
                    (not (not_blocked seg_p143_0_75 ?a))
         )
)
(:action startup_seg_W1_143b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143b_0_45)
                    (not_occupied seg_W1_143a_0_34)
                    (not_occupied seg_W1_143c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143a_0_34 ?a)
                    (not (not_blocked seg_W1_143a_0_34 ?a))
                    (blocked seg_W1_143c_0_60 ?a)
                    (not (not_blocked seg_W1_143c_0_60 ?a))
         )
)
(:action startup_seg_W1_143c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143c_0_60)
                    (not_occupied seg_W1_C2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2a_0_60 ?a)
                    (not (not_blocked seg_W1_C2a_0_60 ?a))
         )
)
(:action startup_seg_W1_143c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_143c_0_60)
                    (not_occupied seg_W1_143a_0_34)
                    (not_occupied seg_W1_143b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143a_0_34 ?a)
                    (not (not_blocked seg_W1_143a_0_34 ?a))
                    (blocked seg_W1_143b_0_45 ?a)
                    (not (not_blocked seg_W1_143b_0_45 ?a))
         )
)
(:action park_seg_p143_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p143_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p143_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p143_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p143_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p143_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_143b_0_45 ?a))
              (not_blocked seg_W1_143b_0_45 ?a)
         )
)
(:action startup_seg_p143_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p143_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p143_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p143_0_75)
                    (not_occupied seg_W1_143b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143b_0_45 ?a)
                    (not (not_blocked seg_W1_143b_0_45 ?a))
         )
)
(:action startup_seg_W1_C2a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2a_0_60)
                    (not_occupied seg_W1_143c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_143c_0_60 ?a)
                    (not (not_blocked seg_W1_143c_0_60 ?a))
         )
)
(:action startup_seg_W1_C2a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2a_0_60)
                    (not_occupied seg_W1_C2b_0_60)
                    (not_occupied seg_W1_C2c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2b_0_60 ?a)
                    (not (not_blocked seg_W1_C2b_0_60 ?a))
                    (blocked seg_W1_C2c_0_34 ?a)
                    (not (not_blocked seg_W1_C2c_0_34 ?a))
         )
)
(:action startup_seg_W1_C2b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2b_0_60)
                    (not_occupied seg_C2_a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C2_a_0_80 ?a)
                    (not (not_blocked seg_C2_a_0_80 ?a))
         )
)
(:action startup_seg_W1_C2b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2b_0_60)
                    (not_occupied seg_W1_C2a_0_60)
                    (not_occupied seg_W1_C2c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2a_0_60 ?a)
                    (not (not_blocked seg_W1_C2a_0_60 ?a))
                    (blocked seg_W1_C2c_0_34 ?a)
                    (not (not_blocked seg_W1_C2c_0_34 ?a))
         )
)
(:action startup_seg_W1_C2c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2c_0_34)
                    (not_occupied seg_W1_151a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151a_0_34 ?a)
                    (not (not_blocked seg_W1_151a_0_34 ?a))
         )
)
(:action startup_seg_W1_C2c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C2c_0_34)
                    (not_occupied seg_W1_C2a_0_60)
                    (not_occupied seg_W1_C2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2a_0_60 ?a)
                    (not (not_blocked seg_W1_C2a_0_60 ?a))
                    (blocked seg_W1_C2b_0_60 ?a)
                    (not (not_blocked seg_W1_C2b_0_60 ?a))
         )
)
(:action startup_seg_C2_a_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C2_a_0_80)
                    (not_occupied seg_C2_b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C2_b_0_80 ?a)
                    (not (not_blocked seg_C2_b_0_80 ?a))
         )
)
(:action startup_seg_C2_a_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C2_a_0_80)
                    (not_occupied seg_W1_C2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2b_0_60 ?a)
                    (not (not_blocked seg_W1_C2b_0_60 ?a))
         )
)
(:action startup_seg_W1_151a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151a_0_34)
                    (not_occupied seg_W1_C2c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C2c_0_34 ?a)
                    (not (not_blocked seg_W1_C2c_0_34 ?a))
         )
)
(:action startup_seg_W1_151a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151a_0_34)
                    (not_occupied seg_W1_151b_0_45)
                    (not_occupied seg_W1_151c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151b_0_45 ?a)
                    (not (not_blocked seg_W1_151b_0_45 ?a))
                    (blocked seg_W1_151c_0_34 ?a)
                    (not (not_blocked seg_W1_151c_0_34 ?a))
         )
)
(:action startup_seg_W1_151b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151b_0_45)
                    (not_occupied seg_p151_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p151_0_75 ?a)
                    (not (not_blocked seg_p151_0_75 ?a))
         )
)
(:action startup_seg_W1_151b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151b_0_45)
                    (not_occupied seg_W1_151a_0_34)
                    (not_occupied seg_W1_151c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151a_0_34 ?a)
                    (not (not_blocked seg_W1_151a_0_34 ?a))
                    (blocked seg_W1_151c_0_34 ?a)
                    (not (not_blocked seg_W1_151c_0_34 ?a))
         )
)
(:action startup_seg_W1_151c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151c_0_34)
                    (not_occupied seg_W1_152a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152a_0_34 ?a)
                    (not (not_blocked seg_W1_152a_0_34 ?a))
         )
)
(:action startup_seg_W1_151c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_151c_0_34)
                    (not_occupied seg_W1_151a_0_34)
                    (not_occupied seg_W1_151b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151a_0_34 ?a)
                    (not (not_blocked seg_W1_151a_0_34 ?a))
                    (blocked seg_W1_151b_0_45 ?a)
                    (not (not_blocked seg_W1_151b_0_45 ?a))
         )
)
(:action park_seg_p151_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p151_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p151_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p151_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p151_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p151_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_151b_0_45 ?a))
              (not_blocked seg_W1_151b_0_45 ?a)
         )
)
(:action startup_seg_p151_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p151_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p151_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p151_0_75)
                    (not_occupied seg_W1_151b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151b_0_45 ?a)
                    (not (not_blocked seg_W1_151b_0_45 ?a))
         )
)
(:action startup_seg_W1_152a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152a_0_34)
                    (not_occupied seg_W1_151c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_151c_0_34 ?a)
                    (not (not_blocked seg_W1_151c_0_34 ?a))
         )
)
(:action startup_seg_W1_152a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152a_0_34)
                    (not_occupied seg_W1_152b_0_45)
                    (not_occupied seg_W1_152c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152b_0_45 ?a)
                    (not (not_blocked seg_W1_152b_0_45 ?a))
                    (blocked seg_W1_152c_0_34 ?a)
                    (not (not_blocked seg_W1_152c_0_34 ?a))
         )
)
(:action startup_seg_W1_152b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152b_0_45)
                    (not_occupied seg_p152_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p152_0_75 ?a)
                    (not (not_blocked seg_p152_0_75 ?a))
         )
)
(:action startup_seg_W1_152b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152b_0_45)
                    (not_occupied seg_W1_152a_0_34)
                    (not_occupied seg_W1_152c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152a_0_34 ?a)
                    (not (not_blocked seg_W1_152a_0_34 ?a))
                    (blocked seg_W1_152c_0_34 ?a)
                    (not (not_blocked seg_W1_152c_0_34 ?a))
         )
)
(:action startup_seg_W1_152c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152c_0_34)
                    (not_occupied seg_W1_153a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153a_0_34 ?a)
                    (not (not_blocked seg_W1_153a_0_34 ?a))
         )
)
(:action startup_seg_W1_152c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_152c_0_34)
                    (not_occupied seg_W1_152a_0_34)
                    (not_occupied seg_W1_152b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152a_0_34 ?a)
                    (not (not_blocked seg_W1_152a_0_34 ?a))
                    (blocked seg_W1_152b_0_45 ?a)
                    (not (not_blocked seg_W1_152b_0_45 ?a))
         )
)
(:action park_seg_p152_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p152_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p152_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p152_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p152_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p152_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_152b_0_45 ?a))
              (not_blocked seg_W1_152b_0_45 ?a)
         )
)
(:action startup_seg_p152_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p152_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p152_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p152_0_75)
                    (not_occupied seg_W1_152b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152b_0_45 ?a)
                    (not (not_blocked seg_W1_152b_0_45 ?a))
         )
)
(:action startup_seg_W1_153a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153a_0_34)
                    (not_occupied seg_W1_152c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_152c_0_34 ?a)
                    (not (not_blocked seg_W1_152c_0_34 ?a))
         )
)
(:action startup_seg_W1_153a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153a_0_34)
                    (not_occupied seg_W1_153b_0_45)
                    (not_occupied seg_W1_153c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153b_0_45 ?a)
                    (not (not_blocked seg_W1_153b_0_45 ?a))
                    (blocked seg_W1_153c_0_34 ?a)
                    (not (not_blocked seg_W1_153c_0_34 ?a))
         )
)
(:action startup_seg_W1_153b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153b_0_45)
                    (not_occupied seg_p153_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p153_0_75 ?a)
                    (not (not_blocked seg_p153_0_75 ?a))
         )
)
(:action startup_seg_W1_153b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153b_0_45)
                    (not_occupied seg_W1_153a_0_34)
                    (not_occupied seg_W1_153c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153a_0_34 ?a)
                    (not (not_blocked seg_W1_153a_0_34 ?a))
                    (blocked seg_W1_153c_0_34 ?a)
                    (not (not_blocked seg_W1_153c_0_34 ?a))
         )
)
(:action startup_seg_W1_153c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153c_0_34)
                    (not_occupied seg_W1_154a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154a_0_34 ?a)
                    (not (not_blocked seg_W1_154a_0_34 ?a))
         )
)
(:action startup_seg_W1_153c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_153c_0_34)
                    (not_occupied seg_W1_153a_0_34)
                    (not_occupied seg_W1_153b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153a_0_34 ?a)
                    (not (not_blocked seg_W1_153a_0_34 ?a))
                    (blocked seg_W1_153b_0_45 ?a)
                    (not (not_blocked seg_W1_153b_0_45 ?a))
         )
)
(:action park_seg_p153_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p153_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p153_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p153_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p153_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p153_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_153b_0_45 ?a))
              (not_blocked seg_W1_153b_0_45 ?a)
         )
)
(:action startup_seg_p153_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p153_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p153_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p153_0_75)
                    (not_occupied seg_W1_153b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153b_0_45 ?a)
                    (not (not_blocked seg_W1_153b_0_45 ?a))
         )
)
(:action startup_seg_W1_154a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154a_0_34)
                    (not_occupied seg_W1_153c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_153c_0_34 ?a)
                    (not (not_blocked seg_W1_153c_0_34 ?a))
         )
)
(:action startup_seg_W1_154a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154a_0_34)
                    (not_occupied seg_W1_154b_0_45)
                    (not_occupied seg_W1_154c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154b_0_45 ?a)
                    (not (not_blocked seg_W1_154b_0_45 ?a))
                    (blocked seg_W1_154c_0_34 ?a)
                    (not (not_blocked seg_W1_154c_0_34 ?a))
         )
)
(:action startup_seg_W1_154b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154b_0_45)
                    (not_occupied seg_p154_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p154_0_75 ?a)
                    (not (not_blocked seg_p154_0_75 ?a))
         )
)
(:action startup_seg_W1_154b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154b_0_45)
                    (not_occupied seg_W1_154a_0_34)
                    (not_occupied seg_W1_154c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154a_0_34 ?a)
                    (not (not_blocked seg_W1_154a_0_34 ?a))
                    (blocked seg_W1_154c_0_34 ?a)
                    (not (not_blocked seg_W1_154c_0_34 ?a))
         )
)
(:action startup_seg_W1_154c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154c_0_34)
                    (not_occupied seg_W1_C3a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3a_0_34 ?a)
                    (not (not_blocked seg_W1_C3a_0_34 ?a))
         )
)
(:action startup_seg_W1_154c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_154c_0_34)
                    (not_occupied seg_W1_154a_0_34)
                    (not_occupied seg_W1_154b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154a_0_34 ?a)
                    (not (not_blocked seg_W1_154a_0_34 ?a))
                    (blocked seg_W1_154b_0_45 ?a)
                    (not (not_blocked seg_W1_154b_0_45 ?a))
         )
)
(:action park_seg_p154_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p154_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p154_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p154_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p154_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p154_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_154b_0_45 ?a))
              (not_blocked seg_W1_154b_0_45 ?a)
         )
)
(:action startup_seg_p154_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p154_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p154_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p154_0_75)
                    (not_occupied seg_W1_154b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154b_0_45 ?a)
                    (not (not_blocked seg_W1_154b_0_45 ?a))
         )
)
(:action startup_seg_W1_C3a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3a_0_34)
                    (not_occupied seg_W1_154c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_154c_0_34 ?a)
                    (not (not_blocked seg_W1_154c_0_34 ?a))
         )
)
(:action startup_seg_W1_C3a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3a_0_34)
                    (not_occupied seg_W1_C3b_0_60)
                    (not_occupied seg_W1_C3c_0_48)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3b_0_60 ?a)
                    (not (not_blocked seg_W1_C3b_0_60 ?a))
                    (blocked seg_W1_C3c_0_48 ?a)
                    (not (not_blocked seg_W1_C3c_0_48 ?a))
         )
)
(:action startup_seg_W1_C3b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3b_0_60)
                    (not_occupied seg_C3_a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C3_a_0_80 ?a)
                    (not (not_blocked seg_C3_a_0_80 ?a))
         )
)
(:action startup_seg_W1_C3b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3b_0_60)
                    (not_occupied seg_W1_C3a_0_34)
                    (not_occupied seg_W1_C3c_0_48)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3a_0_34 ?a)
                    (not (not_blocked seg_W1_C3a_0_34 ?a))
                    (blocked seg_W1_C3c_0_48 ?a)
                    (not (not_blocked seg_W1_C3c_0_48 ?a))
         )
)
(:action startup_seg_W1_C3c_0_48_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3c_0_48)
                    (not_occupied seg_W1_161a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161a_0_34 ?a)
                    (not (not_blocked seg_W1_161a_0_34 ?a))
         )
)
(:action startup_seg_W1_C3c_0_48_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C3c_0_48)
                    (not_occupied seg_W1_C3a_0_34)
                    (not_occupied seg_W1_C3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3a_0_34 ?a)
                    (not (not_blocked seg_W1_C3a_0_34 ?a))
                    (blocked seg_W1_C3b_0_60 ?a)
                    (not (not_blocked seg_W1_C3b_0_60 ?a))
         )
)
(:action startup_seg_C3_a_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C3_a_0_80)
                    (not_occupied seg_C3_b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C3_b_0_80 ?a)
                    (not (not_blocked seg_C3_b_0_80 ?a))
         )
)
(:action startup_seg_C3_a_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C3_a_0_80)
                    (not_occupied seg_W1_C3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3b_0_60 ?a)
                    (not (not_blocked seg_W1_C3b_0_60 ?a))
         )
)
(:action startup_seg_W1_161a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161a_0_34)
                    (not_occupied seg_W1_C3c_0_48)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C3c_0_48 ?a)
                    (not (not_blocked seg_W1_C3c_0_48 ?a))
         )
)
(:action startup_seg_W1_161a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161a_0_34)
                    (not_occupied seg_W1_161b_0_45)
                    (not_occupied seg_W1_161c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161b_0_45 ?a)
                    (not (not_blocked seg_W1_161b_0_45 ?a))
                    (blocked seg_W1_161c_0_34 ?a)
                    (not (not_blocked seg_W1_161c_0_34 ?a))
         )
)
(:action startup_seg_W1_161b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161b_0_45)
                    (not_occupied seg_p161_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p161_0_75 ?a)
                    (not (not_blocked seg_p161_0_75 ?a))
         )
)
(:action startup_seg_W1_161b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161b_0_45)
                    (not_occupied seg_W1_161a_0_34)
                    (not_occupied seg_W1_161c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161a_0_34 ?a)
                    (not (not_blocked seg_W1_161a_0_34 ?a))
                    (blocked seg_W1_161c_0_34 ?a)
                    (not (not_blocked seg_W1_161c_0_34 ?a))
         )
)
(:action startup_seg_W1_161c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161c_0_34)
                    (not_occupied seg_W1_162a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162a_0_34 ?a)
                    (not (not_blocked seg_W1_162a_0_34 ?a))
         )
)
(:action startup_seg_W1_161c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_161c_0_34)
                    (not_occupied seg_W1_161a_0_34)
                    (not_occupied seg_W1_161b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161a_0_34 ?a)
                    (not (not_blocked seg_W1_161a_0_34 ?a))
                    (blocked seg_W1_161b_0_45 ?a)
                    (not (not_blocked seg_W1_161b_0_45 ?a))
         )
)
(:action park_seg_p161_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p161_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p161_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p161_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p161_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p161_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_161b_0_45 ?a))
              (not_blocked seg_W1_161b_0_45 ?a)
         )
)
(:action startup_seg_p161_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p161_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p161_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p161_0_75)
                    (not_occupied seg_W1_161b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161b_0_45 ?a)
                    (not (not_blocked seg_W1_161b_0_45 ?a))
         )
)
(:action startup_seg_W1_162a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162a_0_34)
                    (not_occupied seg_W1_161c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_161c_0_34 ?a)
                    (not (not_blocked seg_W1_161c_0_34 ?a))
         )
)
(:action startup_seg_W1_162a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162a_0_34)
                    (not_occupied seg_W1_162b_0_45)
                    (not_occupied seg_W1_162c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162b_0_45 ?a)
                    (not (not_blocked seg_W1_162b_0_45 ?a))
                    (blocked seg_W1_162c_0_34 ?a)
                    (not (not_blocked seg_W1_162c_0_34 ?a))
         )
)
(:action startup_seg_W1_162b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162b_0_45)
                    (not_occupied seg_p162_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p162_0_75 ?a)
                    (not (not_blocked seg_p162_0_75 ?a))
         )
)
(:action startup_seg_W1_162b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162b_0_45)
                    (not_occupied seg_W1_162a_0_34)
                    (not_occupied seg_W1_162c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162a_0_34 ?a)
                    (not (not_blocked seg_W1_162a_0_34 ?a))
                    (blocked seg_W1_162c_0_34 ?a)
                    (not (not_blocked seg_W1_162c_0_34 ?a))
         )
)
(:action startup_seg_W1_162c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162c_0_34)
                    (not_occupied seg_W1_163a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163a_0_34 ?a)
                    (not (not_blocked seg_W1_163a_0_34 ?a))
         )
)
(:action startup_seg_W1_162c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_162c_0_34)
                    (not_occupied seg_W1_162a_0_34)
                    (not_occupied seg_W1_162b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162a_0_34 ?a)
                    (not (not_blocked seg_W1_162a_0_34 ?a))
                    (blocked seg_W1_162b_0_45 ?a)
                    (not (not_blocked seg_W1_162b_0_45 ?a))
         )
)
(:action park_seg_p162_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p162_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p162_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p162_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p162_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p162_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_162b_0_45 ?a))
              (not_blocked seg_W1_162b_0_45 ?a)
         )
)
(:action startup_seg_p162_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p162_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p162_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p162_0_75)
                    (not_occupied seg_W1_162b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162b_0_45 ?a)
                    (not (not_blocked seg_W1_162b_0_45 ?a))
         )
)
(:action startup_seg_W1_163a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163a_0_34)
                    (not_occupied seg_W1_162c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_162c_0_34 ?a)
                    (not (not_blocked seg_W1_162c_0_34 ?a))
         )
)
(:action startup_seg_W1_163a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163a_0_34)
                    (not_occupied seg_W1_163b_0_45)
                    (not_occupied seg_W1_163c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163b_0_45 ?a)
                    (not (not_blocked seg_W1_163b_0_45 ?a))
                    (blocked seg_W1_163c_0_34 ?a)
                    (not (not_blocked seg_W1_163c_0_34 ?a))
         )
)
(:action startup_seg_W1_163b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163b_0_45)
                    (not_occupied seg_p163_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p163_0_75 ?a)
                    (not (not_blocked seg_p163_0_75 ?a))
         )
)
(:action startup_seg_W1_163b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163b_0_45)
                    (not_occupied seg_W1_163a_0_34)
                    (not_occupied seg_W1_163c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163a_0_34 ?a)
                    (not (not_blocked seg_W1_163a_0_34 ?a))
                    (blocked seg_W1_163c_0_34 ?a)
                    (not (not_blocked seg_W1_163c_0_34 ?a))
         )
)
(:action startup_seg_W1_163c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163c_0_34)
                    (not_occupied seg_W1_164a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164a_0_34 ?a)
                    (not (not_blocked seg_W1_164a_0_34 ?a))
         )
)
(:action startup_seg_W1_163c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_163c_0_34)
                    (not_occupied seg_W1_163a_0_34)
                    (not_occupied seg_W1_163b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163a_0_34 ?a)
                    (not (not_blocked seg_W1_163a_0_34 ?a))
                    (blocked seg_W1_163b_0_45 ?a)
                    (not (not_blocked seg_W1_163b_0_45 ?a))
         )
)
(:action park_seg_p163_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p163_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p163_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p163_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p163_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p163_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_163b_0_45 ?a))
              (not_blocked seg_W1_163b_0_45 ?a)
         )
)
(:action startup_seg_p163_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p163_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p163_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p163_0_75)
                    (not_occupied seg_W1_163b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163b_0_45 ?a)
                    (not (not_blocked seg_W1_163b_0_45 ?a))
         )
)
(:action startup_seg_W1_164a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164a_0_34)
                    (not_occupied seg_W1_163c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_163c_0_34 ?a)
                    (not (not_blocked seg_W1_163c_0_34 ?a))
         )
)
(:action startup_seg_W1_164a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164a_0_34)
                    (not_occupied seg_W1_164b_0_45)
                    (not_occupied seg_W1_164c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164b_0_45 ?a)
                    (not (not_blocked seg_W1_164b_0_45 ?a))
                    (blocked seg_W1_164c_0_34 ?a)
                    (not (not_blocked seg_W1_164c_0_34 ?a))
         )
)
(:action startup_seg_W1_164b_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164b_0_45)
                    (not_occupied seg_p164_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p164_0_75 ?a)
                    (not (not_blocked seg_p164_0_75 ?a))
         )
)
(:action startup_seg_W1_164b_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164b_0_45)
                    (not_occupied seg_W1_164a_0_34)
                    (not_occupied seg_W1_164c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164a_0_34 ?a)
                    (not (not_blocked seg_W1_164a_0_34 ?a))
                    (blocked seg_W1_164c_0_34 ?a)
                    (not (not_blocked seg_W1_164c_0_34 ?a))
         )
)
(:action startup_seg_W1_164c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164c_0_34)
                    (not_occupied seg_W1_C4a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C4a_0_34 ?a)
                    (not (not_blocked seg_W1_C4a_0_34 ?a))
         )
)
(:action startup_seg_W1_164c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_164c_0_34)
                    (not_occupied seg_W1_164a_0_34)
                    (not_occupied seg_W1_164b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164a_0_34 ?a)
                    (not (not_blocked seg_W1_164a_0_34 ?a))
                    (blocked seg_W1_164b_0_45 ?a)
                    (not (not_blocked seg_W1_164b_0_45 ?a))
         )
)
(:action park_seg_p164_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p164_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p164_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p164_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p164_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p164_0_75)
              (not (is-moving ?a))
              (not (blocked seg_W1_164b_0_45 ?a))
              (not_blocked seg_W1_164b_0_45 ?a)
         )
)
(:action startup_seg_p164_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p164_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p164_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p164_0_75)
                    (not_occupied seg_W1_164b_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164b_0_45 ?a)
                    (not (not_blocked seg_W1_164b_0_45 ?a))
         )
)
(:action startup_seg_W1_C4a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C4a_0_34)
                    (not_occupied seg_W1_164c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_164c_0_34 ?a)
                    (not (not_blocked seg_W1_164c_0_34 ?a))
         )
)
(:action startup_seg_W1_C4a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C4a_0_34)
                    (not_occupied seg_W1_C4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C4b_0_60 ?a)
                    (not (not_blocked seg_W1_C4b_0_60 ?a))
         )
)
(:action startup_seg_W1_C4b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C4b_0_60)
                    (not_occupied seg_C4_S6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_S6c_0_60 ?a)
                    (not (not_blocked seg_C4_S6c_0_60 ?a))
         )
)
(:action startup_seg_W1_C4b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_W1_C4b_0_60)
                    (not_occupied seg_W1_C4a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C4a_0_34 ?a)
                    (not (not_blocked seg_W1_C4a_0_34 ?a))
         )
)
(:action startup_seg_C4_S6c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_S6c_0_60)
                    (not_occupied seg_W1_C4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_W1_C4b_0_60 ?a)
                    (not (not_blocked seg_W1_C4b_0_60 ?a))
         )
)
(:action startup_seg_C4_S6c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_S6c_0_60)
                    (not_occupied seg_C4_S6a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_S6a_0_80 ?a)
                    (not (not_blocked seg_C4_S6a_0_80 ?a))
         )
)
(:action startup_seg_O1_C1a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1a_0_60)
                    (not_occupied seg_p101_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p101_0_76 ?a)
                    (not (not_blocked seg_p101_0_76 ?a))
         )
)
(:action startup_seg_O1_C1a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1a_0_60)
                    (not_occupied seg_O1_C1b_0_34)
                    (not_occupied seg_O1_C1c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1b_0_34 ?a)
                    (not (not_blocked seg_O1_C1b_0_34 ?a))
                    (blocked seg_O1_C1c_0_80 ?a)
                    (not (not_blocked seg_O1_C1c_0_80 ?a))
         )
)
(:action startup_seg_O1_C1b_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1b_0_34)
                    (not_occupied seg_O1_102a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102a_0_34 ?a)
                    (not (not_blocked seg_O1_102a_0_34 ?a))
         )
)
(:action startup_seg_O1_C1b_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1b_0_34)
                    (not_occupied seg_O1_C1a_0_60)
                    (not_occupied seg_O1_C1c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1a_0_60 ?a)
                    (not (not_blocked seg_O1_C1a_0_60 ?a))
                    (blocked seg_O1_C1c_0_80 ?a)
                    (not (not_blocked seg_O1_C1c_0_80 ?a))
         )
)
(:action startup_seg_O1_C1c_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1c_0_80)
                    (not_occupied seg_C1_n2b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2b_0_80 ?a)
                    (not (not_blocked seg_C1_n2b_0_80 ?a))
         )
)
(:action startup_seg_O1_C1c_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C1c_0_80)
                    (not_occupied seg_O1_C1a_0_60)
                    (not_occupied seg_O1_C1b_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1a_0_60 ?a)
                    (not (not_blocked seg_O1_C1a_0_60 ?a))
                    (blocked seg_O1_C1b_0_34 ?a)
                    (not (not_blocked seg_O1_C1b_0_34 ?a))
         )
)
(:action park_seg_p101_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p101_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p101_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p101_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p101_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p101_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_C1a_0_60 ?a))
              (not_blocked seg_O1_C1a_0_60 ?a)
         )
)
(:action startup_seg_p101_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p101_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p101_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p101_0_76)
                    (not_occupied seg_O1_C1a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1a_0_60 ?a)
                    (not (not_blocked seg_O1_C1a_0_60 ?a))
         )
)
(:action startup_seg_O1_102a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102a_0_34)
                    (not_occupied seg_O1_C1b_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1b_0_34 ?a)
                    (not (not_blocked seg_O1_C1b_0_34 ?a))
         )
)
(:action startup_seg_O1_102a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102a_0_34)
                    (not_occupied seg_O1_102b_0_60)
                    (not_occupied seg_O1_102c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102b_0_60 ?a)
                    (not (not_blocked seg_O1_102b_0_60 ?a))
                    (blocked seg_O1_102c_0_34 ?a)
                    (not (not_blocked seg_O1_102c_0_34 ?a))
         )
)
(:action startup_seg_C1_n2b_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2b_0_80)
                    (not_occupied seg_O1_C1c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C1c_0_80 ?a)
                    (not (not_blocked seg_O1_C1c_0_80 ?a))
         )
)
(:action startup_seg_C1_n2b_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2b_0_80)
                    (not_occupied seg_C1_n2a_0_60)
                    (not_occupied seg_C1_n2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2a_0_60 ?a)
                    (not (not_blocked seg_C1_n2a_0_60 ?a))
                    (blocked seg_C1_n2c_0_60 ?a)
                    (not (not_blocked seg_C1_n2c_0_60 ?a))
         )
)
(:action startup_seg_O1_102b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102b_0_60)
                    (not_occupied seg_p102_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p102_0_76 ?a)
                    (not (not_blocked seg_p102_0_76 ?a))
         )
)
(:action startup_seg_O1_102b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102b_0_60)
                    (not_occupied seg_O1_102a_0_34)
                    (not_occupied seg_O1_102c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102a_0_34 ?a)
                    (not (not_blocked seg_O1_102a_0_34 ?a))
                    (blocked seg_O1_102c_0_34 ?a)
                    (not (not_blocked seg_O1_102c_0_34 ?a))
         )
)
(:action startup_seg_O1_102c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102c_0_34)
                    (not_occupied seg_O1_103a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103a_0_34 ?a)
                    (not (not_blocked seg_O1_103a_0_34 ?a))
         )
)
(:action startup_seg_O1_102c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_102c_0_34)
                    (not_occupied seg_O1_102a_0_34)
                    (not_occupied seg_O1_102b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102a_0_34 ?a)
                    (not (not_blocked seg_O1_102a_0_34 ?a))
                    (blocked seg_O1_102b_0_60 ?a)
                    (not (not_blocked seg_O1_102b_0_60 ?a))
         )
)
(:action park_seg_p102_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p102_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p102_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p102_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p102_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p102_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_102b_0_60 ?a))
              (not_blocked seg_O1_102b_0_60 ?a)
         )
)
(:action startup_seg_p102_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p102_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p102_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p102_0_76)
                    (not_occupied seg_O1_102b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102b_0_60 ?a)
                    (not (not_blocked seg_O1_102b_0_60 ?a))
         )
)
(:action startup_seg_O1_103a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103a_0_34)
                    (not_occupied seg_O1_102c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_102c_0_34 ?a)
                    (not (not_blocked seg_O1_102c_0_34 ?a))
         )
)
(:action startup_seg_O1_103a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103a_0_34)
                    (not_occupied seg_O1_103b_0_60)
                    (not_occupied seg_O1_103c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103b_0_60 ?a)
                    (not (not_blocked seg_O1_103b_0_60 ?a))
                    (blocked seg_O1_103c_0_34 ?a)
                    (not (not_blocked seg_O1_103c_0_34 ?a))
         )
)
(:action startup_seg_O1_103b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103b_0_60)
                    (not_occupied seg_p103_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p103_0_76 ?a)
                    (not (not_blocked seg_p103_0_76 ?a))
         )
)
(:action startup_seg_O1_103b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103b_0_60)
                    (not_occupied seg_O1_103a_0_34)
                    (not_occupied seg_O1_103c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103a_0_34 ?a)
                    (not (not_blocked seg_O1_103a_0_34 ?a))
                    (blocked seg_O1_103c_0_34 ?a)
                    (not (not_blocked seg_O1_103c_0_34 ?a))
         )
)
(:action startup_seg_O1_103c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103c_0_34)
                    (not_occupied seg_O1_104a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104a_0_34 ?a)
                    (not (not_blocked seg_O1_104a_0_34 ?a))
         )
)
(:action startup_seg_O1_103c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_103c_0_34)
                    (not_occupied seg_O1_103a_0_34)
                    (not_occupied seg_O1_103b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103a_0_34 ?a)
                    (not (not_blocked seg_O1_103a_0_34 ?a))
                    (blocked seg_O1_103b_0_60 ?a)
                    (not (not_blocked seg_O1_103b_0_60 ?a))
         )
)
(:action park_seg_p103_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p103_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p103_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p103_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p103_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p103_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_103b_0_60 ?a))
              (not_blocked seg_O1_103b_0_60 ?a)
         )
)
(:action startup_seg_p103_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p103_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p103_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p103_0_76)
                    (not_occupied seg_O1_103b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103b_0_60 ?a)
                    (not (not_blocked seg_O1_103b_0_60 ?a))
         )
)
(:action startup_seg_O1_104a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104a_0_34)
                    (not_occupied seg_O1_103c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_103c_0_34 ?a)
                    (not (not_blocked seg_O1_103c_0_34 ?a))
         )
)
(:action startup_seg_O1_104a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104a_0_34)
                    (not_occupied seg_O1_104b_0_60)
                    (not_occupied seg_O1_104c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104b_0_60 ?a)
                    (not (not_blocked seg_O1_104b_0_60 ?a))
                    (blocked seg_O1_104c_0_60 ?a)
                    (not (not_blocked seg_O1_104c_0_60 ?a))
         )
)
(:action startup_seg_O1_104b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104b_0_60)
                    (not_occupied seg_p104_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p104_0_76 ?a)
                    (not (not_blocked seg_p104_0_76 ?a))
         )
)
(:action startup_seg_O1_104b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104b_0_60)
                    (not_occupied seg_O1_104a_0_34)
                    (not_occupied seg_O1_104c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104a_0_34 ?a)
                    (not (not_blocked seg_O1_104a_0_34 ?a))
                    (blocked seg_O1_104c_0_60 ?a)
                    (not (not_blocked seg_O1_104c_0_60 ?a))
         )
)
(:action startup_seg_O1_104c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104c_0_60)
                    (not_occupied seg_O1_C2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2a_0_60 ?a)
                    (not (not_blocked seg_O1_C2a_0_60 ?a))
         )
)
(:action startup_seg_O1_104c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_104c_0_60)
                    (not_occupied seg_O1_104a_0_34)
                    (not_occupied seg_O1_104b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104a_0_34 ?a)
                    (not (not_blocked seg_O1_104a_0_34 ?a))
                    (blocked seg_O1_104b_0_60 ?a)
                    (not (not_blocked seg_O1_104b_0_60 ?a))
         )
)
(:action park_seg_p104_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p104_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p104_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p104_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p104_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p104_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_104b_0_60 ?a))
              (not_blocked seg_O1_104b_0_60 ?a)
         )
)
(:action startup_seg_p104_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p104_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p104_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p104_0_76)
                    (not_occupied seg_O1_104b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104b_0_60 ?a)
                    (not (not_blocked seg_O1_104b_0_60 ?a))
         )
)
(:action startup_seg_O1_C2a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2a_0_60)
                    (not_occupied seg_O1_104c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_104c_0_60 ?a)
                    (not (not_blocked seg_O1_104c_0_60 ?a))
         )
)
(:action startup_seg_O1_C2a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2a_0_60)
                    (not_occupied seg_O1_C2b_0_60)
                    (not_occupied seg_O1_C2c_0_34)
                    (not_occupied seg_O1_C2d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2b_0_60 ?a)
                    (not (not_blocked seg_O1_C2b_0_60 ?a))
                    (blocked seg_O1_C2c_0_34 ?a)
                    (not (not_blocked seg_O1_C2c_0_34 ?a))
                    (blocked seg_O1_C2d_0_60 ?a)
                    (not (not_blocked seg_O1_C2d_0_60 ?a))
         )
)
(:action startup_seg_O1_C2b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2b_0_60)
                    (not_occupied seg_p107_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p107_0_76 ?a)
                    (not (not_blocked seg_p107_0_76 ?a))
         )
)
(:action startup_seg_O1_C2b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2b_0_60)
                    (not_occupied seg_O1_C2a_0_60)
                    (not_occupied seg_O1_C2c_0_34)
                    (not_occupied seg_O1_C2d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2a_0_60 ?a)
                    (not (not_blocked seg_O1_C2a_0_60 ?a))
                    (blocked seg_O1_C2c_0_34 ?a)
                    (not (not_blocked seg_O1_C2c_0_34 ?a))
                    (blocked seg_O1_C2d_0_60 ?a)
                    (not (not_blocked seg_O1_C2d_0_60 ?a))
         )
)
(:action startup_seg_O1_C2c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2c_0_34)
                    (not_occupied seg_O1_108a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108a_0_34 ?a)
                    (not (not_blocked seg_O1_108a_0_34 ?a))
         )
)
(:action startup_seg_O1_C2c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2c_0_34)
                    (not_occupied seg_O1_C2a_0_60)
                    (not_occupied seg_O1_C2b_0_60)
                    (not_occupied seg_O1_C2d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2a_0_60 ?a)
                    (not (not_blocked seg_O1_C2a_0_60 ?a))
                    (blocked seg_O1_C2b_0_60 ?a)
                    (not (not_blocked seg_O1_C2b_0_60 ?a))
                    (blocked seg_O1_C2d_0_60 ?a)
                    (not (not_blocked seg_O1_C2d_0_60 ?a))
         )
)
(:action startup_seg_O1_C2d_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2d_0_60)
                    (not_occupied seg_C2_b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C2_b_0_80 ?a)
                    (not (not_blocked seg_C2_b_0_80 ?a))
         )
)
(:action startup_seg_O1_C2d_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C2d_0_60)
                    (not_occupied seg_O1_C2a_0_60)
                    (not_occupied seg_O1_C2b_0_60)
                    (not_occupied seg_O1_C2c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2a_0_60 ?a)
                    (not (not_blocked seg_O1_C2a_0_60 ?a))
                    (blocked seg_O1_C2b_0_60 ?a)
                    (not (not_blocked seg_O1_C2b_0_60 ?a))
                    (blocked seg_O1_C2c_0_34 ?a)
                    (not (not_blocked seg_O1_C2c_0_34 ?a))
         )
)
(:action park_seg_p107_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p107_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p107_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p107_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p107_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p107_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_C2b_0_60 ?a))
              (not_blocked seg_O1_C2b_0_60 ?a)
         )
)
(:action startup_seg_p107_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p107_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p107_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p107_0_76)
                    (not_occupied seg_O1_C2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2b_0_60 ?a)
                    (not (not_blocked seg_O1_C2b_0_60 ?a))
         )
)
(:action startup_seg_O1_108a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108a_0_34)
                    (not_occupied seg_O1_C2c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2c_0_34 ?a)
                    (not (not_blocked seg_O1_C2c_0_34 ?a))
         )
)
(:action startup_seg_O1_108a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108a_0_34)
                    (not_occupied seg_O1_108b_0_60)
                    (not_occupied seg_O1_108c_0_34)
                    (not_occupied seg_O1_108d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108b_0_60 ?a)
                    (not (not_blocked seg_O1_108b_0_60 ?a))
                    (blocked seg_O1_108c_0_34 ?a)
                    (not (not_blocked seg_O1_108c_0_34 ?a))
                    (blocked seg_O1_108d_0_45 ?a)
                    (not (not_blocked seg_O1_108d_0_45 ?a))
         )
)
(:action startup_seg_C2_b_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C2_b_0_80)
                    (not_occupied seg_O1_C2d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C2d_0_60 ?a)
                    (not (not_blocked seg_O1_C2d_0_60 ?a))
         )
)
(:action startup_seg_C2_b_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C2_b_0_80)
                    (not_occupied seg_C2_a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C2_a_0_80 ?a)
                    (not (not_blocked seg_C2_a_0_80 ?a))
         )
)
(:action startup_seg_O1_108b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108b_0_60)
                    (not_occupied seg_p108_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p108_0_76 ?a)
                    (not (not_blocked seg_p108_0_76 ?a))
         )
)
(:action startup_seg_O1_108b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108b_0_60)
                    (not_occupied seg_O1_108a_0_34)
                    (not_occupied seg_O1_108c_0_34)
                    (not_occupied seg_O1_108d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108a_0_34 ?a)
                    (not (not_blocked seg_O1_108a_0_34 ?a))
                    (blocked seg_O1_108c_0_34 ?a)
                    (not (not_blocked seg_O1_108c_0_34 ?a))
                    (blocked seg_O1_108d_0_45 ?a)
                    (not (not_blocked seg_O1_108d_0_45 ?a))
         )
)
(:action startup_seg_O1_108c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108c_0_34)
                    (not_occupied seg_O1_109a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109a_0_34 ?a)
                    (not (not_blocked seg_O1_109a_0_34 ?a))
         )
)
(:action startup_seg_O1_108c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108c_0_34)
                    (not_occupied seg_O1_108a_0_34)
                    (not_occupied seg_O1_108b_0_60)
                    (not_occupied seg_O1_108d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108a_0_34 ?a)
                    (not (not_blocked seg_O1_108a_0_34 ?a))
                    (blocked seg_O1_108b_0_60 ?a)
                    (not (not_blocked seg_O1_108b_0_60 ?a))
                    (blocked seg_O1_108d_0_45 ?a)
                    (not (not_blocked seg_O1_108d_0_45 ?a))
         )
)
(:action startup_seg_O1_108d_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108d_0_45)
                    (not_occupied seg_p131_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p131_0_75 ?a)
                    (not (not_blocked seg_p131_0_75 ?a))
         )
)
(:action startup_seg_O1_108d_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_108d_0_45)
                    (not_occupied seg_O1_108a_0_34)
                    (not_occupied seg_O1_108b_0_60)
                    (not_occupied seg_O1_108c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108a_0_34 ?a)
                    (not (not_blocked seg_O1_108a_0_34 ?a))
                    (blocked seg_O1_108b_0_60 ?a)
                    (not (not_blocked seg_O1_108b_0_60 ?a))
                    (blocked seg_O1_108c_0_34 ?a)
                    (not (not_blocked seg_O1_108c_0_34 ?a))
         )
)
(:action park_seg_p108_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p108_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p108_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p108_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p108_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p108_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_108b_0_60 ?a))
              (not_blocked seg_O1_108b_0_60 ?a)
         )
)
(:action startup_seg_p108_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p108_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p108_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p108_0_76)
                    (not_occupied seg_O1_108b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108b_0_60 ?a)
                    (not (not_blocked seg_O1_108b_0_60 ?a))
         )
)
(:action startup_seg_O1_109a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109a_0_34)
                    (not_occupied seg_O1_108c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108c_0_34 ?a)
                    (not (not_blocked seg_O1_108c_0_34 ?a))
         )
)
(:action startup_seg_O1_109a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109a_0_34)
                    (not_occupied seg_O1_109b_0_60)
                    (not_occupied seg_O1_109c_0_34)
                    (not_occupied seg_O1_109d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109b_0_60 ?a)
                    (not (not_blocked seg_O1_109b_0_60 ?a))
                    (blocked seg_O1_109c_0_34 ?a)
                    (not (not_blocked seg_O1_109c_0_34 ?a))
                    (blocked seg_O1_109d_0_45 ?a)
                    (not (not_blocked seg_O1_109d_0_45 ?a))
         )
)
(:action park_seg_p131_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p131_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p131_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p131_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p131_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p131_0_75)
              (not (is-moving ?a))
              (not (blocked seg_O1_108d_0_45 ?a))
              (not_blocked seg_O1_108d_0_45 ?a)
         )
)
(:action startup_seg_p131_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p131_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p131_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p131_0_75)
                    (not_occupied seg_O1_108d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_108d_0_45 ?a)
                    (not (not_blocked seg_O1_108d_0_45 ?a))
         )
)
(:action startup_seg_O1_109b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109b_0_60)
                    (not_occupied seg_p109_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p109_0_76 ?a)
                    (not (not_blocked seg_p109_0_76 ?a))
         )
)
(:action startup_seg_O1_109b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109b_0_60)
                    (not_occupied seg_O1_109a_0_34)
                    (not_occupied seg_O1_109c_0_34)
                    (not_occupied seg_O1_109d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109a_0_34 ?a)
                    (not (not_blocked seg_O1_109a_0_34 ?a))
                    (blocked seg_O1_109c_0_34 ?a)
                    (not (not_blocked seg_O1_109c_0_34 ?a))
                    (blocked seg_O1_109d_0_45 ?a)
                    (not (not_blocked seg_O1_109d_0_45 ?a))
         )
)
(:action startup_seg_O1_109c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109c_0_34)
                    (not_occupied seg_O1_110a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110a_0_34 ?a)
                    (not (not_blocked seg_O1_110a_0_34 ?a))
         )
)
(:action startup_seg_O1_109c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109c_0_34)
                    (not_occupied seg_O1_109a_0_34)
                    (not_occupied seg_O1_109b_0_60)
                    (not_occupied seg_O1_109d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109a_0_34 ?a)
                    (not (not_blocked seg_O1_109a_0_34 ?a))
                    (blocked seg_O1_109b_0_60 ?a)
                    (not (not_blocked seg_O1_109b_0_60 ?a))
                    (blocked seg_O1_109d_0_45 ?a)
                    (not (not_blocked seg_O1_109d_0_45 ?a))
         )
)
(:action startup_seg_O1_109d_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109d_0_45)
                    (not_occupied seg_p132_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p132_0_75 ?a)
                    (not (not_blocked seg_p132_0_75 ?a))
         )
)
(:action startup_seg_O1_109d_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_109d_0_45)
                    (not_occupied seg_O1_109a_0_34)
                    (not_occupied seg_O1_109b_0_60)
                    (not_occupied seg_O1_109c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109a_0_34 ?a)
                    (not (not_blocked seg_O1_109a_0_34 ?a))
                    (blocked seg_O1_109b_0_60 ?a)
                    (not (not_blocked seg_O1_109b_0_60 ?a))
                    (blocked seg_O1_109c_0_34 ?a)
                    (not (not_blocked seg_O1_109c_0_34 ?a))
         )
)
(:action park_seg_p109_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p109_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p109_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p109_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p109_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p109_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_109b_0_60 ?a))
              (not_blocked seg_O1_109b_0_60 ?a)
         )
)
(:action startup_seg_p109_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p109_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p109_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p109_0_76)
                    (not_occupied seg_O1_109b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109b_0_60 ?a)
                    (not (not_blocked seg_O1_109b_0_60 ?a))
         )
)
(:action startup_seg_O1_110a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110a_0_34)
                    (not_occupied seg_O1_109c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109c_0_34 ?a)
                    (not (not_blocked seg_O1_109c_0_34 ?a))
         )
)
(:action startup_seg_O1_110a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110a_0_34)
                    (not_occupied seg_O1_110b_0_60)
                    (not_occupied seg_O1_110c_0_34)
                    (not_occupied seg_O1_110d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110b_0_60 ?a)
                    (not (not_blocked seg_O1_110b_0_60 ?a))
                    (blocked seg_O1_110c_0_34 ?a)
                    (not (not_blocked seg_O1_110c_0_34 ?a))
                    (blocked seg_O1_110d_0_45 ?a)
                    (not (not_blocked seg_O1_110d_0_45 ?a))
         )
)
(:action park_seg_p132_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p132_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p132_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p132_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p132_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p132_0_75)
              (not (is-moving ?a))
              (not (blocked seg_O1_109d_0_45 ?a))
              (not_blocked seg_O1_109d_0_45 ?a)
         )
)
(:action startup_seg_p132_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p132_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p132_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p132_0_75)
                    (not_occupied seg_O1_109d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_109d_0_45 ?a)
                    (not (not_blocked seg_O1_109d_0_45 ?a))
         )
)
(:action startup_seg_O1_110b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110b_0_60)
                    (not_occupied seg_p110_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p110_0_76 ?a)
                    (not (not_blocked seg_p110_0_76 ?a))
         )
)
(:action startup_seg_O1_110b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110b_0_60)
                    (not_occupied seg_O1_110a_0_34)
                    (not_occupied seg_O1_110c_0_34)
                    (not_occupied seg_O1_110d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110a_0_34 ?a)
                    (not (not_blocked seg_O1_110a_0_34 ?a))
                    (blocked seg_O1_110c_0_34 ?a)
                    (not (not_blocked seg_O1_110c_0_34 ?a))
                    (blocked seg_O1_110d_0_45 ?a)
                    (not (not_blocked seg_O1_110d_0_45 ?a))
         )
)
(:action startup_seg_O1_110c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110c_0_34)
                    (not_occupied seg_O1_111a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111a_0_34 ?a)
                    (not (not_blocked seg_O1_111a_0_34 ?a))
         )
)
(:action startup_seg_O1_110c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110c_0_34)
                    (not_occupied seg_O1_110a_0_34)
                    (not_occupied seg_O1_110b_0_60)
                    (not_occupied seg_O1_110d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110a_0_34 ?a)
                    (not (not_blocked seg_O1_110a_0_34 ?a))
                    (blocked seg_O1_110b_0_60 ?a)
                    (not (not_blocked seg_O1_110b_0_60 ?a))
                    (blocked seg_O1_110d_0_45 ?a)
                    (not (not_blocked seg_O1_110d_0_45 ?a))
         )
)
(:action startup_seg_O1_110d_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110d_0_45)
                    (not_occupied seg_p133_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p133_0_75 ?a)
                    (not (not_blocked seg_p133_0_75 ?a))
         )
)
(:action startup_seg_O1_110d_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_110d_0_45)
                    (not_occupied seg_O1_110a_0_34)
                    (not_occupied seg_O1_110b_0_60)
                    (not_occupied seg_O1_110c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110a_0_34 ?a)
                    (not (not_blocked seg_O1_110a_0_34 ?a))
                    (blocked seg_O1_110b_0_60 ?a)
                    (not (not_blocked seg_O1_110b_0_60 ?a))
                    (blocked seg_O1_110c_0_34 ?a)
                    (not (not_blocked seg_O1_110c_0_34 ?a))
         )
)
(:action park_seg_p110_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p110_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p110_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p110_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p110_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p110_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_110b_0_60 ?a))
              (not_blocked seg_O1_110b_0_60 ?a)
         )
)
(:action startup_seg_p110_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p110_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p110_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p110_0_76)
                    (not_occupied seg_O1_110b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110b_0_60 ?a)
                    (not (not_blocked seg_O1_110b_0_60 ?a))
         )
)
(:action startup_seg_O1_111a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111a_0_34)
                    (not_occupied seg_O1_110c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110c_0_34 ?a)
                    (not (not_blocked seg_O1_110c_0_34 ?a))
         )
)
(:action startup_seg_O1_111a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111a_0_34)
                    (not_occupied seg_O1_111b_0_60)
                    (not_occupied seg_O1_111c_0_34)
                    (not_occupied seg_O1_111d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111b_0_60 ?a)
                    (not (not_blocked seg_O1_111b_0_60 ?a))
                    (blocked seg_O1_111c_0_34 ?a)
                    (not (not_blocked seg_O1_111c_0_34 ?a))
                    (blocked seg_O1_111d_0_45 ?a)
                    (not (not_blocked seg_O1_111d_0_45 ?a))
         )
)
(:action park_seg_p133_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p133_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p133_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p133_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p133_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p133_0_75)
              (not (is-moving ?a))
              (not (blocked seg_O1_110d_0_45 ?a))
              (not_blocked seg_O1_110d_0_45 ?a)
         )
)
(:action startup_seg_p133_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p133_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p133_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p133_0_75)
                    (not_occupied seg_O1_110d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_110d_0_45 ?a)
                    (not (not_blocked seg_O1_110d_0_45 ?a))
         )
)
(:action startup_seg_O1_111b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111b_0_60)
                    (not_occupied seg_p111_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p111_0_76 ?a)
                    (not (not_blocked seg_p111_0_76 ?a))
         )
)
(:action startup_seg_O1_111b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111b_0_60)
                    (not_occupied seg_O1_111a_0_34)
                    (not_occupied seg_O1_111c_0_34)
                    (not_occupied seg_O1_111d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111a_0_34 ?a)
                    (not (not_blocked seg_O1_111a_0_34 ?a))
                    (blocked seg_O1_111c_0_34 ?a)
                    (not (not_blocked seg_O1_111c_0_34 ?a))
                    (blocked seg_O1_111d_0_45 ?a)
                    (not (not_blocked seg_O1_111d_0_45 ?a))
         )
)
(:action startup_seg_O1_111c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111c_0_34)
                    (not_occupied seg_O1_C3a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3a_0_34 ?a)
                    (not (not_blocked seg_O1_C3a_0_34 ?a))
         )
)
(:action startup_seg_O1_111c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111c_0_34)
                    (not_occupied seg_O1_111a_0_34)
                    (not_occupied seg_O1_111b_0_60)
                    (not_occupied seg_O1_111d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111a_0_34 ?a)
                    (not (not_blocked seg_O1_111a_0_34 ?a))
                    (blocked seg_O1_111b_0_60 ?a)
                    (not (not_blocked seg_O1_111b_0_60 ?a))
                    (blocked seg_O1_111d_0_45 ?a)
                    (not (not_blocked seg_O1_111d_0_45 ?a))
         )
)
(:action startup_seg_O1_111d_0_45_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111d_0_45)
                    (not_occupied seg_p134_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p134_0_75 ?a)
                    (not (not_blocked seg_p134_0_75 ?a))
         )
)
(:action startup_seg_O1_111d_0_45_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_111d_0_45)
                    (not_occupied seg_O1_111a_0_34)
                    (not_occupied seg_O1_111b_0_60)
                    (not_occupied seg_O1_111c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111a_0_34 ?a)
                    (not (not_blocked seg_O1_111a_0_34 ?a))
                    (blocked seg_O1_111b_0_60 ?a)
                    (not (not_blocked seg_O1_111b_0_60 ?a))
                    (blocked seg_O1_111c_0_34 ?a)
                    (not (not_blocked seg_O1_111c_0_34 ?a))
         )
)
(:action park_seg_p111_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p111_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p111_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p111_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p111_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p111_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_111b_0_60 ?a))
              (not_blocked seg_O1_111b_0_60 ?a)
         )
)
(:action startup_seg_p111_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p111_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p111_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p111_0_76)
                    (not_occupied seg_O1_111b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111b_0_60 ?a)
                    (not (not_blocked seg_O1_111b_0_60 ?a))
         )
)
(:action park_seg_p134_0_75_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p134_0_75)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p134_0_75)
              (not (is-moving ?a))
         )
)
(:action park_seg_p134_0_75_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p134_0_75)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p134_0_75)
              (not (is-moving ?a))
              (not (blocked seg_O1_111d_0_45 ?a))
              (not_blocked seg_O1_111d_0_45 ?a)
         )
)
(:action startup_seg_p134_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p134_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p134_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p134_0_75)
                    (not_occupied seg_O1_111d_0_45)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111d_0_45 ?a)
                    (not (not_blocked seg_O1_111d_0_45 ?a))
         )
)
(:action startup_seg_O1_C3a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3a_0_34)
                    (not_occupied seg_O1_111c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_111c_0_34 ?a)
                    (not (not_blocked seg_O1_111c_0_34 ?a))
         )
)
(:action startup_seg_O1_C3a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3a_0_34)
                    (not_occupied seg_O1_C3b_0_60)
                    (not_occupied seg_O1_C3c_0_48)
                    (not_occupied seg_O1_C3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3b_0_60 ?a)
                    (not (not_blocked seg_O1_C3b_0_60 ?a))
                    (blocked seg_O1_C3c_0_48 ?a)
                    (not (not_blocked seg_O1_C3c_0_48 ?a))
                    (blocked seg_O1_C3d_0_60 ?a)
                    (not (not_blocked seg_O1_C3d_0_60 ?a))
         )
)
(:action startup_seg_O1_C3b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3b_0_60)
                    (not_occupied seg_p112_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p112_0_76 ?a)
                    (not (not_blocked seg_p112_0_76 ?a))
         )
)
(:action startup_seg_O1_C3b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3b_0_60)
                    (not_occupied seg_O1_C3a_0_34)
                    (not_occupied seg_O1_C3c_0_48)
                    (not_occupied seg_O1_C3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3a_0_34 ?a)
                    (not (not_blocked seg_O1_C3a_0_34 ?a))
                    (blocked seg_O1_C3c_0_48 ?a)
                    (not (not_blocked seg_O1_C3c_0_48 ?a))
                    (blocked seg_O1_C3d_0_60 ?a)
                    (not (not_blocked seg_O1_C3d_0_60 ?a))
         )
)
(:action startup_seg_O1_C3c_0_48_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3c_0_48)
                    (not_occupied seg_O1_115a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115a_0_34 ?a)
                    (not (not_blocked seg_O1_115a_0_34 ?a))
         )
)
(:action startup_seg_O1_C3c_0_48_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3c_0_48)
                    (not_occupied seg_O1_C3a_0_34)
                    (not_occupied seg_O1_C3b_0_60)
                    (not_occupied seg_O1_C3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3a_0_34 ?a)
                    (not (not_blocked seg_O1_C3a_0_34 ?a))
                    (blocked seg_O1_C3b_0_60 ?a)
                    (not (not_blocked seg_O1_C3b_0_60 ?a))
                    (blocked seg_O1_C3d_0_60 ?a)
                    (not (not_blocked seg_O1_C3d_0_60 ?a))
         )
)
(:action startup_seg_O1_C3d_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3d_0_60)
                    (not_occupied seg_C3_b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C3_b_0_80 ?a)
                    (not (not_blocked seg_C3_b_0_80 ?a))
         )
)
(:action startup_seg_O1_C3d_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C3d_0_60)
                    (not_occupied seg_O1_C3a_0_34)
                    (not_occupied seg_O1_C3b_0_60)
                    (not_occupied seg_O1_C3c_0_48)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3a_0_34 ?a)
                    (not (not_blocked seg_O1_C3a_0_34 ?a))
                    (blocked seg_O1_C3b_0_60 ?a)
                    (not (not_blocked seg_O1_C3b_0_60 ?a))
                    (blocked seg_O1_C3c_0_48 ?a)
                    (not (not_blocked seg_O1_C3c_0_48 ?a))
         )
)
(:action park_seg_p112_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p112_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p112_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p112_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p112_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p112_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_C3b_0_60 ?a))
              (not_blocked seg_O1_C3b_0_60 ?a)
         )
)
(:action startup_seg_p112_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p112_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p112_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p112_0_76)
                    (not_occupied seg_O1_C3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3b_0_60 ?a)
                    (not (not_blocked seg_O1_C3b_0_60 ?a))
         )
)
(:action startup_seg_O1_115a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115a_0_34)
                    (not_occupied seg_O1_C3c_0_48)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3c_0_48 ?a)
                    (not (not_blocked seg_O1_C3c_0_48 ?a))
         )
)
(:action startup_seg_O1_115a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115a_0_34)
                    (not_occupied seg_O1_115b_0_60)
                    (not_occupied seg_O1_115c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115b_0_60 ?a)
                    (not (not_blocked seg_O1_115b_0_60 ?a))
                    (blocked seg_O1_115c_0_34 ?a)
                    (not (not_blocked seg_O1_115c_0_34 ?a))
         )
)
(:action startup_seg_C3_b_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C3_b_0_80)
                    (not_occupied seg_O1_C3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C3d_0_60 ?a)
                    (not (not_blocked seg_O1_C3d_0_60 ?a))
         )
)
(:action startup_seg_C3_b_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C3_b_0_80)
                    (not_occupied seg_C3_a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C3_a_0_80 ?a)
                    (not (not_blocked seg_C3_a_0_80 ?a))
         )
)
(:action startup_seg_O1_115b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115b_0_60)
                    (not_occupied seg_p115_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p115_0_76 ?a)
                    (not (not_blocked seg_p115_0_76 ?a))
         )
)
(:action startup_seg_O1_115b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115b_0_60)
                    (not_occupied seg_O1_115a_0_34)
                    (not_occupied seg_O1_115c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115a_0_34 ?a)
                    (not (not_blocked seg_O1_115a_0_34 ?a))
                    (blocked seg_O1_115c_0_34 ?a)
                    (not (not_blocked seg_O1_115c_0_34 ?a))
         )
)
(:action startup_seg_O1_115c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115c_0_34)
                    (not_occupied seg_O1_116a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116a_0_34 ?a)
                    (not (not_blocked seg_O1_116a_0_34 ?a))
         )
)
(:action startup_seg_O1_115c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_115c_0_34)
                    (not_occupied seg_O1_115a_0_34)
                    (not_occupied seg_O1_115b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115a_0_34 ?a)
                    (not (not_blocked seg_O1_115a_0_34 ?a))
                    (blocked seg_O1_115b_0_60 ?a)
                    (not (not_blocked seg_O1_115b_0_60 ?a))
         )
)
(:action park_seg_p115_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p115_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p115_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p115_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p115_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p115_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_115b_0_60 ?a))
              (not_blocked seg_O1_115b_0_60 ?a)
         )
)
(:action startup_seg_p115_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p115_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p115_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p115_0_76)
                    (not_occupied seg_O1_115b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115b_0_60 ?a)
                    (not (not_blocked seg_O1_115b_0_60 ?a))
         )
)
(:action startup_seg_O1_116a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116a_0_34)
                    (not_occupied seg_O1_115c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_115c_0_34 ?a)
                    (not (not_blocked seg_O1_115c_0_34 ?a))
         )
)
(:action startup_seg_O1_116a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116a_0_34)
                    (not_occupied seg_O1_116b_0_60)
                    (not_occupied seg_O1_116c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116b_0_60 ?a)
                    (not (not_blocked seg_O1_116b_0_60 ?a))
                    (blocked seg_O1_116c_0_34 ?a)
                    (not (not_blocked seg_O1_116c_0_34 ?a))
         )
)
(:action startup_seg_O1_116b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116b_0_60)
                    (not_occupied seg_p116_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p116_0_76 ?a)
                    (not (not_blocked seg_p116_0_76 ?a))
         )
)
(:action startup_seg_O1_116b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116b_0_60)
                    (not_occupied seg_O1_116a_0_34)
                    (not_occupied seg_O1_116c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116a_0_34 ?a)
                    (not (not_blocked seg_O1_116a_0_34 ?a))
                    (blocked seg_O1_116c_0_34 ?a)
                    (not (not_blocked seg_O1_116c_0_34 ?a))
         )
)
(:action startup_seg_O1_116c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116c_0_34)
                    (not_occupied seg_O1_117a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117a_0_34 ?a)
                    (not (not_blocked seg_O1_117a_0_34 ?a))
         )
)
(:action startup_seg_O1_116c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_116c_0_34)
                    (not_occupied seg_O1_116a_0_34)
                    (not_occupied seg_O1_116b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116a_0_34 ?a)
                    (not (not_blocked seg_O1_116a_0_34 ?a))
                    (blocked seg_O1_116b_0_60 ?a)
                    (not (not_blocked seg_O1_116b_0_60 ?a))
         )
)
(:action park_seg_p116_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p116_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p116_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p116_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p116_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p116_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_116b_0_60 ?a))
              (not_blocked seg_O1_116b_0_60 ?a)
         )
)
(:action startup_seg_p116_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p116_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p116_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p116_0_76)
                    (not_occupied seg_O1_116b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116b_0_60 ?a)
                    (not (not_blocked seg_O1_116b_0_60 ?a))
         )
)
(:action startup_seg_O1_117a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117a_0_34)
                    (not_occupied seg_O1_116c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_116c_0_34 ?a)
                    (not (not_blocked seg_O1_116c_0_34 ?a))
         )
)
(:action startup_seg_O1_117a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117a_0_34)
                    (not_occupied seg_O1_117b_0_60)
                    (not_occupied seg_O1_117c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117b_0_60 ?a)
                    (not (not_blocked seg_O1_117b_0_60 ?a))
                    (blocked seg_O1_117c_0_34 ?a)
                    (not (not_blocked seg_O1_117c_0_34 ?a))
         )
)
(:action startup_seg_O1_117b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117b_0_60)
                    (not_occupied seg_p117_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p117_0_76 ?a)
                    (not (not_blocked seg_p117_0_76 ?a))
         )
)
(:action startup_seg_O1_117b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117b_0_60)
                    (not_occupied seg_O1_117a_0_34)
                    (not_occupied seg_O1_117c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117a_0_34 ?a)
                    (not (not_blocked seg_O1_117a_0_34 ?a))
                    (blocked seg_O1_117c_0_34 ?a)
                    (not (not_blocked seg_O1_117c_0_34 ?a))
         )
)
(:action startup_seg_O1_117c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117c_0_34)
                    (not_occupied seg_O1_118a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118a_0_34 ?a)
                    (not (not_blocked seg_O1_118a_0_34 ?a))
         )
)
(:action startup_seg_O1_117c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_117c_0_34)
                    (not_occupied seg_O1_117a_0_34)
                    (not_occupied seg_O1_117b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117a_0_34 ?a)
                    (not (not_blocked seg_O1_117a_0_34 ?a))
                    (blocked seg_O1_117b_0_60 ?a)
                    (not (not_blocked seg_O1_117b_0_60 ?a))
         )
)
(:action park_seg_p117_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p117_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p117_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p117_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p117_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p117_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_117b_0_60 ?a))
              (not_blocked seg_O1_117b_0_60 ?a)
         )
)
(:action startup_seg_p117_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p117_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p117_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p117_0_76)
                    (not_occupied seg_O1_117b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117b_0_60 ?a)
                    (not (not_blocked seg_O1_117b_0_60 ?a))
         )
)
(:action startup_seg_O1_118a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118a_0_34)
                    (not_occupied seg_O1_117c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_117c_0_34 ?a)
                    (not (not_blocked seg_O1_117c_0_34 ?a))
         )
)
(:action startup_seg_O1_118a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118a_0_34)
                    (not_occupied seg_O1_118b_0_60)
                    (not_occupied seg_O1_118c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118b_0_60 ?a)
                    (not (not_blocked seg_O1_118b_0_60 ?a))
                    (blocked seg_O1_118c_0_34 ?a)
                    (not (not_blocked seg_O1_118c_0_34 ?a))
         )
)
(:action startup_seg_O1_118b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118b_0_60)
                    (not_occupied seg_p118_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p118_0_76 ?a)
                    (not (not_blocked seg_p118_0_76 ?a))
         )
)
(:action startup_seg_O1_118b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118b_0_60)
                    (not_occupied seg_O1_118a_0_34)
                    (not_occupied seg_O1_118c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118a_0_34 ?a)
                    (not (not_blocked seg_O1_118a_0_34 ?a))
                    (blocked seg_O1_118c_0_34 ?a)
                    (not (not_blocked seg_O1_118c_0_34 ?a))
         )
)
(:action startup_seg_O1_118c_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118c_0_34)
                    (not_occupied seg_O1_C4a_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4a_0_34 ?a)
                    (not (not_blocked seg_O1_C4a_0_34 ?a))
         )
)
(:action startup_seg_O1_118c_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_118c_0_34)
                    (not_occupied seg_O1_118a_0_34)
                    (not_occupied seg_O1_118b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118a_0_34 ?a)
                    (not (not_blocked seg_O1_118a_0_34 ?a))
                    (blocked seg_O1_118b_0_60 ?a)
                    (not (not_blocked seg_O1_118b_0_60 ?a))
         )
)
(:action park_seg_p118_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p118_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p118_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p118_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p118_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p118_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_118b_0_60 ?a))
              (not_blocked seg_O1_118b_0_60 ?a)
         )
)
(:action startup_seg_p118_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p118_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p118_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p118_0_76)
                    (not_occupied seg_O1_118b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118b_0_60 ?a)
                    (not (not_blocked seg_O1_118b_0_60 ?a))
         )
)
(:action startup_seg_O1_C4a_0_34_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4a_0_34)
                    (not_occupied seg_O1_118c_0_34)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_118c_0_34 ?a)
                    (not (not_blocked seg_O1_118c_0_34 ?a))
         )
)
(:action startup_seg_O1_C4a_0_34_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4a_0_34)
                    (not_occupied seg_O1_C4b_0_60)
                    (not_occupied seg_O1_C4c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4b_0_60 ?a)
                    (not (not_blocked seg_O1_C4b_0_60 ?a))
                    (blocked seg_O1_C4c_0_80 ?a)
                    (not (not_blocked seg_O1_C4c_0_80 ?a))
         )
)
(:action startup_seg_O1_C4b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4b_0_60)
                    (not_occupied seg_p119_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_p119_0_76 ?a)
                    (not (not_blocked seg_p119_0_76 ?a))
         )
)
(:action startup_seg_O1_C4b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4b_0_60)
                    (not_occupied seg_O1_C4a_0_34)
                    (not_occupied seg_O1_C4c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4a_0_34 ?a)
                    (not (not_blocked seg_O1_C4a_0_34 ?a))
                    (blocked seg_O1_C4c_0_80 ?a)
                    (not (not_blocked seg_O1_C4c_0_80 ?a))
         )
)
(:action startup_seg_O1_C4c_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4c_0_80)
                    (not_occupied seg_C4_S6a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_S6a_0_80 ?a)
                    (not (not_blocked seg_C4_S6a_0_80 ?a))
         )
)
(:action startup_seg_O1_C4c_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_O1_C4c_0_80)
                    (not_occupied seg_O1_C4a_0_34)
                    (not_occupied seg_O1_C4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4a_0_34 ?a)
                    (not (not_blocked seg_O1_C4a_0_34 ?a))
                    (blocked seg_O1_C4b_0_60 ?a)
                    (not (not_blocked seg_O1_C4b_0_60 ?a))
         )
)
(:action park_seg_p119_0_76_north
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p119_0_76)
                    (facing ?a north)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p119_0_76)
              (not (is-moving ?a))
         )
)
(:action park_seg_p119_0_76_south
 :parameters (?a - airplane)
 :precondition (and (at-segment ?a seg_p119_0_76)
                    (facing ?a south)
                    (is-moving ?a)
               )
 :effect (and (is-parked ?a seg_p119_0_76)
              (not (is-moving ?a))
              (not (blocked seg_O1_C4b_0_60 ?a))
              (not_blocked seg_O1_C4b_0_60 ?a)
         )
)
(:action startup_seg_p119_0_76_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p119_0_76)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
         )
)
(:action startup_seg_p119_0_76_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_p119_0_76)
                    (not_occupied seg_O1_C4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4b_0_60 ?a)
                    (not (not_blocked seg_O1_C4b_0_60 ?a))
         )
)
(:action startup_seg_C4_S6a_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_S6a_0_80)
                    (not_occupied seg_O1_C4c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_O1_C4c_0_80 ?a)
                    (not (not_blocked seg_O1_C4c_0_80 ?a))
         )
)
(:action startup_seg_C4_S6a_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C4_S6a_0_80)
                    (not_occupied seg_C4_S6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C4_S6c_0_60 ?a)
                    (not (not_blocked seg_C4_S6c_0_60 ?a))
         )
)
(:action startup_seg_C1_n2a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2a_0_60)
                    (not_occupied seg_N2_0_108)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_0_108 ?a)
                    (not (not_blocked seg_N2_0_108 ?a))
         )
)
(:action startup_seg_C1_n2a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_C1_n2a_0_60)
                    (not_occupied seg_C1_n2b_0_80)
                    (not_occupied seg_C1_n2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2b_0_80 ?a)
                    (not (not_blocked seg_C1_n2b_0_80 ?a))
                    (blocked seg_C1_n2c_0_60 ?a)
                    (not (not_blocked seg_C1_n2c_0_60 ?a))
         )
)
(:action startup_seg_N2_0_108_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_0_108)
                    (not_occupied seg_C1_n2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_C1_n2a_0_60 ?a)
                    (not (not_blocked seg_C1_n2a_0_60 ?a))
         )
)
(:action startup_seg_N2_0_108_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N2_0_108)
                    (not_occupied seg_N_N2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2b_0_60 ?a)
                    (not (not_blocked seg_N_N2b_0_60 ?a))
         )
)
(:action startup_seg_08L_A2b_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A2b_0_80)
                    (not_occupied seg_A2_a_0_90)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_a_0_90 ?a)
                    (not (not_blocked seg_A2_a_0_90 ?a))
         )
)
(:action startup_seg_08L_A2b_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A2b_0_80)
                    (not_occupied seg_08L_A2a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A2a_0_80 ?a)
                    (not (not_blocked seg_08L_A2a_0_80 ?a))
         )
)
(:action startup_seg_A2_a_0_90_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_a_0_90)
                    (not_occupied seg_A2_b_0_90)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_b_0_90 ?a)
                    (not (not_blocked seg_A2_b_0_90 ?a))
         )
)
(:action startup_seg_A2_a_0_90_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_a_0_90)
                    (not_occupied seg_08L_A2b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A2b_0_80 ?a)
                    (not (not_blocked seg_08L_A2b_0_80 ?a))
         )
)
(:action startup_seg_08L_A3b_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A3b_0_161_245)
                    (not_occupied seg_A3_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A3_a_0_158_647 ?a)
                    (not (not_blocked seg_A3_a_0_158_647 ?a))
         )
)
(:action startup_seg_08L_A3b_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A3b_0_161_245)
                    (not_occupied seg_08L_A3a_0_80)
                    (not_occupied seg_08l_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A3a_0_80 ?a)
                    (not (not_blocked seg_08L_A3a_0_80 ?a))
                    (blocked seg_08l_0_80 ?a)
                    (not (not_blocked seg_08l_0_80 ?a))
         )
)
(:action startup_seg_A3_a_0_158_647_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A3_a_0_158_647)
                    (not_occupied seg_A3_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A3_b_0_159_512 ?a)
                    (not (not_blocked seg_A3_b_0_159_512 ?a))
         )
)
(:action startup_seg_A3_a_0_158_647_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A3_a_0_158_647)
                    (not_occupied seg_08L_A3b_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A3b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A3b_0_161_245 ?a))
         )
)
(:action startup_seg_08L_A4b_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A4b_0_161_245)
                    (not_occupied seg_A6_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A6_a_0_158_647 ?a)
                    (not (not_blocked seg_A6_a_0_158_647 ?a))
         )
)
(:action startup_seg_08L_A4b_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A4b_0_161_245)
                    (not_occupied seg_08L_A4a_0_80)
                    (not_occupied seg_08L_A4c_0_161_245)
                    (not_occupied seg_08L_A4d_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A4a_0_80 ?a)
                    (not (not_blocked seg_08L_A4a_0_80 ?a))
                    (blocked seg_08L_A4c_0_161_245 ?a)
                    (not (not_blocked seg_08L_A4c_0_161_245 ?a))
                    (blocked seg_08L_A4d_0_80 ?a)
                    (not (not_blocked seg_08L_A4d_0_80 ?a))
         )
)
(:action startup_seg_08L_A4c_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A4c_0_161_245)
                    (not_occupied seg_A4_a_0_157_785)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_a_0_157_785 ?a)
                    (not (not_blocked seg_A4_a_0_157_785 ?a))
         )
)
(:action startup_seg_08L_A4c_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A4c_0_161_245)
                    (not_occupied seg_08L_A4a_0_80)
                    (not_occupied seg_08L_A4b_0_161_245)
                    (not_occupied seg_08L_A4d_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A4a_0_80 ?a)
                    (not (not_blocked seg_08L_A4a_0_80 ?a))
                    (blocked seg_08L_A4b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A4b_0_161_245 ?a))
                    (blocked seg_08L_A4d_0_80 ?a)
                    (not (not_blocked seg_08L_A4d_0_80 ?a))
         )
)
(:action startup_seg_A6_a_0_158_647_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A6_a_0_158_647)
                    (not_occupied seg_A6_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A6_b_0_159_512 ?a)
                    (not (not_blocked seg_A6_b_0_159_512 ?a))
         )
)
(:action startup_seg_A6_a_0_158_647_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A6_a_0_158_647)
                    (not_occupied seg_08L_A4b_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A4b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A4b_0_161_245 ?a))
         )
)
(:action startup_seg_A4_a_0_157_785_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_a_0_157_785)
                    (not_occupied seg_A4_b_1_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_b_1_0_80_6226 ?a)
                    (not (not_blocked seg_A4_b_1_0_80_6226 ?a))
         )
)
(:action startup_seg_A4_a_0_157_785_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_a_0_157_785)
                    (not_occupied seg_08L_A4c_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A4c_0_161_245 ?a)
                    (not (not_blocked seg_08L_A4c_0_161_245 ?a))
         )
)
(:action startup_seg_08L_A7b_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A7b_0_161_245)
                    (not_occupied seg_A8_a_0_157_785)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_a_0_157_785 ?a)
                    (not (not_blocked seg_A8_a_0_157_785 ?a))
         )
)
(:action startup_seg_08L_A7b_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A7b_0_161_245)
                    (not_occupied seg_08L_A7a_0_80)
                    (not_occupied seg_08L_A7c_0_161_245)
                    (not_occupied seg_08L_A7d_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A7a_0_80 ?a)
                    (not (not_blocked seg_08L_A7a_0_80 ?a))
                    (blocked seg_08L_A7c_0_161_245 ?a)
                    (not (not_blocked seg_08L_A7c_0_161_245 ?a))
                    (blocked seg_08L_A7d_0_80 ?a)
                    (not (not_blocked seg_08L_A7d_0_80 ?a))
         )
)
(:action startup_seg_08L_A7c_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A7c_0_161_245)
                    (not_occupied seg_A7_a_0_156_924)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_a_0_156_924 ?a)
                    (not (not_blocked seg_A7_a_0_156_924 ?a))
         )
)
(:action startup_seg_08L_A7c_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A7c_0_161_245)
                    (not_occupied seg_08L_A7a_0_80)
                    (not_occupied seg_08L_A7b_0_161_245)
                    (not_occupied seg_08L_A7d_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A7a_0_80 ?a)
                    (not (not_blocked seg_08L_A7a_0_80 ?a))
                    (blocked seg_08L_A7b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A7b_0_161_245 ?a))
                    (blocked seg_08L_A7d_0_80 ?a)
                    (not (not_blocked seg_08L_A7d_0_80 ?a))
         )
)
(:action startup_seg_A8_a_0_157_785_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_a_0_157_785)
                    (not_occupied seg_A8_b_1_0_79_7559)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_b_1_0_79_7559 ?a)
                    (not (not_blocked seg_A8_b_1_0_79_7559 ?a))
         )
)
(:action startup_seg_A8_a_0_157_785_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_a_0_157_785)
                    (not_occupied seg_08L_A7b_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A7b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A7b_0_161_245 ?a))
         )
)
(:action startup_seg_A7_a_0_156_924_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_a_0_156_924)
                    (not_occupied seg_A7_b_1_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_b_1_0_80_6226 ?a)
                    (not (not_blocked seg_A7_b_1_0_80_6226 ?a))
         )
)
(:action startup_seg_A7_a_0_156_924_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_a_0_156_924)
                    (not_occupied seg_08L_A7c_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A7c_0_161_245 ?a)
                    (not (not_blocked seg_08L_A7c_0_161_245 ?a))
         )
)
(:action startup_seg_08L_A9b_0_161_245_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A9b_0_161_245)
                    (not_occupied seg_A9_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A9_a_0_158_647 ?a)
                    (not (not_blocked seg_A9_a_0_158_647 ?a))
         )
)
(:action startup_seg_08L_A9b_0_161_245_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A9b_0_161_245)
                    (not_occupied seg_09l_0_80)
                    (not_occupied seg_08L_A9c_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_09l_0_80 ?a)
                    (not (not_blocked seg_09l_0_80 ?a))
                    (blocked seg_08L_A9c_0_80 ?a)
                    (not (not_blocked seg_08L_A9c_0_80 ?a))
         )
)
(:action startup_seg_A9_a_0_158_647_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A9_a_0_158_647)
                    (not_occupied seg_A9_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A9_b_0_159_512 ?a)
                    (not (not_blocked seg_A9_b_0_159_512 ?a))
         )
)
(:action startup_seg_A9_a_0_158_647_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A9_a_0_158_647)
                    (not_occupied seg_08L_A9b_0_161_245)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A9b_0_161_245 ?a)
                    (not (not_blocked seg_08L_A9b_0_161_245 ?a))
         )
)
(:action startup_seg_08L_A10a_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A10a_0_80)
                    (not_occupied seg_A10_1_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A10_1_0_80 ?a)
                    (not (not_blocked seg_A10_1_0_80 ?a))
         )
)
(:action startup_seg_08L_A10a_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_08L_A10a_0_80)
                    (not_occupied seg_08L_A10b_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A10b_0_80 ?a)
                    (not (not_blocked seg_08L_A10b_0_80 ?a))
         )
)
(:action startup_seg_A10_1_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A10_1_0_80)
                    (not_occupied seg_A10_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A10_0_80 ?a)
                    (not (not_blocked seg_A10_0_80 ?a))
         )
)
(:action startup_seg_A10_1_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A10_1_0_80)
                    (not_occupied seg_08L_A10a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_08L_A10a_0_80 ?a)
                    (not (not_blocked seg_08L_A10a_0_80 ?a))
         )
)
(:action startup_seg_M_A3a_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3a_0_120_934)
                    (not_occupied seg_A3_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A3_b_0_159_512 ?a)
                    (not (not_blocked seg_A3_b_0_159_512 ?a))
         )
)
(:action startup_seg_M_A3a_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3a_0_120_934)
                    (not_occupied seg_M_A3b_0_60)
                    (not_occupied seg_M_A3c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3b_0_60 ?a)
                    (not (not_blocked seg_M_A3b_0_60 ?a))
                    (blocked seg_M_A3c_0_60 ?a)
                    (not (not_blocked seg_M_A3c_0_60 ?a))
         )
)
(:action startup_seg_M_A3b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3b_0_60)
                    (not_occupied seg_M_A3A4a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4a_0_75 ?a)
                    (not (not_blocked seg_M_A3A4a_0_75 ?a))
         )
)
(:action startup_seg_M_A3b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3b_0_60)
                    (not_occupied seg_M_A3a_0_120_934)
                    (not_occupied seg_M_A3c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3a_0_120_934 ?a)
                    (not (not_blocked seg_M_A3a_0_120_934 ?a))
                    (blocked seg_M_A3c_0_60 ?a)
                    (not (not_blocked seg_M_A3c_0_60 ?a))
         )
)
(:action startup_seg_M_A3c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3c_0_60)
                    (not_occupied seg_N_A3a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3a_0_60 ?a)
                    (not (not_blocked seg_N_A3a_0_60 ?a))
         )
)
(:action startup_seg_M_A3c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3c_0_60)
                    (not_occupied seg_M_A3a_0_120_934)
                    (not_occupied seg_M_A3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3a_0_120_934 ?a)
                    (not (not_blocked seg_M_A3a_0_120_934 ?a))
                    (blocked seg_M_A3b_0_60 ?a)
                    (not (not_blocked seg_M_A3b_0_60 ?a))
         )
)
(:action startup_seg_A3_b_0_159_512_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A3_b_0_159_512)
                    (not_occupied seg_M_A3a_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3a_0_120_934 ?a)
                    (not (not_blocked seg_M_A3a_0_120_934 ?a))
         )
)
(:action startup_seg_A3_b_0_159_512_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A3_b_0_159_512)
                    (not_occupied seg_A3_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A3_a_0_158_647 ?a)
                    (not (not_blocked seg_A3_a_0_158_647 ?a))
         )
)
(:action startup_seg_M_A3A4a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4a_0_75)
                    (not_occupied seg_M_A3A4b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4b_0_75 ?a)
                    (not (not_blocked seg_M_A3A4b_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4a_0_75)
                    (not_occupied seg_M_A3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3b_0_60 ?a)
                    (not (not_blocked seg_M_A3b_0_60 ?a))
         )
)
(:action startup_seg_N_A3a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3a_0_60)
                    (not_occupied seg_M_A3c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3c_0_60 ?a)
                    (not (not_blocked seg_M_A3c_0_60 ?a))
         )
)
(:action startup_seg_N_A3a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3a_0_60)
                    (not_occupied seg_N_A3b_0_60)
                    (not_occupied seg_N_A3c_0_60)
                    (not_occupied seg_N_A3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3b_0_60 ?a)
                    (not (not_blocked seg_N_A3b_0_60 ?a))
                    (blocked seg_N_A3c_0_60 ?a)
                    (not (not_blocked seg_N_A3c_0_60 ?a))
                    (blocked seg_N_A3d_0_60 ?a)
                    (not (not_blocked seg_N_A3d_0_60 ?a))
         )
)
(:action startup_seg_M_A3A4b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4b_0_75)
                    (not_occupied seg_M_A3A4c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4c_0_75 ?a)
                    (not (not_blocked seg_M_A3A4c_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4b_0_75)
                    (not_occupied seg_M_A3A4a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4a_0_75 ?a)
                    (not (not_blocked seg_M_A3A4a_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4c_0_75)
                    (not_occupied seg_M_A3A4d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4d_0_75 ?a)
                    (not (not_blocked seg_M_A3A4d_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4c_0_75)
                    (not_occupied seg_M_A3A4b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4b_0_75 ?a)
                    (not (not_blocked seg_M_A3A4b_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4d_0_75)
                    (not_occupied seg_M_A3A4e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4e_0_75 ?a)
                    (not (not_blocked seg_M_A3A4e_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4d_0_75)
                    (not_occupied seg_M_A3A4c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4c_0_75 ?a)
                    (not (not_blocked seg_M_A3A4c_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4e_0_75)
                    (not_occupied seg_M_A3A4f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4f_0_115 ?a)
                    (not (not_blocked seg_M_A3A4f_0_115 ?a))
         )
)
(:action startup_seg_M_A3A4e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4e_0_75)
                    (not_occupied seg_M_A3A4d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4d_0_75 ?a)
                    (not (not_blocked seg_M_A3A4d_0_75 ?a))
         )
)
(:action startup_seg_M_A3A4f_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4f_0_115)
                    (not_occupied seg_M_A4d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4d_0_60 ?a)
                    (not (not_blocked seg_M_A4d_0_60 ?a))
         )
)
(:action startup_seg_M_A3A4f_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A3A4f_0_115)
                    (not_occupied seg_M_A3A4e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4e_0_75 ?a)
                    (not (not_blocked seg_M_A3A4e_0_75 ?a))
         )
)
(:action startup_seg_M_A4a_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4a_0_120_934)
                    (not_occupied seg_A4_b_0_79_7559)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_b_0_79_7559 ?a)
                    (not (not_blocked seg_A4_b_0_79_7559 ?a))
         )
)
(:action startup_seg_M_A4a_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4a_0_120_934)
                    (not_occupied seg_M_A4b_0_60)
                    (not_occupied seg_M_A4c_0_60)
                    (not_occupied seg_M_A4d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4b_0_60 ?a)
                    (not (not_blocked seg_M_A4b_0_60 ?a))
                    (blocked seg_M_A4c_0_60 ?a)
                    (not (not_blocked seg_M_A4c_0_60 ?a))
                    (blocked seg_M_A4d_0_60 ?a)
                    (not (not_blocked seg_M_A4d_0_60 ?a))
         )
)
(:action startup_seg_M_A4b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4b_0_60)
                    (not_occupied seg_M_A4A7a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7a_0_75 ?a)
                    (not (not_blocked seg_M_A4A7a_0_75 ?a))
         )
)
(:action startup_seg_M_A4b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4b_0_60)
                    (not_occupied seg_M_A4a_0_120_934)
                    (not_occupied seg_M_A4c_0_60)
                    (not_occupied seg_M_A4d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4a_0_120_934 ?a)
                    (not (not_blocked seg_M_A4a_0_120_934 ?a))
                    (blocked seg_M_A4c_0_60 ?a)
                    (not (not_blocked seg_M_A4c_0_60 ?a))
                    (blocked seg_M_A4d_0_60 ?a)
                    (not (not_blocked seg_M_A4d_0_60 ?a))
         )
)
(:action startup_seg_M_A4c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4c_0_60)
                    (not_occupied seg_N_A4a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4a_0_60 ?a)
                    (not (not_blocked seg_N_A4a_0_60 ?a))
         )
)
(:action startup_seg_M_A4c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4c_0_60)
                    (not_occupied seg_M_A4a_0_120_934)
                    (not_occupied seg_M_A4b_0_60)
                    (not_occupied seg_M_A4d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4a_0_120_934 ?a)
                    (not (not_blocked seg_M_A4a_0_120_934 ?a))
                    (blocked seg_M_A4b_0_60 ?a)
                    (not (not_blocked seg_M_A4b_0_60 ?a))
                    (blocked seg_M_A4d_0_60 ?a)
                    (not (not_blocked seg_M_A4d_0_60 ?a))
         )
)
(:action startup_seg_M_A4d_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4d_0_60)
                    (not_occupied seg_M_A3A4f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A3A4f_0_115 ?a)
                    (not (not_blocked seg_M_A3A4f_0_115 ?a))
         )
)
(:action startup_seg_M_A4d_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4d_0_60)
                    (not_occupied seg_M_A4a_0_120_934)
                    (not_occupied seg_M_A4b_0_60)
                    (not_occupied seg_M_A4c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4a_0_120_934 ?a)
                    (not (not_blocked seg_M_A4a_0_120_934 ?a))
                    (blocked seg_M_A4b_0_60 ?a)
                    (not (not_blocked seg_M_A4b_0_60 ?a))
                    (blocked seg_M_A4c_0_60 ?a)
                    (not (not_blocked seg_M_A4c_0_60 ?a))
         )
)
(:action startup_seg_A4_b_0_79_7559_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_b_0_79_7559)
                    (not_occupied seg_M_A4a_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4a_0_120_934 ?a)
                    (not (not_blocked seg_M_A4a_0_120_934 ?a))
         )
)
(:action startup_seg_A4_b_0_79_7559_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_b_0_79_7559)
                    (not_occupied seg_A4_b_1_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_b_1_0_80_6226 ?a)
                    (not (not_blocked seg_A4_b_1_0_80_6226 ?a))
         )
)
(:action startup_seg_M_A4A7a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7a_0_75)
                    (not_occupied seg_M_A4A7b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7b_0_75 ?a)
                    (not (not_blocked seg_M_A4A7b_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7a_0_75)
                    (not_occupied seg_M_A4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4b_0_60 ?a)
                    (not (not_blocked seg_M_A4b_0_60 ?a))
         )
)
(:action startup_seg_N_A4a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4a_0_60)
                    (not_occupied seg_M_A4c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4c_0_60 ?a)
                    (not (not_blocked seg_M_A4c_0_60 ?a))
         )
)
(:action startup_seg_N_A4a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4a_0_60)
                    (not_occupied seg_N_A4b_0_60)
                    (not_occupied seg_N_A4c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4b_0_60 ?a)
                    (not (not_blocked seg_N_A4b_0_60 ?a))
                    (blocked seg_N_A4c_0_60 ?a)
                    (not (not_blocked seg_N_A4c_0_60 ?a))
         )
)
(:action startup_seg_M_A4A7b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7b_0_75)
                    (not_occupied seg_M_A4A7c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7c_0_75 ?a)
                    (not (not_blocked seg_M_A4A7c_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7b_0_75)
                    (not_occupied seg_M_A4A7a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7a_0_75 ?a)
                    (not (not_blocked seg_M_A4A7a_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7c_0_75)
                    (not_occupied seg_M_A4A7d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7d_0_75 ?a)
                    (not (not_blocked seg_M_A4A7d_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7c_0_75)
                    (not_occupied seg_M_A4A7b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7b_0_75 ?a)
                    (not (not_blocked seg_M_A4A7b_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7d_0_75)
                    (not_occupied seg_M_A4A7e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7e_0_75 ?a)
                    (not (not_blocked seg_M_A4A7e_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7d_0_75)
                    (not_occupied seg_M_A4A7c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7c_0_75 ?a)
                    (not (not_blocked seg_M_A4A7c_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7e_0_75)
                    (not_occupied seg_M_A4A7f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7f_0_115 ?a)
                    (not (not_blocked seg_M_A4A7f_0_115 ?a))
         )
)
(:action startup_seg_M_A4A7e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7e_0_75)
                    (not_occupied seg_M_A4A7d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7d_0_75 ?a)
                    (not (not_blocked seg_M_A4A7d_0_75 ?a))
         )
)
(:action startup_seg_M_A4A7f_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7f_0_115)
                    (not_occupied seg_M_A7d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7d_0_60 ?a)
                    (not (not_blocked seg_M_A7d_0_60 ?a))
         )
)
(:action startup_seg_M_A4A7f_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A4A7f_0_115)
                    (not_occupied seg_M_A4A7e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7e_0_75 ?a)
                    (not (not_blocked seg_M_A4A7e_0_75 ?a))
         )
)
(:action startup_seg_M_A7a_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7a_0_120_934)
                    (not_occupied seg_A7_b_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_b_0_80_6226 ?a)
                    (not (not_blocked seg_A7_b_0_80_6226 ?a))
         )
)
(:action startup_seg_M_A7a_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7a_0_120_934)
                    (not_occupied seg_M_A7b_0_60)
                    (not_occupied seg_M_A7c_0_60)
                    (not_occupied seg_M_A7d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7b_0_60 ?a)
                    (not (not_blocked seg_M_A7b_0_60 ?a))
                    (blocked seg_M_A7c_0_60 ?a)
                    (not (not_blocked seg_M_A7c_0_60 ?a))
                    (blocked seg_M_A7d_0_60 ?a)
                    (not (not_blocked seg_M_A7d_0_60 ?a))
         )
)
(:action startup_seg_M_A7b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7b_0_60)
                    (not_occupied seg_M_A7A6a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6a_0_75 ?a)
                    (not (not_blocked seg_M_A7A6a_0_75 ?a))
         )
)
(:action startup_seg_M_A7b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7b_0_60)
                    (not_occupied seg_M_A7a_0_120_934)
                    (not_occupied seg_M_A7c_0_60)
                    (not_occupied seg_M_A7d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7a_0_120_934 ?a)
                    (not (not_blocked seg_M_A7a_0_120_934 ?a))
                    (blocked seg_M_A7c_0_60 ?a)
                    (not (not_blocked seg_M_A7c_0_60 ?a))
                    (blocked seg_M_A7d_0_60 ?a)
                    (not (not_blocked seg_M_A7d_0_60 ?a))
         )
)
(:action startup_seg_M_A7c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7c_0_60)
                    (not_occupied seg_N_A7a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7a_0_60 ?a)
                    (not (not_blocked seg_N_A7a_0_60 ?a))
         )
)
(:action startup_seg_M_A7c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7c_0_60)
                    (not_occupied seg_M_A7a_0_120_934)
                    (not_occupied seg_M_A7b_0_60)
                    (not_occupied seg_M_A7d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7a_0_120_934 ?a)
                    (not (not_blocked seg_M_A7a_0_120_934 ?a))
                    (blocked seg_M_A7b_0_60 ?a)
                    (not (not_blocked seg_M_A7b_0_60 ?a))
                    (blocked seg_M_A7d_0_60 ?a)
                    (not (not_blocked seg_M_A7d_0_60 ?a))
         )
)
(:action startup_seg_M_A7d_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7d_0_60)
                    (not_occupied seg_M_A4A7f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A4A7f_0_115 ?a)
                    (not (not_blocked seg_M_A4A7f_0_115 ?a))
         )
)
(:action startup_seg_M_A7d_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7d_0_60)
                    (not_occupied seg_M_A7a_0_120_934)
                    (not_occupied seg_M_A7b_0_60)
                    (not_occupied seg_M_A7c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7a_0_120_934 ?a)
                    (not (not_blocked seg_M_A7a_0_120_934 ?a))
                    (blocked seg_M_A7b_0_60 ?a)
                    (not (not_blocked seg_M_A7b_0_60 ?a))
                    (blocked seg_M_A7c_0_60 ?a)
                    (not (not_blocked seg_M_A7c_0_60 ?a))
         )
)
(:action startup_seg_A7_b_0_80_6226_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_b_0_80_6226)
                    (not_occupied seg_M_A7a_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7a_0_120_934 ?a)
                    (not (not_blocked seg_M_A7a_0_120_934 ?a))
         )
)
(:action startup_seg_A7_b_0_80_6226_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_b_0_80_6226)
                    (not_occupied seg_A7_b_1_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_b_1_0_80_6226 ?a)
                    (not (not_blocked seg_A7_b_1_0_80_6226 ?a))
         )
)
(:action startup_seg_M_A7A6a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6a_0_75)
                    (not_occupied seg_M_A7A6b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6b_0_75 ?a)
                    (not (not_blocked seg_M_A7A6b_0_75 ?a))
         )
)
(:action startup_seg_M_A7A6a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6a_0_75)
                    (not_occupied seg_M_A7b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7b_0_60 ?a)
                    (not (not_blocked seg_M_A7b_0_60 ?a))
         )
)
(:action startup_seg_N_A7a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7a_0_60)
                    (not_occupied seg_M_A7c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7c_0_60 ?a)
                    (not (not_blocked seg_M_A7c_0_60 ?a))
         )
)
(:action startup_seg_N_A7a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7a_0_60)
                    (not_occupied seg_N_A7b_0_60)
                    (not_occupied seg_N_A7c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7b_0_60 ?a)
                    (not (not_blocked seg_N_A7b_0_60 ?a))
                    (blocked seg_N_A7c_0_60 ?a)
                    (not (not_blocked seg_N_A7c_0_60 ?a))
         )
)
(:action startup_seg_M_A7A6b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6b_0_75)
                    (not_occupied seg_M_A7A6c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6c_0_75 ?a)
                    (not (not_blocked seg_M_A7A6c_0_75 ?a))
         )
)
(:action startup_seg_M_A7A6b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6b_0_75)
                    (not_occupied seg_M_A7A6a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6a_0_75 ?a)
                    (not (not_blocked seg_M_A7A6a_0_75 ?a))
         )
)
(:action startup_seg_M_A7A6c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6c_0_75)
                    (not_occupied seg_M_A7A6d_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6d_0_85 ?a)
                    (not (not_blocked seg_M_A7A6d_0_85 ?a))
         )
)
(:action startup_seg_M_A7A6c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6c_0_75)
                    (not_occupied seg_M_A7A6b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6b_0_75 ?a)
                    (not (not_blocked seg_M_A7A6b_0_75 ?a))
         )
)
(:action startup_seg_M_A7A6d_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6d_0_85)
                    (not_occupied seg_M_A6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6c_0_60 ?a)
                    (not (not_blocked seg_M_A6c_0_60 ?a))
         )
)
(:action startup_seg_M_A7A6d_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A7A6d_0_85)
                    (not_occupied seg_M_A7A6c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6c_0_75 ?a)
                    (not (not_blocked seg_M_A7A6c_0_75 ?a))
         )
)
(:action startup_seg_M_A6a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6a_0_60)
                    (not_occupied seg_M_A6A8a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8a_0_75 ?a)
                    (not (not_blocked seg_M_A6A8a_0_75 ?a))
         )
)
(:action startup_seg_M_A6a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6a_0_60)
                    (not_occupied seg_M_A6b_0_60)
                    (not_occupied seg_M_A6c_0_60)
                    (not_occupied seg_M_A6d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6b_0_60 ?a)
                    (not (not_blocked seg_M_A6b_0_60 ?a))
                    (blocked seg_M_A6c_0_60 ?a)
                    (not (not_blocked seg_M_A6c_0_60 ?a))
                    (blocked seg_M_A6d_0_120_934 ?a)
                    (not (not_blocked seg_M_A6d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A6b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6b_0_60)
                    (not_occupied seg_N_A6a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6a_0_60 ?a)
                    (not (not_blocked seg_N_A6a_0_60 ?a))
         )
)
(:action startup_seg_M_A6b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6b_0_60)
                    (not_occupied seg_M_A6a_0_60)
                    (not_occupied seg_M_A6c_0_60)
                    (not_occupied seg_M_A6d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6a_0_60 ?a)
                    (not (not_blocked seg_M_A6a_0_60 ?a))
                    (blocked seg_M_A6c_0_60 ?a)
                    (not (not_blocked seg_M_A6c_0_60 ?a))
                    (blocked seg_M_A6d_0_120_934 ?a)
                    (not (not_blocked seg_M_A6d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A6c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6c_0_60)
                    (not_occupied seg_M_A7A6d_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A7A6d_0_85 ?a)
                    (not (not_blocked seg_M_A7A6d_0_85 ?a))
         )
)
(:action startup_seg_M_A6c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6c_0_60)
                    (not_occupied seg_M_A6a_0_60)
                    (not_occupied seg_M_A6b_0_60)
                    (not_occupied seg_M_A6d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6a_0_60 ?a)
                    (not (not_blocked seg_M_A6a_0_60 ?a))
                    (blocked seg_M_A6b_0_60 ?a)
                    (not (not_blocked seg_M_A6b_0_60 ?a))
                    (blocked seg_M_A6d_0_120_934 ?a)
                    (not (not_blocked seg_M_A6d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A6d_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6d_0_120_934)
                    (not_occupied seg_A6_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A6_b_0_159_512 ?a)
                    (not (not_blocked seg_A6_b_0_159_512 ?a))
         )
)
(:action startup_seg_M_A6d_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6d_0_120_934)
                    (not_occupied seg_M_A6a_0_60)
                    (not_occupied seg_M_A6b_0_60)
                    (not_occupied seg_M_A6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6a_0_60 ?a)
                    (not (not_blocked seg_M_A6a_0_60 ?a))
                    (blocked seg_M_A6b_0_60 ?a)
                    (not (not_blocked seg_M_A6b_0_60 ?a))
                    (blocked seg_M_A6c_0_60 ?a)
                    (not (not_blocked seg_M_A6c_0_60 ?a))
         )
)
(:action startup_seg_M_A6A8a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8a_0_75)
                    (not_occupied seg_M_A6A8b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8b_0_75 ?a)
                    (not (not_blocked seg_M_A6A8b_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8a_0_75)
                    (not_occupied seg_M_A6a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6a_0_60 ?a)
                    (not (not_blocked seg_M_A6a_0_60 ?a))
         )
)
(:action startup_seg_N_A6a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6a_0_60)
                    (not_occupied seg_M_A6b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6b_0_60 ?a)
                    (not (not_blocked seg_M_A6b_0_60 ?a))
         )
)
(:action startup_seg_N_A6a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6a_0_60)
                    (not_occupied seg_N_A6b_0_60)
                    (not_occupied seg_N_A6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6b_0_60 ?a)
                    (not (not_blocked seg_N_A6b_0_60 ?a))
                    (blocked seg_N_A6c_0_60 ?a)
                    (not (not_blocked seg_N_A6c_0_60 ?a))
         )
)
(:action startup_seg_A6_b_0_159_512_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A6_b_0_159_512)
                    (not_occupied seg_M_A6d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6d_0_120_934 ?a)
                    (not (not_blocked seg_M_A6d_0_120_934 ?a))
         )
)
(:action startup_seg_A6_b_0_159_512_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A6_b_0_159_512)
                    (not_occupied seg_A6_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A6_a_0_158_647 ?a)
                    (not (not_blocked seg_A6_a_0_158_647 ?a))
         )
)
(:action startup_seg_M_A6A8b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8b_0_75)
                    (not_occupied seg_M_A6A8c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8c_0_75 ?a)
                    (not (not_blocked seg_M_A6A8c_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8b_0_75)
                    (not_occupied seg_M_A6A8a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8a_0_75 ?a)
                    (not (not_blocked seg_M_A6A8a_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8c_0_75)
                    (not_occupied seg_M_A6A8d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8d_0_75 ?a)
                    (not (not_blocked seg_M_A6A8d_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8c_0_75)
                    (not_occupied seg_M_A6A8b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8b_0_75 ?a)
                    (not (not_blocked seg_M_A6A8b_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8d_0_75)
                    (not_occupied seg_M_A6A8e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8e_0_75 ?a)
                    (not (not_blocked seg_M_A6A8e_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8d_0_75)
                    (not_occupied seg_M_A6A8c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8c_0_75 ?a)
                    (not (not_blocked seg_M_A6A8c_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8e_0_75)
                    (not_occupied seg_M_A6A8f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8f_0_115 ?a)
                    (not (not_blocked seg_M_A6A8f_0_115 ?a))
         )
)
(:action startup_seg_M_A6A8e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8e_0_75)
                    (not_occupied seg_M_A6A8d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8d_0_75 ?a)
                    (not (not_blocked seg_M_A6A8d_0_75 ?a))
         )
)
(:action startup_seg_M_A6A8f_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8f_0_115)
                    (not_occupied seg_M_A8c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8c_0_60 ?a)
                    (not (not_blocked seg_M_A8c_0_60 ?a))
         )
)
(:action startup_seg_M_A6A8f_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A6A8f_0_115)
                    (not_occupied seg_M_A6A8e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8e_0_75 ?a)
                    (not (not_blocked seg_M_A6A8e_0_75 ?a))
         )
)
(:action startup_seg_M_A8a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8a_0_60)
                    (not_occupied seg_M_A8A9a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9a_0_75 ?a)
                    (not (not_blocked seg_M_A8A9a_0_75 ?a))
         )
)
(:action startup_seg_M_A8a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8a_0_60)
                    (not_occupied seg_M_A8b_0_60)
                    (not_occupied seg_M_A8c_0_60)
                    (not_occupied seg_M_A8d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8b_0_60 ?a)
                    (not (not_blocked seg_M_A8b_0_60 ?a))
                    (blocked seg_M_A8c_0_60 ?a)
                    (not (not_blocked seg_M_A8c_0_60 ?a))
                    (blocked seg_M_A8d_0_120_934 ?a)
                    (not (not_blocked seg_M_A8d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A8b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8b_0_60)
                    (not_occupied seg_N_A8a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8a_0_60 ?a)
                    (not (not_blocked seg_N_A8a_0_60 ?a))
         )
)
(:action startup_seg_M_A8b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8b_0_60)
                    (not_occupied seg_M_A8a_0_60)
                    (not_occupied seg_M_A8c_0_60)
                    (not_occupied seg_M_A8d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8a_0_60 ?a)
                    (not (not_blocked seg_M_A8a_0_60 ?a))
                    (blocked seg_M_A8c_0_60 ?a)
                    (not (not_blocked seg_M_A8c_0_60 ?a))
                    (blocked seg_M_A8d_0_120_934 ?a)
                    (not (not_blocked seg_M_A8d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A8c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8c_0_60)
                    (not_occupied seg_M_A6A8f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A6A8f_0_115 ?a)
                    (not (not_blocked seg_M_A6A8f_0_115 ?a))
         )
)
(:action startup_seg_M_A8c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8c_0_60)
                    (not_occupied seg_M_A8a_0_60)
                    (not_occupied seg_M_A8b_0_60)
                    (not_occupied seg_M_A8d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8a_0_60 ?a)
                    (not (not_blocked seg_M_A8a_0_60 ?a))
                    (blocked seg_M_A8b_0_60 ?a)
                    (not (not_blocked seg_M_A8b_0_60 ?a))
                    (blocked seg_M_A8d_0_120_934 ?a)
                    (not (not_blocked seg_M_A8d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A8d_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8d_0_120_934)
                    (not_occupied seg_A8_b_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_b_0_80_6226 ?a)
                    (not (not_blocked seg_A8_b_0_80_6226 ?a))
         )
)
(:action startup_seg_M_A8d_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8d_0_120_934)
                    (not_occupied seg_M_A8a_0_60)
                    (not_occupied seg_M_A8b_0_60)
                    (not_occupied seg_M_A8c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8a_0_60 ?a)
                    (not (not_blocked seg_M_A8a_0_60 ?a))
                    (blocked seg_M_A8b_0_60 ?a)
                    (not (not_blocked seg_M_A8b_0_60 ?a))
                    (blocked seg_M_A8c_0_60 ?a)
                    (not (not_blocked seg_M_A8c_0_60 ?a))
         )
)
(:action startup_seg_M_A8A9a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9a_0_75)
                    (not_occupied seg_M_A8A9b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9b_0_75 ?a)
                    (not (not_blocked seg_M_A8A9b_0_75 ?a))
         )
)
(:action startup_seg_M_A8A9a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9a_0_75)
                    (not_occupied seg_M_A8a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8a_0_60 ?a)
                    (not (not_blocked seg_M_A8a_0_60 ?a))
         )
)
(:action startup_seg_N_A8a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8a_0_60)
                    (not_occupied seg_M_A8b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8b_0_60 ?a)
                    (not (not_blocked seg_M_A8b_0_60 ?a))
         )
)
(:action startup_seg_N_A8a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8a_0_60)
                    (not_occupied seg_N_A8b_0_60)
                    (not_occupied seg_N_A8c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8b_0_60 ?a)
                    (not (not_blocked seg_N_A8b_0_60 ?a))
                    (blocked seg_N_A8c_0_60 ?a)
                    (not (not_blocked seg_N_A8c_0_60 ?a))
         )
)
(:action startup_seg_A8_b_0_80_6226_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_b_0_80_6226)
                    (not_occupied seg_M_A8d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8d_0_120_934 ?a)
                    (not (not_blocked seg_M_A8d_0_120_934 ?a))
         )
)
(:action startup_seg_A8_b_0_80_6226_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_b_0_80_6226)
                    (not_occupied seg_A8_b_1_0_79_7559)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_b_1_0_79_7559 ?a)
                    (not (not_blocked seg_A8_b_1_0_79_7559 ?a))
         )
)
(:action startup_seg_M_A8A9b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9b_0_75)
                    (not_occupied seg_M_A8A9c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9c_0_75 ?a)
                    (not (not_blocked seg_M_A8A9c_0_75 ?a))
         )
)
(:action startup_seg_M_A8A9b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9b_0_75)
                    (not_occupied seg_M_A8A9a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9a_0_75 ?a)
                    (not (not_blocked seg_M_A8A9a_0_75 ?a))
         )
)
(:action startup_seg_M_A8A9c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9c_0_75)
                    (not_occupied seg_M_A8A9d_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9d_0_85 ?a)
                    (not (not_blocked seg_M_A8A9d_0_85 ?a))
         )
)
(:action startup_seg_M_A8A9c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9c_0_75)
                    (not_occupied seg_M_A8A9b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9b_0_75 ?a)
                    (not (not_blocked seg_M_A8A9b_0_75 ?a))
         )
)
(:action startup_seg_M_A8A9d_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9d_0_85)
                    (not_occupied seg_M_A9c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9c_0_60 ?a)
                    (not (not_blocked seg_M_A9c_0_60 ?a))
         )
)
(:action startup_seg_M_A8A9d_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A8A9d_0_85)
                    (not_occupied seg_M_A8A9c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9c_0_75 ?a)
                    (not (not_blocked seg_M_A8A9c_0_75 ?a))
         )
)
(:action startup_seg_M_A9a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9a_0_60)
                    (not_occupied seg_M_A9A10a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10a_0_75 ?a)
                    (not (not_blocked seg_M_A9A10a_0_75 ?a))
         )
)
(:action startup_seg_M_A9a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9a_0_60)
                    (not_occupied seg_M_A9b_0_60)
                    (not_occupied seg_M_A9c_0_60)
                    (not_occupied seg_M_A9d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9b_0_60 ?a)
                    (not (not_blocked seg_M_A9b_0_60 ?a))
                    (blocked seg_M_A9c_0_60 ?a)
                    (not (not_blocked seg_M_A9c_0_60 ?a))
                    (blocked seg_M_A9d_0_120_934 ?a)
                    (not (not_blocked seg_M_A9d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A9b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9b_0_60)
                    (not_occupied seg_N_A9a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9a_0_60 ?a)
                    (not (not_blocked seg_N_A9a_0_60 ?a))
         )
)
(:action startup_seg_M_A9b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9b_0_60)
                    (not_occupied seg_M_A9a_0_60)
                    (not_occupied seg_M_A9c_0_60)
                    (not_occupied seg_M_A9d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9a_0_60 ?a)
                    (not (not_blocked seg_M_A9a_0_60 ?a))
                    (blocked seg_M_A9c_0_60 ?a)
                    (not (not_blocked seg_M_A9c_0_60 ?a))
                    (blocked seg_M_A9d_0_120_934 ?a)
                    (not (not_blocked seg_M_A9d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A9c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9c_0_60)
                    (not_occupied seg_M_A8A9d_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A8A9d_0_85 ?a)
                    (not (not_blocked seg_M_A8A9d_0_85 ?a))
         )
)
(:action startup_seg_M_A9c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9c_0_60)
                    (not_occupied seg_M_A9a_0_60)
                    (not_occupied seg_M_A9b_0_60)
                    (not_occupied seg_M_A9d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9a_0_60 ?a)
                    (not (not_blocked seg_M_A9a_0_60 ?a))
                    (blocked seg_M_A9b_0_60 ?a)
                    (not (not_blocked seg_M_A9b_0_60 ?a))
                    (blocked seg_M_A9d_0_120_934 ?a)
                    (not (not_blocked seg_M_A9d_0_120_934 ?a))
         )
)
(:action startup_seg_M_A9d_0_120_934_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9d_0_120_934)
                    (not_occupied seg_A9_b_0_159_512)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A9_b_0_159_512 ?a)
                    (not (not_blocked seg_A9_b_0_159_512 ?a))
         )
)
(:action startup_seg_M_A9d_0_120_934_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9d_0_120_934)
                    (not_occupied seg_M_A9a_0_60)
                    (not_occupied seg_M_A9b_0_60)
                    (not_occupied seg_M_A9c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9a_0_60 ?a)
                    (not (not_blocked seg_M_A9a_0_60 ?a))
                    (blocked seg_M_A9b_0_60 ?a)
                    (not (not_blocked seg_M_A9b_0_60 ?a))
                    (blocked seg_M_A9c_0_60 ?a)
                    (not (not_blocked seg_M_A9c_0_60 ?a))
         )
)
(:action startup_seg_M_A9A10a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10a_0_75)
                    (not_occupied seg_M_A9A10b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10b_0_75 ?a)
                    (not (not_blocked seg_M_A9A10b_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10a_0_75)
                    (not_occupied seg_M_A9a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9a_0_60 ?a)
                    (not (not_blocked seg_M_A9a_0_60 ?a))
         )
)
(:action startup_seg_N_A9a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9a_0_60)
                    (not_occupied seg_M_A9b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9b_0_60 ?a)
                    (not (not_blocked seg_M_A9b_0_60 ?a))
         )
)
(:action startup_seg_N_A9a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9a_0_60)
                    (not_occupied seg_N_A9b_0_60)
                    (not_occupied seg_N_A9c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9b_0_60 ?a)
                    (not (not_blocked seg_N_A9b_0_60 ?a))
                    (blocked seg_N_A9c_0_60 ?a)
                    (not (not_blocked seg_N_A9c_0_60 ?a))
         )
)
(:action startup_seg_A9_b_0_159_512_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A9_b_0_159_512)
                    (not_occupied seg_M_A9d_0_120_934)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9d_0_120_934 ?a)
                    (not (not_blocked seg_M_A9d_0_120_934 ?a))
         )
)
(:action startup_seg_A9_b_0_159_512_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A9_b_0_159_512)
                    (not_occupied seg_A9_a_0_158_647)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A9_a_0_158_647 ?a)
                    (not (not_blocked seg_A9_a_0_158_647 ?a))
         )
)
(:action startup_seg_M_A9A10b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10b_0_75)
                    (not_occupied seg_M_A9A10c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10c_0_75 ?a)
                    (not (not_blocked seg_M_A9A10c_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10b_0_75)
                    (not_occupied seg_M_A9A10a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10a_0_75 ?a)
                    (not (not_blocked seg_M_A9A10a_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10c_0_75)
                    (not_occupied seg_M_A9A10d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10d_0_75 ?a)
                    (not (not_blocked seg_M_A9A10d_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10c_0_75)
                    (not_occupied seg_M_A9A10b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10b_0_75 ?a)
                    (not (not_blocked seg_M_A9A10b_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10d_0_75)
                    (not_occupied seg_M_A9A10e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10e_0_75 ?a)
                    (not (not_blocked seg_M_A9A10e_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10d_0_75)
                    (not_occupied seg_M_A9A10c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10c_0_75 ?a)
                    (not (not_blocked seg_M_A9A10c_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10e_0_75)
                    (not_occupied seg_M_A9A10f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10f_0_75 ?a)
                    (not (not_blocked seg_M_A9A10f_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10e_0_75)
                    (not_occupied seg_M_A9A10d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10d_0_75 ?a)
                    (not (not_blocked seg_M_A9A10d_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10f_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10f_0_75)
                    (not_occupied seg_M_A9A10g_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10g_0_80 ?a)
                    (not (not_blocked seg_M_A9A10g_0_80 ?a))
         )
)
(:action startup_seg_M_A9A10f_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10f_0_75)
                    (not_occupied seg_M_A9A10e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10e_0_75 ?a)
                    (not (not_blocked seg_M_A9A10e_0_75 ?a))
         )
)
(:action startup_seg_M_A9A10g_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10g_0_80)
                    (not_occupied seg_M_A10c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10c_0_60 ?a)
                    (not (not_blocked seg_M_A10c_0_60 ?a))
         )
)
(:action startup_seg_M_A9A10g_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A9A10g_0_80)
                    (not_occupied seg_M_A9A10f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10f_0_75 ?a)
                    (not (not_blocked seg_M_A9A10f_0_75 ?a))
         )
)
(:action startup_seg_M_A10a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10a_0_60)
                    (not_occupied seg_A10_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A10_0_80 ?a)
                    (not (not_blocked seg_A10_0_80 ?a))
         )
)
(:action startup_seg_M_A10a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10a_0_60)
                    (not_occupied seg_M_A10b_0_60)
                    (not_occupied seg_M_A10c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10b_0_60 ?a)
                    (not (not_blocked seg_M_A10b_0_60 ?a))
                    (blocked seg_M_A10c_0_60 ?a)
                    (not (not_blocked seg_M_A10c_0_60 ?a))
         )
)
(:action startup_seg_M_A10b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10b_0_60)
                    (not_occupied seg_N_A10a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A10a_0_60 ?a)
                    (not (not_blocked seg_N_A10a_0_60 ?a))
         )
)
(:action startup_seg_M_A10b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10b_0_60)
                    (not_occupied seg_M_A10a_0_60)
                    (not_occupied seg_M_A10c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10a_0_60 ?a)
                    (not (not_blocked seg_M_A10a_0_60 ?a))
                    (blocked seg_M_A10c_0_60 ?a)
                    (not (not_blocked seg_M_A10c_0_60 ?a))
         )
)
(:action startup_seg_M_A10c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10c_0_60)
                    (not_occupied seg_M_A9A10g_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A9A10g_0_80 ?a)
                    (not (not_blocked seg_M_A9A10g_0_80 ?a))
         )
)
(:action startup_seg_M_A10c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_M_A10c_0_60)
                    (not_occupied seg_M_A10a_0_60)
                    (not_occupied seg_M_A10b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10a_0_60 ?a)
                    (not (not_blocked seg_M_A10a_0_60 ?a))
                    (blocked seg_M_A10b_0_60 ?a)
                    (not (not_blocked seg_M_A10b_0_60 ?a))
         )
)
(:action startup_seg_A10_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A10_0_80)
                    (not_occupied seg_M_A10a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10a_0_60 ?a)
                    (not (not_blocked seg_M_A10a_0_60 ?a))
         )
)
(:action startup_seg_A10_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A10_0_80)
                    (not_occupied seg_A10_1_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A10_1_0_80 ?a)
                    (not (not_blocked seg_A10_1_0_80 ?a))
         )
)
(:action startup_seg_N_A10a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A10a_0_60)
                    (not_occupied seg_M_A10b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_M_A10b_0_60 ?a)
                    (not (not_blocked seg_M_A10b_0_60 ?a))
         )
)
(:action startup_seg_N_A10a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A10a_0_60)
                    (not_occupied seg_N_A10b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A10b_0_60 ?a)
                    (not (not_blocked seg_N_A10b_0_60 ?a))
         )
)
(:action startup_seg_N_A2a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2a_0_60)
                    (not_occupied seg_A2_c_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_c_0_100 ?a)
                    (not (not_blocked seg_A2_c_0_100 ?a))
         )
)
(:action startup_seg_N_A2a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2a_0_60)
                    (not_occupied seg_N_A2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2b_0_60 ?a)
                    (not (not_blocked seg_N_A2b_0_60 ?a))
         )
)
(:action startup_seg_N_A2b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2b_0_60)
                    (not_occupied seg_N_A2A3a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3a_0_75 ?a)
                    (not (not_blocked seg_N_A2A3a_0_75 ?a))
         )
)
(:action startup_seg_N_A2b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2b_0_60)
                    (not_occupied seg_N_A2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2a_0_60 ?a)
                    (not (not_blocked seg_N_A2a_0_60 ?a))
         )
)
(:action startup_seg_A2_c_0_100_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_c_0_100)
                    (not_occupied seg_N_A2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2a_0_60 ?a)
                    (not (not_blocked seg_N_A2a_0_60 ?a))
         )
)
(:action startup_seg_A2_c_0_100_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_c_0_100)
                    (not_occupied seg_A2_b_0_90)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_b_0_90 ?a)
                    (not (not_blocked seg_A2_b_0_90 ?a))
         )
)
(:action startup_seg_N_A2A3a_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3a_0_75)
                    (not_occupied seg_N_A2A3b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3b_0_75 ?a)
                    (not (not_blocked seg_N_A2A3b_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3a_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3a_0_75)
                    (not_occupied seg_N_A2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2b_0_60 ?a)
                    (not (not_blocked seg_N_A2b_0_60 ?a))
         )
)
(:action startup_seg_N_A2A3b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3b_0_75)
                    (not_occupied seg_N_A2A3c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3c_0_75 ?a)
                    (not (not_blocked seg_N_A2A3c_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3b_0_75)
                    (not_occupied seg_N_A2A3a_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3a_0_75 ?a)
                    (not (not_blocked seg_N_A2A3a_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3c_0_75)
                    (not_occupied seg_N_A2A3d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3d_0_75 ?a)
                    (not (not_blocked seg_N_A2A3d_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3c_0_75)
                    (not_occupied seg_N_A2A3b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3b_0_75 ?a)
                    (not (not_blocked seg_N_A2A3b_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3d_0_75)
                    (not_occupied seg_N_A2A3e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3e_0_75 ?a)
                    (not (not_blocked seg_N_A2A3e_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3d_0_75)
                    (not_occupied seg_N_A2A3c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3c_0_75 ?a)
                    (not (not_blocked seg_N_A2A3c_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3e_0_75)
                    (not_occupied seg_N_A2A3f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3f_0_115 ?a)
                    (not (not_blocked seg_N_A2A3f_0_115 ?a))
         )
)
(:action startup_seg_N_A2A3e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3e_0_75)
                    (not_occupied seg_N_A2A3d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3d_0_75 ?a)
                    (not (not_blocked seg_N_A2A3d_0_75 ?a))
         )
)
(:action startup_seg_N_A2A3f_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3f_0_115)
                    (not_occupied seg_N_A3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3d_0_60 ?a)
                    (not (not_blocked seg_N_A3d_0_60 ?a))
         )
)
(:action startup_seg_N_A2A3f_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A2A3f_0_115)
                    (not_occupied seg_N_A2A3e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3e_0_75 ?a)
                    (not (not_blocked seg_N_A2A3e_0_75 ?a))
         )
)
(:action startup_seg_N_A3b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3b_0_60)
                    (not_occupied seg_N_N2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2c_0_60 ?a)
                    (not (not_blocked seg_N_N2c_0_60 ?a))
         )
)
(:action startup_seg_N_A3b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3b_0_60)
                    (not_occupied seg_N_A3a_0_60)
                    (not_occupied seg_N_A3c_0_60)
                    (not_occupied seg_N_A3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3a_0_60 ?a)
                    (not (not_blocked seg_N_A3a_0_60 ?a))
                    (blocked seg_N_A3c_0_60 ?a)
                    (not (not_blocked seg_N_A3c_0_60 ?a))
                    (blocked seg_N_A3d_0_60 ?a)
                    (not (not_blocked seg_N_A3d_0_60 ?a))
         )
)
(:action startup_seg_N_A3c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3c_0_60)
                    (not_occupied seg_N1_0_108)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N1_0_108 ?a)
                    (not (not_blocked seg_N1_0_108 ?a))
         )
)
(:action startup_seg_N_A3c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3c_0_60)
                    (not_occupied seg_N_A3a_0_60)
                    (not_occupied seg_N_A3b_0_60)
                    (not_occupied seg_N_A3d_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3a_0_60 ?a)
                    (not (not_blocked seg_N_A3a_0_60 ?a))
                    (blocked seg_N_A3b_0_60 ?a)
                    (not (not_blocked seg_N_A3b_0_60 ?a))
                    (blocked seg_N_A3d_0_60 ?a)
                    (not (not_blocked seg_N_A3d_0_60 ?a))
         )
)
(:action startup_seg_N_A3d_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3d_0_60)
                    (not_occupied seg_N_A2A3f_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A2A3f_0_115 ?a)
                    (not (not_blocked seg_N_A2A3f_0_115 ?a))
         )
)
(:action startup_seg_N_A3d_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A3d_0_60)
                    (not_occupied seg_N_A3a_0_60)
                    (not_occupied seg_N_A3b_0_60)
                    (not_occupied seg_N_A3c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3a_0_60 ?a)
                    (not (not_blocked seg_N_A3a_0_60 ?a))
                    (blocked seg_N_A3b_0_60 ?a)
                    (not (not_blocked seg_N_A3b_0_60 ?a))
                    (blocked seg_N_A3c_0_60 ?a)
                    (not (not_blocked seg_N_A3c_0_60 ?a))
         )
)
(:action startup_seg_N_N2c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2c_0_60)
                    (not_occupied seg_N_A3b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A3b_0_60 ?a)
                    (not (not_blocked seg_N_A3b_0_60 ?a))
         )
)
(:action startup_seg_N_N2c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2c_0_60)
                    (not_occupied seg_N_N2a_0_60)
                    (not_occupied seg_N_N2b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2a_0_60 ?a)
                    (not (not_blocked seg_N_N2a_0_60 ?a))
                    (blocked seg_N_N2b_0_60 ?a)
                    (not (not_blocked seg_N_N2b_0_60 ?a))
         )
)
(:action startup_seg_N_N2a_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2a_0_60)
                    (not_occupied seg_N_N2A4a_0_70)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4a_0_70 ?a)
                    (not (not_blocked seg_N_N2A4a_0_70 ?a))
         )
)
(:action startup_seg_N_N2a_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2a_0_60)
                    (not_occupied seg_N_N2b_0_60)
                    (not_occupied seg_N_N2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2b_0_60 ?a)
                    (not (not_blocked seg_N_N2b_0_60 ?a))
                    (blocked seg_N_N2c_0_60 ?a)
                    (not (not_blocked seg_N_N2c_0_60 ?a))
         )
)
(:action startup_seg_N_N2b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2b_0_60)
                    (not_occupied seg_N2_0_108)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N2_0_108 ?a)
                    (not (not_blocked seg_N2_0_108 ?a))
         )
)
(:action startup_seg_N_N2b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2b_0_60)
                    (not_occupied seg_N_N2a_0_60)
                    (not_occupied seg_N_N2c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2a_0_60 ?a)
                    (not (not_blocked seg_N_N2a_0_60 ?a))
                    (blocked seg_N_N2c_0_60 ?a)
                    (not (not_blocked seg_N_N2c_0_60 ?a))
         )
)
(:action startup_seg_N_N2A4a_0_70_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4a_0_70)
                    (not_occupied seg_N_N2A4b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4b_0_75 ?a)
                    (not (not_blocked seg_N_N2A4b_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4a_0_70_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4a_0_70)
                    (not_occupied seg_N_N2a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2a_0_60 ?a)
                    (not (not_blocked seg_N_N2a_0_60 ?a))
         )
)
(:action startup_seg_N_N2A4b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4b_0_75)
                    (not_occupied seg_N_N2A4c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4c_0_75 ?a)
                    (not (not_blocked seg_N_N2A4c_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4b_0_75)
                    (not_occupied seg_N_N2A4a_0_70)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4a_0_70 ?a)
                    (not (not_blocked seg_N_N2A4a_0_70 ?a))
         )
)
(:action startup_seg_N_N2A4c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4c_0_75)
                    (not_occupied seg_N_N2A4d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4d_0_75 ?a)
                    (not (not_blocked seg_N_N2A4d_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4c_0_75)
                    (not_occupied seg_N_N2A4b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4b_0_75 ?a)
                    (not (not_blocked seg_N_N2A4b_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4d_0_75)
                    (not_occupied seg_N_N2A4e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4e_0_75 ?a)
                    (not (not_blocked seg_N_N2A4e_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4d_0_75)
                    (not_occupied seg_N_N2A4c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4c_0_75 ?a)
                    (not (not_blocked seg_N_N2A4c_0_75 ?a))
         )
)
(:action startup_seg_N_N2A4e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4e_0_75)
                    (not_occupied seg_N_A4c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4c_0_60 ?a)
                    (not (not_blocked seg_N_A4c_0_60 ?a))
         )
)
(:action startup_seg_N_N2A4e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_N2A4e_0_75)
                    (not_occupied seg_N_N2A4d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4d_0_75 ?a)
                    (not (not_blocked seg_N_N2A4d_0_75 ?a))
         )
)
(:action startup_seg_N_A4b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4b_0_60)
                    (not_occupied seg_N_A4A7a_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7a_0_115 ?a)
                    (not (not_blocked seg_N_A4A7a_0_115 ?a))
         )
)
(:action startup_seg_N_A4b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4b_0_60)
                    (not_occupied seg_N_A4a_0_60)
                    (not_occupied seg_N_A4c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4a_0_60 ?a)
                    (not (not_blocked seg_N_A4a_0_60 ?a))
                    (blocked seg_N_A4c_0_60 ?a)
                    (not (not_blocked seg_N_A4c_0_60 ?a))
         )
)
(:action startup_seg_N_A4c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4c_0_60)
                    (not_occupied seg_N_N2A4e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_N2A4e_0_75 ?a)
                    (not (not_blocked seg_N_N2A4e_0_75 ?a))
         )
)
(:action startup_seg_N_A4c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4c_0_60)
                    (not_occupied seg_N_A4a_0_60)
                    (not_occupied seg_N_A4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4a_0_60 ?a)
                    (not (not_blocked seg_N_A4a_0_60 ?a))
                    (blocked seg_N_A4b_0_60 ?a)
                    (not (not_blocked seg_N_A4b_0_60 ?a))
         )
)
(:action startup_seg_N_A4A7a_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7a_0_115)
                    (not_occupied seg_N_A4A7b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7b_0_75 ?a)
                    (not (not_blocked seg_N_A4A7b_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7a_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7a_0_115)
                    (not_occupied seg_N_A4b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4b_0_60 ?a)
                    (not (not_blocked seg_N_A4b_0_60 ?a))
         )
)
(:action startup_seg_N_A4A7b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7b_0_75)
                    (not_occupied seg_N_A4A7c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7c_0_75 ?a)
                    (not (not_blocked seg_N_A4A7c_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7b_0_75)
                    (not_occupied seg_N_A4A7a_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7a_0_115 ?a)
                    (not (not_blocked seg_N_A4A7a_0_115 ?a))
         )
)
(:action startup_seg_N_A4A7c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7c_0_75)
                    (not_occupied seg_N_A4A7d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7d_0_75 ?a)
                    (not (not_blocked seg_N_A4A7d_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7c_0_75)
                    (not_occupied seg_N_A4A7b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7b_0_75 ?a)
                    (not (not_blocked seg_N_A4A7b_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7d_0_75)
                    (not_occupied seg_N_A4A7e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7e_0_75 ?a)
                    (not (not_blocked seg_N_A4A7e_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7d_0_75)
                    (not_occupied seg_N_A4A7c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7c_0_75 ?a)
                    (not (not_blocked seg_N_A4A7c_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7e_0_75)
                    (not_occupied seg_N_A4A7f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7f_0_75 ?a)
                    (not (not_blocked seg_N_A4A7f_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7e_0_75)
                    (not_occupied seg_N_A4A7d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7d_0_75 ?a)
                    (not (not_blocked seg_N_A4A7d_0_75 ?a))
         )
)
(:action startup_seg_N_A4A7f_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7f_0_75)
                    (not_occupied seg_N_A7c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7c_0_60 ?a)
                    (not (not_blocked seg_N_A7c_0_60 ?a))
         )
)
(:action startup_seg_N_A4A7f_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A4A7f_0_75)
                    (not_occupied seg_N_A4A7e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7e_0_75 ?a)
                    (not (not_blocked seg_N_A4A7e_0_75 ?a))
         )
)
(:action startup_seg_N_A7b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7b_0_60)
                    (not_occupied seg_N_A7A6a_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6a_0_85 ?a)
                    (not (not_blocked seg_N_A7A6a_0_85 ?a))
         )
)
(:action startup_seg_N_A7b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7b_0_60)
                    (not_occupied seg_N_A7a_0_60)
                    (not_occupied seg_N_A7c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7a_0_60 ?a)
                    (not (not_blocked seg_N_A7a_0_60 ?a))
                    (blocked seg_N_A7c_0_60 ?a)
                    (not (not_blocked seg_N_A7c_0_60 ?a))
         )
)
(:action startup_seg_N_A7c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7c_0_60)
                    (not_occupied seg_N_A4A7f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A4A7f_0_75 ?a)
                    (not (not_blocked seg_N_A4A7f_0_75 ?a))
         )
)
(:action startup_seg_N_A7c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7c_0_60)
                    (not_occupied seg_N_A7a_0_60)
                    (not_occupied seg_N_A7b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7a_0_60 ?a)
                    (not (not_blocked seg_N_A7a_0_60 ?a))
                    (blocked seg_N_A7b_0_60 ?a)
                    (not (not_blocked seg_N_A7b_0_60 ?a))
         )
)
(:action startup_seg_N_A7A6a_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6a_0_85)
                    (not_occupied seg_N_A7A6b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6b_0_75 ?a)
                    (not (not_blocked seg_N_A7A6b_0_75 ?a))
         )
)
(:action startup_seg_N_A7A6a_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6a_0_85)
                    (not_occupied seg_N_A7b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7b_0_60 ?a)
                    (not (not_blocked seg_N_A7b_0_60 ?a))
         )
)
(:action startup_seg_N_A7A6b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6b_0_75)
                    (not_occupied seg_N_A7A6c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6c_0_75 ?a)
                    (not (not_blocked seg_N_A7A6c_0_75 ?a))
         )
)
(:action startup_seg_N_A7A6b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6b_0_75)
                    (not_occupied seg_N_A7A6a_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6a_0_85 ?a)
                    (not (not_blocked seg_N_A7A6a_0_85 ?a))
         )
)
(:action startup_seg_N_A7A6c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6c_0_75)
                    (not_occupied seg_N_A7A6d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6d_0_75 ?a)
                    (not (not_blocked seg_N_A7A6d_0_75 ?a))
         )
)
(:action startup_seg_N_A7A6c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6c_0_75)
                    (not_occupied seg_N_A7A6b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6b_0_75 ?a)
                    (not (not_blocked seg_N_A7A6b_0_75 ?a))
         )
)
(:action startup_seg_N_A7A6d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6d_0_75)
                    (not_occupied seg_N_A6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6c_0_60 ?a)
                    (not (not_blocked seg_N_A6c_0_60 ?a))
         )
)
(:action startup_seg_N_A7A6d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A7A6d_0_75)
                    (not_occupied seg_N_A7A6c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6c_0_75 ?a)
                    (not (not_blocked seg_N_A7A6c_0_75 ?a))
         )
)
(:action startup_seg_N_A6b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6b_0_60)
                    (not_occupied seg_N_A6A8a_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8a_0_115 ?a)
                    (not (not_blocked seg_N_A6A8a_0_115 ?a))
         )
)
(:action startup_seg_N_A6b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6b_0_60)
                    (not_occupied seg_N_A6a_0_60)
                    (not_occupied seg_N_A6c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6a_0_60 ?a)
                    (not (not_blocked seg_N_A6a_0_60 ?a))
                    (blocked seg_N_A6c_0_60 ?a)
                    (not (not_blocked seg_N_A6c_0_60 ?a))
         )
)
(:action startup_seg_N_A6c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6c_0_60)
                    (not_occupied seg_N_A7A6d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A7A6d_0_75 ?a)
                    (not (not_blocked seg_N_A7A6d_0_75 ?a))
         )
)
(:action startup_seg_N_A6c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6c_0_60)
                    (not_occupied seg_N_A6a_0_60)
                    (not_occupied seg_N_A6b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6a_0_60 ?a)
                    (not (not_blocked seg_N_A6a_0_60 ?a))
                    (blocked seg_N_A6b_0_60 ?a)
                    (not (not_blocked seg_N_A6b_0_60 ?a))
         )
)
(:action startup_seg_N_A6A8a_0_115_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8a_0_115)
                    (not_occupied seg_N_A6A8b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8b_0_75 ?a)
                    (not (not_blocked seg_N_A6A8b_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8a_0_115_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8a_0_115)
                    (not_occupied seg_N_A6b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6b_0_60 ?a)
                    (not (not_blocked seg_N_A6b_0_60 ?a))
         )
)
(:action startup_seg_N_A6A8b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8b_0_75)
                    (not_occupied seg_N_A6A8c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8c_0_75 ?a)
                    (not (not_blocked seg_N_A6A8c_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8b_0_75)
                    (not_occupied seg_N_A6A8a_0_115)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8a_0_115 ?a)
                    (not (not_blocked seg_N_A6A8a_0_115 ?a))
         )
)
(:action startup_seg_N_A6A8c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8c_0_75)
                    (not_occupied seg_N_A6A8d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8d_0_75 ?a)
                    (not (not_blocked seg_N_A6A8d_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8c_0_75)
                    (not_occupied seg_N_A6A8b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8b_0_75 ?a)
                    (not (not_blocked seg_N_A6A8b_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8d_0_75)
                    (not_occupied seg_N_A6A8e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8e_0_75 ?a)
                    (not (not_blocked seg_N_A6A8e_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8d_0_75)
                    (not_occupied seg_N_A6A8c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8c_0_75 ?a)
                    (not (not_blocked seg_N_A6A8c_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8e_0_75)
                    (not_occupied seg_N_A6A8f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8f_0_75 ?a)
                    (not (not_blocked seg_N_A6A8f_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8e_0_75)
                    (not_occupied seg_N_A6A8d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8d_0_75 ?a)
                    (not (not_blocked seg_N_A6A8d_0_75 ?a))
         )
)
(:action startup_seg_N_A6A8f_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8f_0_75)
                    (not_occupied seg_N_A8c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8c_0_60 ?a)
                    (not (not_blocked seg_N_A8c_0_60 ?a))
         )
)
(:action startup_seg_N_A6A8f_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A6A8f_0_75)
                    (not_occupied seg_N_A6A8e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8e_0_75 ?a)
                    (not (not_blocked seg_N_A6A8e_0_75 ?a))
         )
)
(:action startup_seg_N_A8b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8b_0_60)
                    (not_occupied seg_N_A8A9a_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9a_0_85 ?a)
                    (not (not_blocked seg_N_A8A9a_0_85 ?a))
         )
)
(:action startup_seg_N_A8b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8b_0_60)
                    (not_occupied seg_N_A8a_0_60)
                    (not_occupied seg_N_A8c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8a_0_60 ?a)
                    (not (not_blocked seg_N_A8a_0_60 ?a))
                    (blocked seg_N_A8c_0_60 ?a)
                    (not (not_blocked seg_N_A8c_0_60 ?a))
         )
)
(:action startup_seg_N_A8c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8c_0_60)
                    (not_occupied seg_N_A6A8f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A6A8f_0_75 ?a)
                    (not (not_blocked seg_N_A6A8f_0_75 ?a))
         )
)
(:action startup_seg_N_A8c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8c_0_60)
                    (not_occupied seg_N_A8a_0_60)
                    (not_occupied seg_N_A8b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8a_0_60 ?a)
                    (not (not_blocked seg_N_A8a_0_60 ?a))
                    (blocked seg_N_A8b_0_60 ?a)
                    (not (not_blocked seg_N_A8b_0_60 ?a))
         )
)
(:action startup_seg_N_A8A9a_0_85_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9a_0_85)
                    (not_occupied seg_N_A8A9b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9b_0_75 ?a)
                    (not (not_blocked seg_N_A8A9b_0_75 ?a))
         )
)
(:action startup_seg_N_A8A9a_0_85_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9a_0_85)
                    (not_occupied seg_N_A8b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8b_0_60 ?a)
                    (not (not_blocked seg_N_A8b_0_60 ?a))
         )
)
(:action startup_seg_N_A8A9b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9b_0_75)
                    (not_occupied seg_N_A8A9c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9c_0_75 ?a)
                    (not (not_blocked seg_N_A8A9c_0_75 ?a))
         )
)
(:action startup_seg_N_A8A9b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9b_0_75)
                    (not_occupied seg_N_A8A9a_0_85)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9a_0_85 ?a)
                    (not (not_blocked seg_N_A8A9a_0_85 ?a))
         )
)
(:action startup_seg_N_A8A9c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9c_0_75)
                    (not_occupied seg_N_A8A9d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9d_0_75 ?a)
                    (not (not_blocked seg_N_A8A9d_0_75 ?a))
         )
)
(:action startup_seg_N_A8A9c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9c_0_75)
                    (not_occupied seg_N_A8A9b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9b_0_75 ?a)
                    (not (not_blocked seg_N_A8A9b_0_75 ?a))
         )
)
(:action startup_seg_N_A8A9d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9d_0_75)
                    (not_occupied seg_N_A9c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9c_0_60 ?a)
                    (not (not_blocked seg_N_A9c_0_60 ?a))
         )
)
(:action startup_seg_N_A8A9d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A8A9d_0_75)
                    (not_occupied seg_N_A8A9c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9c_0_75 ?a)
                    (not (not_blocked seg_N_A8A9c_0_75 ?a))
         )
)
(:action startup_seg_N_A9b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9b_0_60)
                    (not_occupied seg_N_A9A10a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10a_0_80 ?a)
                    (not (not_blocked seg_N_A9A10a_0_80 ?a))
         )
)
(:action startup_seg_N_A9b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9b_0_60)
                    (not_occupied seg_N_A9a_0_60)
                    (not_occupied seg_N_A9c_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9a_0_60 ?a)
                    (not (not_blocked seg_N_A9a_0_60 ?a))
                    (blocked seg_N_A9c_0_60 ?a)
                    (not (not_blocked seg_N_A9c_0_60 ?a))
         )
)
(:action startup_seg_N_A9c_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9c_0_60)
                    (not_occupied seg_N_A8A9d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A8A9d_0_75 ?a)
                    (not (not_blocked seg_N_A8A9d_0_75 ?a))
         )
)
(:action startup_seg_N_A9c_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9c_0_60)
                    (not_occupied seg_N_A9a_0_60)
                    (not_occupied seg_N_A9b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9a_0_60 ?a)
                    (not (not_blocked seg_N_A9a_0_60 ?a))
                    (blocked seg_N_A9b_0_60 ?a)
                    (not (not_blocked seg_N_A9b_0_60 ?a))
         )
)
(:action startup_seg_N_A9A10a_0_80_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10a_0_80)
                    (not_occupied seg_N_A9A10b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10b_0_75 ?a)
                    (not (not_blocked seg_N_A9A10b_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10a_0_80_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10a_0_80)
                    (not_occupied seg_N_A9b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9b_0_60 ?a)
                    (not (not_blocked seg_N_A9b_0_60 ?a))
         )
)
(:action startup_seg_N_A9A10b_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10b_0_75)
                    (not_occupied seg_N_A9A10c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10c_0_75 ?a)
                    (not (not_blocked seg_N_A9A10c_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10b_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10b_0_75)
                    (not_occupied seg_N_A9A10a_0_80)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10a_0_80 ?a)
                    (not (not_blocked seg_N_A9A10a_0_80 ?a))
         )
)
(:action startup_seg_N_A9A10c_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10c_0_75)
                    (not_occupied seg_N_A9A10d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10d_0_75 ?a)
                    (not (not_blocked seg_N_A9A10d_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10c_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10c_0_75)
                    (not_occupied seg_N_A9A10b_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10b_0_75 ?a)
                    (not (not_blocked seg_N_A9A10b_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10d_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10d_0_75)
                    (not_occupied seg_N_A9A10e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10e_0_75 ?a)
                    (not (not_blocked seg_N_A9A10e_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10d_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10d_0_75)
                    (not_occupied seg_N_A9A10c_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10c_0_75 ?a)
                    (not (not_blocked seg_N_A9A10c_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10e_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10e_0_75)
                    (not_occupied seg_N_A9A10f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10f_0_75 ?a)
                    (not (not_blocked seg_N_A9A10f_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10e_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10e_0_75)
                    (not_occupied seg_N_A9A10d_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10d_0_75 ?a)
                    (not (not_blocked seg_N_A9A10d_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10f_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10f_0_75)
                    (not_occupied seg_N_A9A10g_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10g_0_75 ?a)
                    (not (not_blocked seg_N_A9A10g_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10f_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10f_0_75)
                    (not_occupied seg_N_A9A10e_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10e_0_75 ?a)
                    (not (not_blocked seg_N_A9A10e_0_75 ?a))
         )
)
(:action startup_seg_N_A9A10g_0_75_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10g_0_75)
                    (not_occupied seg_N_A10b_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A10b_0_60 ?a)
                    (not (not_blocked seg_N_A10b_0_60 ?a))
         )
)
(:action startup_seg_N_A9A10g_0_75_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A9A10g_0_75)
                    (not_occupied seg_N_A9A10f_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10f_0_75 ?a)
                    (not (not_blocked seg_N_A9A10f_0_75 ?a))
         )
)
(:action startup_seg_N_A10b_0_60_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A10b_0_60)
                    (not_occupied seg_N_A9A10g_0_75)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A9A10g_0_75 ?a)
                    (not (not_blocked seg_N_A9A10g_0_75 ?a))
         )
)
(:action startup_seg_N_A10b_0_60_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_N_A10b_0_60)
                    (not_occupied seg_N_A10a_0_60)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_N_A10a_0_60 ?a)
                    (not (not_blocked seg_N_A10a_0_60 ?a))
         )
)
(:action startup_seg_A2_b_0_90_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_b_0_90)
                    (not_occupied seg_A2_c_0_100)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_c_0_100 ?a)
                    (not (not_blocked seg_A2_c_0_100 ?a))
         )
)
(:action startup_seg_A2_b_0_90_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A2_b_0_90)
                    (not_occupied seg_A2_a_0_90)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A2_a_0_90 ?a)
                    (not (not_blocked seg_A2_a_0_90 ?a))
         )
)
(:action startup_seg_A4_b_1_0_80_6226_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_b_1_0_80_6226)
                    (not_occupied seg_A4_b_0_79_7559)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_b_0_79_7559 ?a)
                    (not (not_blocked seg_A4_b_0_79_7559 ?a))
         )
)
(:action startup_seg_A4_b_1_0_80_6226_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A4_b_1_0_80_6226)
                    (not_occupied seg_A4_a_0_157_785)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A4_a_0_157_785 ?a)
                    (not (not_blocked seg_A4_a_0_157_785 ?a))
         )
)
(:action startup_seg_A7_b_1_0_80_6226_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_b_1_0_80_6226)
                    (not_occupied seg_A7_b_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_b_0_80_6226 ?a)
                    (not (not_blocked seg_A7_b_0_80_6226 ?a))
         )
)
(:action startup_seg_A7_b_1_0_80_6226_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A7_b_1_0_80_6226)
                    (not_occupied seg_A7_a_0_156_924)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A7_a_0_156_924 ?a)
                    (not (not_blocked seg_A7_a_0_156_924 ?a))
         )
)
(:action startup_seg_A8_b_1_0_79_7559_north_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_b_1_0_79_7559)
                    (not_occupied seg_A8_b_0_80_6226)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_b_0_80_6226 ?a)
                    (not (not_blocked seg_A8_b_0_80_6226 ?a))
         )
)
(:action startup_seg_A8_b_1_0_79_7559_south_medium

 :parameters (?a - airplane)

 :precondition (and (is-pushing ?a)
                    (at-segment ?a seg_A8_b_1_0_79_7559)
                    (not_occupied seg_A8_a_0_157_785)
               )

 :effect       (and (not (is-pushing ?a))
                    (is-moving ?a)
                    (blocked seg_A8_a_0_157_785 ?a)
                    (not (not_blocked seg_A8_a_0_157_785 ?a))
         )
)
