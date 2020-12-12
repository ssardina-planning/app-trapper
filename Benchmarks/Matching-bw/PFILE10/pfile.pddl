(define (problem matching-bw-typed-n10)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:INIT 
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
(clear b2)
(clear b7)
(empty h1)
(empty h2)
(hand-negative h2) 
(hand-positive h1) 
(on b1 b6)
(on b10 b1)
(on b2 b4)
(on b3 b5)
(on b4 b9)
(on b6 b3)
(on b9 b8)
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

 (on b3 b2)
 (on b4 b9)
 (on b5 b1)
 (on b6 b8)
 (on b8 b3)
 (on b9 b10)))
)