(define (problem test)(:domain blocksworld)
(:objects a b c d - block)
(:init 
(clear a)
(clear c)
(clear d)
(handempty )
(on a b)
(ontable b)
(ontable c)
(ontable d)
)
(:goal (and 
;goal G1
(on c d)
;real goals
(on b c)
)))
