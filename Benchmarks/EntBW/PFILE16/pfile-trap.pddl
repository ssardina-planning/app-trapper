(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:init 
(clear b1)
(clear b11)
(clear b12)
(clear b15)
(clear b2)
(clear b3)
(clear b4)
(clear b6)
(clear b7)
(clear b8)
(handempty )
(on b12 b13)
(on b13 b14)
(on b7 b5)
(on b8 b9)
(on b9 b10)
(ontable b1)
(ontable b10)
(ontable b11)
(ontable b14)
(ontable b15)
(ontable b2)
(ontable b3)
(ontable b4)
(ontable b5)
(ontable b6)
(stai_on b7 b5)
)
(:goal (and 
;goal G11
(on b11 b12)
;goal G10
(on b10 b11)
;goal G1
(on b1 b2)
;goal G2
(on b2 b3)
;goal G3
(on b3 b4)
;goal G5
(on b5 b6)
;goal G4
(on b4 b5)
;goal G6
(on b6 b7)
;goal G7
(on b7 b8)
;real goals
(on b14 b15)
)))
