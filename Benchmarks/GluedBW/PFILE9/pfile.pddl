(define (problem bw-typed-n10)
(:domain blocksworld)
(:objects 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:INIT (= (cost) 0)
	(dummy-fact)
(clear b1)
(clear b3)
(clear b5)
(handempty )
(ontable b10)
(ontable b2)
(ontable b8)
(stai_on b1 b6)
(stai_on b3 b4)
(stai_on b4 b8)
(stai_on b5 b7)
(stai_on b6 b9)
(stai_on b7 b10)
(stai_on b9 b2)
)
(:goal (and
(dummy-goal)
(on b9 b10)
))
(:metric maximize (cost))
)
