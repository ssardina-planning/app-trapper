(define (problem bw-typed-n7)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 
(clear b1)
(clear b3)
(clear b5)
(clear b7)
(handempty )
(on b1 b2)
(on b3 b4)
(on b5 b6)
(ontable b2)
(ontable b4)
(ontable b6)
(ontable b7)
)
(:goal (and 
;goal G4
(on b4 b5)
;goal G2
(on b2 b3)
;real goals
(on b6 b7)
)))
