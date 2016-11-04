(define (problem p01-642)
 (:domain floor-tile)
 (:objects tile_0-1 tile_0-2 tile_0-3 tile_0-4 tile_0-5 
           tile_1-1 tile_1-2 tile_1-3 tile_1-4 tile_1-5 
           tile_2-1 tile_2-2 tile_2-3 tile_2-4 tile_2-5 
           tile_3-1 tile_3-2 tile_3-3 tile_3-4 tile_3-5 
           tile_4-1 tile_4-2 tile_4-3 tile_4-4 tile_4-5 
           tile_5-1 tile_5-2 tile_5-3 tile_5-4 tile_5-5 - tile
           robot1 robot2 - robot
           white black - color
)
(:init 
(available-color black) 
(available-color white) 
(clear tile_0-1)
(clear tile_0-2)
(clear tile_0-4)
(clear tile_0-5)
(clear tile_2-1)
(clear tile_2-5)
(clear tile_3-3)
(clear tile_3-4)
(clear tile_4-1)
(clear tile_4-2)
(clear tile_4-3)
(clear tile_4-4)
(clear tile_4-5)
(clear tile_5-1)
(clear tile_5-2)
(clear tile_5-3)
(clear tile_5-4)
(clear tile_5-5)
(down tile_0-1 tile_1-1) 
(down tile_0-2 tile_1-2) 
(down tile_0-3 tile_1-3) 
(down tile_0-4 tile_1-4) 
(down tile_0-5 tile_1-5) 
(down tile_1-1 tile_2-1) 
(down tile_1-2 tile_2-2) 
(down tile_1-3 tile_2-3) 
(down tile_1-4 tile_2-4) 
(down tile_1-5 tile_2-5) 
(down tile_2-1 tile_3-1) 
(down tile_2-2 tile_3-2) 
(down tile_2-3 tile_3-3) 
(down tile_2-4 tile_3-4) 
(down tile_2-5 tile_3-5) 
(down tile_3-1 tile_4-1) 
(down tile_3-2 tile_4-2) 
(down tile_3-3 tile_4-3) 
(down tile_3-4 tile_4-4) 
(down tile_3-5 tile_4-5) 
(down tile_4-1 tile_5-1) 
(down tile_4-2 tile_5-2) 
(down tile_4-3 tile_5-3) 
(down tile_4-4 tile_5-4) 
(down tile_4-5 tile_5-5) 
(left tile_0-1 tile_0-2) 
(left tile_0-2 tile_0-3) 
(left tile_0-3 tile_0-4) 
(left tile_0-4 tile_0-5) 
(left tile_1-1 tile_1-2) 
(left tile_1-2 tile_1-3) 
(left tile_1-3 tile_1-4) 
(left tile_1-4 tile_1-5) 
(left tile_2-1 tile_2-2) 
(left tile_2-2 tile_2-3) 
(left tile_2-3 tile_2-4) 
(left tile_2-4 tile_2-5) 
(left tile_3-1 tile_3-2) 
(left tile_3-2 tile_3-3) 
(left tile_3-3 tile_3-4) 
(left tile_3-4 tile_3-5) 
(left tile_4-1 tile_4-2) 
(left tile_4-2 tile_4-3) 
(left tile_4-3 tile_4-4) 
(left tile_4-4 tile_4-5) 
(left tile_5-1 tile_5-2) 
(left tile_5-2 tile_5-3) 
(left tile_5-3 tile_5-4) 
(left tile_5-4 tile_5-5) 
(painted tile_1-1 black)
(painted tile_1-2 white)
(painted tile_1-3 black)
(painted tile_1-4 black)
(painted tile_1-5 black)
(painted tile_2-2 black)
(painted tile_2-3 black)
(painted tile_2-4 white)
(painted tile_3-1 black)
(painted tile_3-5 white)
(right tile_0-2 tile_0-1) 
(right tile_0-3 tile_0-2) 
(right tile_0-4 tile_0-3) 
(right tile_0-5 tile_0-4) 
(right tile_1-2 tile_1-1) 
(right tile_1-3 tile_1-2) 
(right tile_1-4 tile_1-3) 
(right tile_1-5 tile_1-4) 
(right tile_2-2 tile_2-1) 
(right tile_2-3 tile_2-2) 
(right tile_2-4 tile_2-3) 
(right tile_2-5 tile_2-4) 
(right tile_3-2 tile_3-1) 
(right tile_3-3 tile_3-2) 
(right tile_3-4 tile_3-3) 
(right tile_3-5 tile_3-4) 
(right tile_4-2 tile_4-1) 
(right tile_4-3 tile_4-2) 
(right tile_4-4 tile_4-3) 
(right tile_4-5 tile_4-4) 
(right tile_5-2 tile_5-1) 
(right tile_5-3 tile_5-2) 
(right tile_5-4 tile_5-3) 
(right tile_5-5 tile_5-4) 
(robot-at robot1 tile_0-3)
(robot-at robot2 tile_3-2)
(robot-has robot1 black)
(robot-has robot2 black)
(up tile_1-1 tile_0-1) 
(up tile_1-2 tile_0-2) 
(up tile_1-3 tile_0-3) 
(up tile_1-4 tile_0-4) 
(up tile_1-5 tile_0-5) 
(up tile_2-1 tile_1-1) 
(up tile_2-2 tile_1-2) 
(up tile_2-3 tile_1-3) 
(up tile_2-4 tile_1-4) 
(up tile_2-5 tile_1-5) 
(up tile_3-1 tile_2-1) 
(up tile_3-2 tile_2-2) 
(up tile_3-3 tile_2-3) 
(up tile_3-4 tile_2-4) 
(up tile_3-5 tile_2-5) 
(up tile_4-1 tile_3-1) 
(up tile_4-2 tile_3-2) 
(up tile_4-3 tile_3-3) 
(up tile_4-4 tile_3-4) 
(up tile_4-5 tile_3-5) 
(up tile_5-1 tile_4-1) 
(up tile_5-2 tile_4-2) 
(up tile_5-3 tile_4-3) 
(up tile_5-4 tile_4-4) 
(up tile_5-5 tile_4-5) 
)
(:goal (and 
;goal G25
(painted tile_4-2 black)
;goal G24
(painted tile_4-2 white)
;goal G23
(painted tile_2-1 black)
;goal G27
(painted tile_3-4 black)
;goal G26
(painted tile_3-4 white)
;goal G25
(painted tile_4-2 black)
;goal G29
(painted tile_3-3 black)
;goal G28
(painted tile_3-3 white)
;goal G27
(painted tile_3-4 black)
;goal G31
(painted tile_4-4 black)
;goal G30
(painted tile_4-4 white)
;goal G29
(painted tile_3-3 black)
;goal G33
(painted tile_4-3 black)
;goal G32
(painted tile_4-3 white)
;goal G31
(painted tile_4-4 black)
;goal G35
(painted tile_3-2 black)
;goal G34
(painted tile_3-2 white)
;goal G33
(painted tile_4-3 black)
;goal G37
(painted tile_4-5 black)
;goal G36
(painted tile_4-5 white)
;goal G35
(painted tile_3-2 black)
;goal G39
(painted tile_4-1 black)
;goal G38
(painted tile_4-1 white)
;goal G37
(painted tile_4-5 black)
;goal G39
(painted tile_4-1 black)
;goal G38
(painted tile_4-1 white)
;goal G36
(painted tile_4-5 white)
;goal G34
(painted tile_3-2 white)
;goal G32
(painted tile_4-3 white)
;goal G30
(painted tile_4-4 white)
;goal G28
(painted tile_3-3 white)
;goal G26
(painted tile_3-4 white)
;goal G24
(painted tile_4-2 white)
;goal G22
(painted tile_2-1 white)
;real goals
(painted tile_2-5 white)
)))
