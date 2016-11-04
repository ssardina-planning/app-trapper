(define (problem bw-typed-n20)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20  - block)
(:init 
(clear b10)
(clear b11)
(clear b13)
(clear b2)
(clear b3)
(clear b4)
(clear b5)
(clear b6)
(clear b7)
(handempty )
(on b10 b1)
(on b12 b9)
(on b13 b14)
(on b14 b15)
(on b15 b16)
(on b16 b17)
(on b17 b18)
(on b18 b19)
(on b19 b20)
(on b20 b8)
(on b8 b12)
(ontable b1)
(ontable b11)
(ontable b2)
(ontable b3)
(ontable b4)
(ontable b5)
(ontable b6)
(ontable b7)
(ontable b9)
(stai_on b10 b1)
(stai_on b12 b9)
(stai_on b20 b8)
(stai_on b8 b12)
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
;real goals
(on b12 b13)
)))
