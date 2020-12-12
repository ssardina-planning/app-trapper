(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(clear b1)
(clear b5)
(clear b8)
(handempty )
(on b1 b6)
(on b2 b10)
(on b4 b2)
(on b8 b9)
(on b9 b4)
(ontable b3)
(ontable b5)
(ontable b7)
(stai_on b10 b3)
(stai_on b6 b7)
)
(:goal (and 
;goal G6
(on b4 b5)
;goal G8
(on b2 b3)
;goal G5
(on b5 b6)
;goal G9
(on b1 b2)
;goal G1
(on b9 b10)
;goal G4
(on b6 b7)
;goal G7
(on b3 b4)
;real goals
(on b7 b8)
)))
