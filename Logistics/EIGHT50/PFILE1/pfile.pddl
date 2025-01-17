(define (problem logistics-c2-s2-p2-a2)
(:domain logistics-strips)
(:objects a0 a1 
          c0 c1 
          t0 t1 
          l00 l01 l10 l11 
          p0 p1 
)
(:INIT (= (cost) 0)
	(dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(at a0 l10)
(at a1 l10)
(at p0 l11)
(at p1 l10)
(at t0 l00)
(at t1 l10)
(city c0) 
(city c1) 
(in-city l00 c0) 
(in-city l01 c0) 
(in-city l10 c1) 
(in-city l11 c1) 
(location l00) 
(location l01) 
(location l10) 
(location l11) 
(obj p0) 
(obj p1) 
(truck t0) 
(truck t1) 
)
(:goal (and
(dummy-goal)
(at p1 l11)
))
(:metric maximize (cost))
)
