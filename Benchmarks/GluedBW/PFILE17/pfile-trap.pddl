(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b11)
(clear b12)
(clear b15)
(clear b18)
(clear b3)
(clear b4)
(handempty )
(on b12 b9)
(on b15 b8)
(on b16 b17)
(on b18 b19)
(on b19 b20)
(on b3 b1)
(on b4 b6)
(on b9 b16)
(ontable b1)
(ontable b11)
(ontable b14)
(ontable b17)
(ontable b6)
(ontable b8)
(stai_on b10 b2)
(stai_on b13 b14)
(stai_on b2 b7)
(stai_on b20 b5)
(stai_on b5 b10)
(stai_on b7 b13)
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
;real goals
(on b17 b18)
)))
