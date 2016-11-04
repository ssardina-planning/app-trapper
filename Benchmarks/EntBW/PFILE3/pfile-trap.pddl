(define (problem bw-typed-n5)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5  - block)
(:init 
(clear b1)
(clear b2)
(clear b4)
(handempty )
(on b4 b5)
(on b5 b3)
(ontable b1)
(ontable b2)
(ontable b3)
(stai_on b5 b3)
)
(:goal (and 
;goal G4
(on b1 b2)
;goal G3
(on b2 b3)
;real goals
(on b3 b4)
)))
