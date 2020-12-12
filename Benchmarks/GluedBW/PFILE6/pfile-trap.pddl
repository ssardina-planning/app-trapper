(define (problem bw-typed-n7)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 
(clear b1)
(clear b2)
(clear b5)
(clear b6)
(handempty )
(on b1 b4)
(on b6 b7)
(ontable b2)
(ontable b3)
(ontable b5)
(ontable b7)
(stai_on b4 b3)
)
(:goal (and 
;goal G6
(on b1 b2)
;goal G2
(on b5 b6)
;goal G4
(on b3 b4)
;goal G3
(on b4 b5)
;real goals
(on b2 b3)
)))
