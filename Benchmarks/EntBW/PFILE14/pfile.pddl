(define (problem bw-typed-n15)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15  - block)
(:INIT 
(clear b10)
(clear b13)
(clear b14)
(clear b2)
(clear b3)
(clear b5)
(clear b9)
(handempty )
(on b1 b15)
(on b10 b11)
(on b11 b12)
(on b12 b1)
(on b15 b8)
(on b5 b6)
(on b8 b7)
(on b9 b4)
(ontable b13)
(ontable b14)
(ontable b2)
(ontable b3)
(ontable b4)
(ontable b6)
(ontable b7)
(stai_on b1 b15)
(stai_on b12 b1)
(stai_on b15 b8)
(stai_on b8 b7)
(stai_on b9 b4)
)
(:goal (and
(on b1 b2)
))
)
