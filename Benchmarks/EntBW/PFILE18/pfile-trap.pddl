(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b10)
(clear b12)
(clear b14)
(clear b15)
(clear b16)
(clear b18)
(clear b4)
(clear b5)
(clear b8)
(clear b9)
(handempty )
(on b1 b2)
(on b10 b7)
(on b11 b13)
(on b13 b1)
(on b15 b6)
(on b18 b19)
(on b19 b20)
(on b20 b3)
(on b3 b11)
(on b9 b17)
(ontable b12)
(ontable b14)
(ontable b16)
(ontable b17)
(ontable b2)
(ontable b4)
(ontable b5)
(ontable b6)
(ontable b7)
(ontable b8)
(stai_on b1 b2)
(stai_on b10 b7)
(stai_on b11 b13)
(stai_on b13 b1)
(stai_on b15 b6)
(stai_on b19 b20)
(stai_on b20 b3)
(stai_on b3 b11)
(stai_on b9 b17)
)
(:goal (and 
;goal G10
(on b10 b11)
;goal G15
(on b15 b16)
;goal G5
(on b5 b6)
;goal G7
(on b7 b8)
;goal G16
(on b16 b17)
;goal G12
(on b12 b13)
;goal G17
(on b17 b18)
;goal G11
(on b11 b12)
;goal G1
(on b1 b2)
;goal G8
(on b8 b9)
;goal G6
(on b6 b7)
;goal G13
(on b13 b14)
;goal G3
(on b3 b4)
;goal G4
(on b4 b5)
;goal G9
(on b9 b10)
;goal G14
(on b14 b15)
;goal G19
(on b19 b20)
;real goals
(on b2 b3)
)))
