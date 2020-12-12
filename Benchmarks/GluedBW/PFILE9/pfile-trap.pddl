(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(clear b1)
(clear b2)
(clear b6)
(clear b7)
(clear b9)
(handempty )
(on b1 b5)
(on b5 b3)
(on b9 b10)
(ontable b10)
(ontable b2)
(ontable b6)
(ontable b7)
(ontable b8)
(stai_on b3 b4)
(stai_on b4 b8)
)
(:goal (and 
;goal G9
(on b1 b2)
;goal G8
(on b2 b3)
;goal G7
(on b3 b4)
;goal G6
(on b4 b5)
;goal G5
(on b5 b6)
;goal G4
(on b6 b7)
;goal G3
(on b7 b8)
;real goals
(on b8 b9)
)))
