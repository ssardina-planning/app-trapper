(define (problem matching-bw-typed-n7)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 
(block-negative b4) 
(block-negative b5) 
(block-negative b6) 
(block-negative b7) 
(block-positive b1) 
(block-positive b2) 
(block-positive b3) 
(clear b1)
(clear b2)
(clear b5)
(empty h1)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(notsolid b1)
(notsolid b2)
(on b1 b4)
(on b2 b3)
(on b5 b7)
(on b7 b6)
(on-table b3)
(on-table b4)
(on-table b6)
(solid b3)
(solid b4)
(solid b6)
(solid b7)
)
(:goal (and 
;goal G2

 (on b1 b4)
 (on b4 b2)
 (on b6 b7)
 (on b7 b5);goal G1

 (on b1 b4)
 (on b5 b7)
 (on b7 b6);goal G0

 (on b1 b7)
 (on b2 b3)
 (on b5 b6)
 (on b6 b4);goal G5

 (on b1 b4)
 (on b4 b6)
 (on b5 b1)
 (on b7 b2);goal G4

 (on b1 b5)
 (on b2 b7)
 (on b5 b6)
 (on b7 b1);goal G3

 (on b1 b5)
 (on b2 b3)
 (on b4 b1)
 (on b5 b7)
 (on b7 b2);real goals

 (on b1 b4)
 (on b4 b2)
 (on b6 b7)
 (on b7 b5))))
