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
(clear b2)
(clear b3)
(clear b7)
(empty h1)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(notsolid b2)
(on b2 b6)
(on b3 b5)
(on b5 b1)
(on b7 b4)
(on-table b1)
(on-table b4)
(on-table b6)
(solid b1)
(solid b3)
(solid b4)
(solid b5)
(solid b6)
(solid b7)
)
(:goal (and 
;goal G1

 (on b2 b4)
 (on b4 b3)
 (on b5 b6)
 (on b6 b7)
 (on b7 b2);goal G0

 (on b3 b5)
 (on b7 b4);goal G3

 (on b2 b7)
 (on b3 b4)
 (on b5 b2)
 (on b6 b3)
 (on b7 b6);goal G2

 (on b2 b1)
 (on b3 b6)
 (on b4 b3)
 (on b6 b5);real goals

 (on b2 b4)
 (on b4 b3)
 (on b5 b6)
 (on b6 b7)
 (on b7 b2))))
