(define (problem bw-typed-n7)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 
(clear b2)
(clear b4)
(clear b6)
(handempty )
(on b2 b3)
(on b6 b7)
(on b7 b5)
(ontable b1)
(ontable b3)
(ontable b4)
(stai_on b5 b1)
)
(:goal (and 
;goal G6
(on b1 b2)
;goal G4
(on b3 b4)
;goal G2
(on b5 b6)
;real goals
(on b4 b5)
)))
