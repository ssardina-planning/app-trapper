(define (problem logistics-c2-s2-p1-a1)
(:domain logistics-strips)
(:objects a0 a1
          c0 c1 c2
          t0 t1 t2
          l00 l01 l10 l11 l20 l21 
          p0 p1 p2  p3 p4
)
(:INIT (= (cost) 0)
	(dummy-fact)
(airplane a0)
(airplane a1)
(city c0)
(city c1)
(city c2)
(truck t0)
(truck t1)
(truck t2)
(location l00)
(in-city  l00 c0)
(location l01)
(in-city  l01 c0)
(location l10)
(in-city  l10 c1)
(location l11)
(in-city  l11 c1)
(location l20)
(in-city  l20 c2)
(location l21)
(in-city  l21 c2)
(airport l00)
(airport l10)
(airport l20)
(obj p0)
(obj p1)
(obj p2)
(at t0 l00)
(at t1 l11)
(at t2 l21)
(at p0 l01)
(at p1 l01)
(at p2 l01)
(connected l00 l10)
(connected l10 l00)
(connected l00 l20)
(at a0 l10)
(at a1 l00)
(obj p3)
(at p3 l01)
(obj p4)
(at p4 l01)
)
(:goal (and ))
(:metric minimize (cost))
)