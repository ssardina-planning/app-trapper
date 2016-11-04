(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:INIT 
(clear b2)
(clear b4)
(handempty )
(on b2 b3)
(on b3 b5)
(on b4 b1)
(ontable b1)
(ontable b5)
(stai_on b3 b5)
)
(:goal (and
(on b3 b4)
))
)
