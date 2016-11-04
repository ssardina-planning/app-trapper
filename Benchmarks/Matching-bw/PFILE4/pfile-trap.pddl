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
(clear b2)
(empty h1)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(notsolid b2)
(on b1 b4)
(on b4 b3)
(on-table b2)
(on-table b3)
(solid b1)
(solid b3)
(solid b4)
)
(:goal (and 
;goal G2

 (on b1 b4)
 (on b2 b1)
 (on b3 b2);goal G1

 (on b1 b4);goal G0

 (on b2 b3)
 (on b3 b4)
 (on b4 b1);goal G5

 (on b1 b3)
 (on b4 b2);goal G4

 (on b3 b4)
 (on b4 b2);goal G3

 (on b1 b2)
 (on b4 b3);real goals

 (on b1 b4)
 (on b2 b1)
 (on b3 b2))))
