(define (problem test)(:domain blocksworld)
(:objects a b c d - block)
(:init 
(clear a)
(clear c)
(handempty )
(on a b)
(on c d)
(ontable b)
(ontable d)
)
(:goal (and 
;goal G3
(on a b)
;real goals
(on b c)
)))
