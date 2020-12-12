(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b1)
(clear b10)
(clear b18)
(clear b19)
(clear b2)
(clear b3)
(clear b7)
(handempty )
(on b18 b13)
(on b19 b20)
(ontable b12)
(ontable b14)
(ontable b16)
(ontable b20)
(ontable b3)
(ontable b5)
(ontable b9)
(stai_on b1 b17)
(stai_on b10 b16)
(stai_on b11 b12)
(stai_on b13 b14)
(stai_on b15 b6)
(stai_on b17 b15)
(stai_on b2 b8)
(stai_on b4 b5)
(stai_on b6 b9)
(stai_on b7 b11)
(stai_on b8 b4)
)
(:goal (and 
;goal G19
(on b1 b2)
;goal G18
(on b2 b3)
;goal G17
(on b3 b4)
;goal G16
(on b4 b5)
;goal G15
(on b5 b6)
;goal G14
(on b6 b7)
;goal G13
(on b7 b8)
;goal G12
(on b8 b9)
;goal G11
(on b9 b10)
;goal G10
(on b10 b11)
;goal G9
(on b11 b12)
;goal G8
(on b12 b13)
;goal G7
(on b13 b14)
;goal G6
(on b14 b15)
;goal G5
(on b15 b16)
;goal G4
(on b16 b17)
;goal G3
(on b17 b18)
;real goals
(on b18 b19)
)))
