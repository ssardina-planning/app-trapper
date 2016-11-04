(define (problem matching-bw-typed-n4)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4  - block)
(:init 
(block-negative b3) 
(block-negative b4) 
(block-positive b1) 
(block-positive b2) 
(clear b1)
(clear b4)
(empty h1)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(notsolid b1)
(on b1 b3)
(on b3 b2)
(on-table b2)
(on-table b4)
(solid b2)
(solid b3)
(solid b4)
)
(:goal (and 
;goal G2

 (on b1 b3)
 (on b2 b1);goal G1

 (on b1 b3)
 (on b3 b2);goal G0

 (on b1 b4)
 (on b2 b3);goal G4

 (on b1 b4)
 (on b3 b1)
 (on b4 b2);goal G3

 (on b1 b4)
 (on b3 b1)
 (on b4 b2);real goals

 (on b1 b3)
 (on b2 b1))))
