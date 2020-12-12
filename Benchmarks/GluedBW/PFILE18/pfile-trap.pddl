(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b10)
(clear b12)
(clear b20)
(clear b4)
(clear b5)
(clear b8)
(handempty )
(on b1 b17)
(on b4 b1)
(on b5 b6)
(on b8 b9)
(ontable b12)
(ontable b14)
(ontable b18)
(ontable b20)
(ontable b6)
(ontable b9)
(stai_on b10 b2)
(stai_on b11 b15)
(stai_on b13 b14)
(stai_on b15 b18)
(stai_on b16 b19)
(stai_on b17 b16)
(stai_on b19 b3)
(stai_on b2 b7)
(stai_on b3 b11)
(stai_on b7 b13)
)
(:goal (and 
;goal G12
(on b8 b9)
;goal G17
(on b3 b4)
;goal G6
(on b14 b15)
;goal G16
(on b4 b5)
;goal G10
(on b10 b11)
;goal G18
(on b2 b3)
;goal G2
(on b18 b19)
;goal G19
(on b1 b2)
;goal G11
(on b9 b10)
;goal G7
(on b13 b14)
;goal G14
(on b6 b7)
;goal G8
(on b12 b13)
;goal G4
(on b16 b17)
;goal G13
(on b7 b8)
;goal G3
(on b17 b18)
;goal G1
(on b19 b20)
;goal G9
(on b11 b12)
;real goals
(on b15 b16)
)))
