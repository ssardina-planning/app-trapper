(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:INIT 
(clear b3)
(handempty )
(on b3 b4)
(on b4 b5)
(ontable b2)
(stai_on b1 b2)
(stai_on b5 b1)
)
(:goal (and
(on b1 b2)
))
)
