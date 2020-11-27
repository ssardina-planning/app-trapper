(define (problem BW-rand-2)
(:domain blocksworld)
(:objects b1 b2 )
(:init 
(arm-empty)
(on b1 b2)
(on-table b2)
(clear b1)
)
(:goal (and 
;goal G0
(on b1 b2)
;goal G5
(on b2 b1)
;goal G4
(on b1 b2)
;goal G3
;goal G2
(on b1 b2)
;goal G1
(on b2 b1)
;real goals
(on b1 b2)
)))
