(define (problem logistics-c2-s2-p4-a2)
(:domain logistics-strips)
(:objects a0 a1  - object
          c0 c1  - object
          t0 t1  - object
          l00 l01 l10 l11  - object
          p0 p1 p2 p3  - object
)
(:init (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(at a0 l00)
(at a1 l10)
(at p3 l00)
(at t0 l01)
(at t1 l11)
(city c0) 
(city c1) 
(in p0 t0)
(in p1 t1)
(in p2 t1)
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
(obj p2) 
(obj p3) 
(truck t0) 
(truck t1) 
)
(:goal (and
(dummy-fact)
(at p2 l00)
))

)