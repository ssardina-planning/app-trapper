(define (problem logistics-c2-s2-p2-a2)
(:domain logistics-strips)
(:objects a0 a1 
          c0 c1 
          t0 t1 
          l00 l01 l10 l11 
          p0 p1 
)
(:init (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(at a0 l10)
(at a1 l10)
(at p0 l10)
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
(at p1 l01)
;goal G49
(at p1 l01)
;goal G48
;goal G47
(at p0 l10)
;goal G46
;goal G45
(at p0 l00)
(at p1 l10)
;goal G44
(at p0 l11)
;goal G43
(at p1 l10)
;goal G42
(at p1 l10)
;goal G41
(at p1 l01)
;goal G40
(at p0 l10)
;goal G39
(at p1 l10)
;goal G38
(at p0 l01)
;goal G37
(at p0 l11)
;goal G36
(at p1 l10)
;goal G35
(at p1 l10)
;goal G34
;goal G33
(at p1 l00)
;goal G32
;goal G31
(at p1 l10)
;goal G30
(at p1 l01)
;goal G29
(at p1 l10)
;goal G28
(at p1 l00)
;goal G27
(at p0 l01)
;goal G26
;goal G25
(at p0 l10)
;goal G24
(at p1 l11)
;goal G23
(at p0 l00)
;goal G22
(at p0 l00)
(at p1 l10)
;goal G21
(at p1 l01)
;goal G20
(at p1 l11)
;goal G19
(at p0 l11)
;goal G18
(at p0 l11)
;goal G17
(at p1 l11)
;goal G16
;goal G15
(at p0 l11)
(at p1 l10)
;goal G14
(at p1 l10)
;goal G13
(at p0 l11)
;goal G12
(at p1 l11)
;goal G11
;goal G10
(at p1 l01)
;goal G9
(at p1 l10)
;goal G8
(at p0 l00)
(at p1 l11)
;goal G7
(at p1 l01)
;goal G6
(at p1 l11)
;goal G5
(at p1 l11)
;goal G4
(at p1 l10)
;goal G3
(at p1 l01)
;goal G2
(at p1 l11)
;goal G1
;goal G0
)))
