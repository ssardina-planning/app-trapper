(define (problem logistics-c2-s2-p1-a1)
(:domain logistics-strips)
(:objects a0 a1
          c0 c1 c2
          t0 t1 t2
          l00 l01 l10 l11 l20 l21 
          p0 p1 p2  p3 p4
)
(:init 
)
(:goal (and 
;goal G2
(at p2 l11)
;goal G1
(at p2 l01)
;real goals
(at p2 l11)
)))
