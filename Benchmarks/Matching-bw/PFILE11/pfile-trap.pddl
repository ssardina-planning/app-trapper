(define (problem matching-bw-typed-n10)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init 
(block-negative b10) 
(block-negative b6) 
(block-negative b7) 
(block-negative b8) 
(block-negative b9) 
(block-positive b1) 
(block-positive b2) 
(block-positive b3) 
(block-positive b4) 
(block-positive b5) 
(clear b10)
(clear b3)
(clear b4)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(holding h1 b2)
(on b1 b5)
(on b10 b8)
(on b3 b7)
(on b4 b6)
(on b6 b9)
(on b9 b1)
(on-table b5)
(on-table b7)
(on-table b8)
(solid b1)
(solid b10)
(solid b2)
(solid b3)
(solid b4)
(solid b5)
(solid b6)
(solid b7)
(solid b8)
(solid b9)
)
(:goal (and 
;goal G4

 (on b2 b9)
 (on b5 b6)
 (on b6 b2)
 (on b7 b5)
 (on b8 b10)
 (on b9 b1)
 (on b10 b7);goal G3

 (on b1 b5)
 (on b3 b7)
 (on b4 b6)
 (on b6 b9)
 (on b9 b1)
 (on b10 b8);goal G2

 (on b1 b8)
 (on b2 b10)
 (on b4 b2)
 (on b5 b3)
 (on b6 b1)
 (on b8 b4)
 (on b9 b7);goal G1

 (on b1 b9)
 (on b2 b10)
 (on b3 b8)
 (on b5 b6)
 (on b6 b1)
 (on b7 b4)
 (on b8 b7);goal G0

 (on b1 b10)
 (on b2 b4)
 (on b3 b7)
 (on b6 b8)
 (on b7 b5)
 (on b8 b2)
 (on b9 b6)
 (on b10 b3);real goals

 (on b2 b9)
 (on b5 b6)
 (on b6 b2)
 (on b7 b5)
 (on b8 b10)
 (on b9 b1)
 (on b10 b7))))
