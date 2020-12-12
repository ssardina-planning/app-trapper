(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:init 
(clear b15)
(clear b3)
(clear b4)
(clear b8)
(handempty )
(on b10 b14)
(on b3 b13)
(on b8 b9)
(on b9 b10)
(ontable b12)
(ontable b13)
(ontable b15)
(ontable b5)
(stai_on b1 b5)
(stai_on b11 b12)
(stai_on b14 b7)
(stai_on b2 b11)
(stai_on b4 b1)
(stai_on b6 b2)
(stai_on b7 b6)
)
(:goal (and 
;goal G14
(on b1 b2)
;goal G4
(on b11 b12)
;goal G12
(on b3 b4)
;goal G2
(on b13 b14)
;goal G11
(on b4 b5)
;goal G3
(on b12 b13)
;goal G1
(on b14 b15)
;goal G9
(on b6 b7)
;goal G5
(on b10 b11)
;goal G8
(on b7 b8)
;goal G13
(on b2 b3)
;real goals
(on b5 b6)
)))
