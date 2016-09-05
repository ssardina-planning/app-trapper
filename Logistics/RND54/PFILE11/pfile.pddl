(define (problem logistics-c4-s2-p4-a2)
(:domain logistics-strips)
(:objects a0 a1  - object
          c0 c1 c2 c3  - object
          t0 t1 t2 t3  - object
          l00 l01 l10 l11 l20 l21 l30 l31  - object
          p0 p1 p2 p3  - object
)
(:init (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(airport l20) 
(airport l30) 
(at a0 l30)
(at a1 l10)
(at p0 l30)
(at t0 l00)
(at t1 l11)
(at t2 l20)
(at t3 l31)
(city c0) 
(city c1) 
(city c2) 
(city c3) 
(in p1 t1)
(in p2 t3)
(in p3 t3)
(in-city l00 c0) 
(in-city l01 c0) 
(in-city l10 c1) 
(in-city l11 c1) 
(in-city l20 c2) 
(in-city l21 c2) 
(in-city l30 c3) 
(in-city l31 c3) 
(location l00) 
(location l01) 
(location l10) 
(location l11) 
(location l20) 
(location l21) 
(location l30) 
(location l31) 
(obj p0) 
(obj p1) 
(obj p2) 
(obj p3) 
(truck t0) 
(truck t1) 
(truck t2) 
(truck t3) 
)
(:goal (and
(dummy-fact)
(at p2 l00)
))

)