(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:init 
(clear b1)
(clear b2)
(clear b3)
(clear b4)
(clear b5)
(clear b6)
(clear b9)
(handempty )
(on b10 b11)
(on b11 b12)
(on b12 b13)
(on b13 b14)
(on b14 b15)
(on b15 b8)
(on b8 b7)
(on b9 b10)
(ontable b1)
(ontable b2)
(ontable b3)
(ontable b4)
(ontable b5)
(ontable b6)
(ontable b7)
(stai_on b15 b8)
(stai_on b8 b7)
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
;real goals
(on b8 b9)
)))
