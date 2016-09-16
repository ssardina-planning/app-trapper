(define (problem test)(:domain blocksworld)
(:objects a b c d - block)
(:init 
(clear a)
(clear b)
(handempty )
(on b c)
(on c d)
(ontable a)
(ontable d)
)
(:goal (and 
;real goals
(on a b)
)))
