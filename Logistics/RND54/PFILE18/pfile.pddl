(define (problem logistics-c3-s2-p5-a2)
(:domain logistics-strips)
(:objects a0 a1  - object
          c0 c1 c2  - object
          t0 t1 t2  - object
          l00 l01 l10 l11 l20 l21  - object
          p0 p1 p2 p3 p4  - object
)
(:init (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(airport l20) 
(at a0 l10)
(at a1 l10)
(at p1 l10)
(at t0 l00)
(at t1 l10)
(at t2 l20)
(city c0) 
(city c1) 
(city c2) 
(in p0 t1)
(in p2 t2)
(in p3 t0)
(in p4 t0)
(in-city l00 c0) 
(in-city l01 c0) 
(in-city l10 c1) 
(in-city l11 c1) 
(in-city l20 c2) 
(in-city l21 c2) 
(location l00) 
(location l01) 
(location l10) 
(location l11) 
(location l20) 
(location l21) 
(obj p0) 
(obj p1) 
(obj p2) 
(obj p3) 
(obj p4) 
(truck t0) 
(truck t1) 
(truck t2) 
)
(:goal (and
(dummy-fact)
(at p2 l21)
))

)