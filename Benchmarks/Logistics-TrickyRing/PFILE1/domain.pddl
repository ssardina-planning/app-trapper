(define (domain logistics-strips)
  (:requirements :strips) 
  (:predicates 	(obj ?obj)
	       	(truck ?truck)
               	(location ?loc)
		(airplane ?airplane)
                (city ?city)
                (airport ?airport)
		(at ?obj ?loc)
		(in ?obj1 ?obj2)
		(in-city ?obj ?city)
                (connected ?loc1 ?loc2)
       ; (dummy-goal)
       ; (dummy-fact)
(dummy-goal)(dummy-fact)(dummy-tabustate0))
(:functions (cost));(:functions (cost))
 
  ; (:types )		; default object

(:action load-truck
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (obj ?obj) (truck ?truck) (location ?loc) ;(dummy-fact)
   (at ?truck ?loc) (at ?obj ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?truck)))

(:action load-airplane
  :parameters
   (?obj
    ?airplane
    ?loc)
  :precondition
   (and (obj ?obj) (airplane ?airplane) (location ?loc) ;(dummy-fact)
   (at ?obj ?loc) (at ?airplane ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?airplane)))

(:action unload-truck
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (obj ?obj) (truck ?truck) (location ?loc) ;(dummy-fact)
        (at ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (at ?obj ?loc)))

(:action unload-airplane
  :parameters
   (?obj
    ?airplane
    ?loc)
  :precondition
   (and (obj ?obj) (airplane ?airplane) (location ?loc) ;(dummy-fact)
        (in ?obj ?airplane) (at ?airplane ?loc))
  :effect
   (and (not (in ?obj ?airplane)) (at ?obj ?loc)))

(:action drive-truck
  :parameters
   (?truck
    ?loc-from
    ?loc-to
    ?city)
  :precondition
   (and (truck ?truck) (location ?loc-from) (location ?loc-to) (city ?city)
   (at ?truck ?loc-from) ;(dummy-fact)
   (in-city ?loc-from ?city)
   (in-city ?loc-to ?city))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))

(:action fly-airplane
  :parameters
   (?airplane
    ?loc-from
    ?loc-to)
  :precondition
   (and (connected ?loc-from ?loc-to) (airplane ?airplane) (airport ?loc-from) (airport ?loc-to) ;(dummy-fact)
	(at ?airplane ?loc-from))
  :effect
   (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))

;(:action pref-op0
;  :precondition (and (dummy-fact))
;  :effect (and (not (dummy-fact)) (dummy-goal)))

(:action pref-op0
  :precondition (and (dummy-fact))
  :effect (and (not (dummy-fact)) (dummy-goal)))(:action pref-op1
:precondition (and (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(airport l20) 
(at a0 l20)
(at a1 l10)
(at p0 l21)
(at p1 l21)
(at p2 l11)
(at t0 l00)
(at t1 l10)
(at t2 l21)
(city c0) 
(city c1) 
(city c2) 
(connected l00 l10) 
(connected l00 l20) 
(connected l10 l00) 
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
(truck t0) 
(truck t1) 
(truck t2) 
)
:effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))

(:action tabu-op0-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-11
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-12
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-13
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-14
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-15
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-16
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-17
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-18
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-19
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-20
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-21
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-22
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-23
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-24
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-25
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-26
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-27
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-28
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-29
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-30
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-31
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-32
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-33
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-34
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-35
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-36
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-37
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate0)))

)
