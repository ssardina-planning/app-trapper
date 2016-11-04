(define (problem matching-bw-typed-n4)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4  - block)
(:INIT 
(block-negative b3) 
(block-negative b4) 
(block-positive b1) 
(block-positive b2) 
(clear b1)
(clear b2)
(empty h1)
(hand-negative h2) 
(hand-positive h1) 
(holding h2 b4)
(notsolid b2)
(on b2 b3)
(on-table b1)
(on-table b3)
(solid b1)
(solid b3)
(solid b4)
)
(:goal (and

 (on b2 b1)
 (on b3 b4)))
)
