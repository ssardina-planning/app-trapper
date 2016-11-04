(define (problem bw-typed-n7)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 
(clear b1)
(clear b2)
(handempty )
(on b2 b3)
(on b3 b4)
(on b4 b5)
(on b5 b6)
(on b6 b7)
(ontable b1)
(ontable b7)
)
(:goal (and 
;real goals
(on b1 b2)
)))
