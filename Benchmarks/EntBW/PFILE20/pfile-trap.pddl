(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b10)
(clear b11)
(clear b13)
(clear b15)
(clear b16)
(clear b18)
(clear b19)
(clear b20)
(clear b3)
(clear b7)
(handempty )
(on b1 b2)
(on b12 b9)
(on b13 b14)
(on b14 b6)
(on b16 b17)
(on b18 b1)
(on b20 b5)
(on b3 b4)
(on b7 b8)
(on b8 b12)
(ontable b10)
(ontable b11)
(ontable b15)
(ontable b17)
(ontable b19)
(ontable b2)
(ontable b4)
(ontable b5)
(ontable b6)
(ontable b9)
(stai_on b12 b9)
(stai_on b13 b14)
(stai_on b14 b6)
(stai_on b16 b17)
(stai_on b8 b12)
)
(:goal (and 
;goal G17
(on b17 b18)
;goal G16
(on b16 b17)
;goal G12
(on b12 b13)
;goal G14
(on b14 b15)
;goal G13
(on b13 b14)
;goal G3
(on b3 b4)
;goal G2
(on b2 b3)
;goal G4
(on b4 b5)
;goal G6
(on b6 b7)
;goal G18
(on b18 b19)
;goal G19
(on b19 b20)
;goal G9
(on b9 b10)
;goal G10
(on b10 b11)
;goal G11
(on b11 b12)
;goal G15
(on b15 b16)
;goal G8
(on b8 b9)
;real goals
(on b5 b6)
)))
