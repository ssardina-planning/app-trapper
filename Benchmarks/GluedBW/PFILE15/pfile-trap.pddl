(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:init 
(clear b14)
(clear b7)
(clear b8)
(clear b9)
(handempty )
(on b10 b4)
(on b14 b15)
(on b3 b10)
(on b8 b3)
(on b9 b13)
(ontable b12)
(ontable b13)
(ontable b15)
(ontable b5)
(stai_on b1 b5)
(stai_on b11 b12)
(stai_on b2 b11)
(stai_on b4 b1)
(stai_on b6 b2)
(stai_on b7 b6)
)
(:goal (and 
;goal G14
(on b1 b2)
;goal G13
(on b2 b3)
;goal G12
(on b3 b4)
;goal G11
(on b4 b5)
;goal G10
(on b5 b6)
;goal G9
(on b6 b7)
;goal G8
(on b7 b8)
;goal G7
(on b8 b9)
;goal G6
(on b9 b10)
;goal G5
(on b10 b11)
;goal G4
(on b11 b12)
;goal G3
(on b12 b13)
;real goals
(on b13 b14)
)))
