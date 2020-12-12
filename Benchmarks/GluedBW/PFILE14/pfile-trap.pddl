(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:init 
(clear b1)
(clear b12)
(clear b14)
(clear b2)
(clear b3)
(clear b7)
(handempty )
(on b1 b6)
(on b12 b13)
(on b14 b15)
(on b7 b8)
(ontable b10)
(ontable b11)
(ontable b15)
(ontable b2)
(ontable b3)
(ontable b6)
(stai_on b13 b4)
(stai_on b4 b5)
(stai_on b5 b10)
(stai_on b8 b9)
(stai_on b9 b11)
)
(:goal (and 
;goal G13
(on b2 b3)
;goal G14
(on b1 b2)
;goal G4
(on b11 b12)
;goal G5
(on b10 b11)
;goal G2
(on b13 b14)
;goal G12
(on b3 b4)
;goal G10
(on b5 b6)
;goal G9
(on b6 b7)
;goal G6
(on b9 b10)
;goal G7
(on b8 b9)
;real goals
(on b4 b5)
)))
