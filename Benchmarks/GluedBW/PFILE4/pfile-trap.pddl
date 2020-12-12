(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:init 
(clear b1)
(clear b5)
(handempty )
(on b1 b2)
(on b2 b3)
(on b5 b4)
(ontable b3)
(ontable b4)
)
(:goal (and 
;goal G3
(on b2 b3)
;goal G2
(on b3 b4)
;real goals
(on b4 b5)
)))
