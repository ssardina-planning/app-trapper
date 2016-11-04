(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(clear b10)
(clear b4)
(clear b8)
(handempty )
(on b10 b6)
(on b2 b9)
(on b3 b2)
(on b4 b5)
(on b5 b3)
(on b6 b1)
(on b9 b7)
(ontable b1)
(ontable b7)
(ontable b8)
(stai_on b10 b6)
(stai_on b2 b9)
(stai_on b3 b2)
(stai_on b5 b3)
(stai_on b6 b1)
(stai_on b9 b7)
)
(:goal (and 
;goal G8
(on b8 b9)
;goal G7
(on b7 b8)
;goal G5
(on b5 b6)
;goal G2
(on b2 b3)
;goal G6
(on b6 b7)
;goal G1
(on b1 b2)
;goal G9
(on b9 b10)
;real goals
(on b3 b4)
)))
