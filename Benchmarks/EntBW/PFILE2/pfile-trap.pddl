(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:init 
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
;goal G1
(on b1 b2)
;goal G4
(on b4 b5)
;real goals
(on b3 b4)
)))
