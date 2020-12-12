(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b1)
(clear b13)
(clear b15)
(clear b17)
(clear b19)
(clear b5)
(handempty )
(on b1 b3)
(on b15 b10)
(on b17 b4)
(on b19 b7)
(on b2 b18)
(on b4 b8)
(on b5 b6)
(on b8 b2)
(ontable b12)
(ontable b14)
(ontable b16)
(ontable b20)
(ontable b3)
(ontable b9)
(stai_on b10 b16)
(stai_on b11 b12)
(stai_on b13 b14)
(stai_on b18 b20)
(stai_on b6 b9)
(stai_on b7 b11)
)
(:goal (and 
;goal G17
(on b3 b4)
;goal G19
(on b1 b2)
;goal G5
(on b15 b16)
;goal G16
(on b4 b5)
;goal G13
(on b7 b8)
;goal G11
(on b9 b10)
;goal G4
(on b16 b17)
;goal G12
(on b8 b9)
;goal G7
(on b13 b14)
;goal G8
(on b12 b13)
;goal G18
(on b2 b3)
;goal G1
(on b19 b20)
;goal G10
(on b10 b11)
;goal G14
(on b6 b7)
;goal G2
(on b18 b19)
;goal G6
(on b14 b15)
;goal G9
(on b11 b12)
;real goals
(on b17 b18)
)))
