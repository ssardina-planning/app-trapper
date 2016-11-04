(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(clear b2)
(clear b3)
(clear b4)
(clear b5)
(clear b7)
(handempty )
(on b10 b6)
(on b6 b1)
(on b7 b8)
(on b8 b9)
(on b9 b10)
(ontable b1)
(ontable b2)
(ontable b3)
(ontable b4)
(ontable b5)
(stai_on b10 b6)
(stai_on b6 b1)
)
(:goal (and 
;goal G9
(on b1 b2)
;goal G8
(on b2 b3)
;goal G7
(on b3 b4)
;goal G6
(on b4 b5)
;goal G5
(on b5 b6)
;real goals
(on b6 b7)
)))
