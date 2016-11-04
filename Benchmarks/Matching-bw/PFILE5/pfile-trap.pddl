(define (problem matching-bw-typed-n7)
(:domain matching-bw-typed)
(:objects h1 h2 - hand 
b1 b2 b3 b4 b5 b6 b7  - block)
(:init 

 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b4)
 (solid b2)
 (block-positive b2)
 (on b2 b7)
 (solid b3)
 (block-positive b3)
 (on b3 b1)
 (solid b4)
 (block-negative b4)
 (on-table b4)
 (solid b5)
 (block-negative b5)
 (on-table b5)
 (solid b6)
 (block-negative b6)
 (on b6 b2)
 (solid b7)
 (block-negative b7)
 (on b7 b3)
 (clear b5)
 (clear b6))
(:goal (and 
;goal G0

 (on b1 b2)
 (on b3 b6)
 (on b4 b3)
 (on b5 b7)
 (on b6 b5)
 (on b7 b1);goal G2

 (on b1 b4)
 (on b2 b7)
 (on b3 b1)
 (on b6 b2)
 (on b7 b3);goal G1

 (on b2 b7)
 (on b3 b1)
 (on b4 b5)
 (on b6 b3);real goals

 (on b1 b2)
 (on b3 b6)
 (on b4 b3)
 (on b5 b7)
 (on b6 b5)
 (on b7 b1))))
