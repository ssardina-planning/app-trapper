(define (domain logistics-strips)
  (:requirements :strips) 
  (:predicates 	(OBJ ?obj)
	       	(TRUCK ?truck)
               	(LOCATION ?loc)
		(AIRPLANE ?airplane)
                (CITY ?city)
                (AIRPORT ?airport)
		(at ?obj ?loc)
		(in ?obj1 ?obj2)
		(in-city ?obj ?city)
        (dummy-goal)
        (dummy-fact)
)
(:functions (cost))
 
  ; (:types )		; default object

(:action LOAD-TRUCK
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (OBJ ?obj) (TRUCK ?truck) (LOCATION ?loc) (dummy-fact)
   (at ?truck ?loc) (at ?obj ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?truck)))

(:action LOAD-AIRPLANE
  :parameters
   (?obj
    ?airplane
    ?loc)
  :precondition
   (and (OBJ ?obj) (AIRPLANE ?airplane) (LOCATION ?loc) (dummy-fact)
   (at ?obj ?loc) (at ?airplane ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?airplane)))

(:action UNLOAD-TRUCK
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (OBJ ?obj) (TRUCK ?truck) (LOCATION ?loc) (dummy-fact)
        (at ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (at ?obj ?loc)))

(:action UNLOAD-AIRPLANE
  :parameters
   (?obj
    ?airplane
    ?loc)
  :precondition
   (and (OBJ ?obj) (AIRPLANE ?airplane) (LOCATION ?loc) (dummy-fact)
        (in ?obj ?airplane) (at ?airplane ?loc))
  :effect
   (and (not (in ?obj ?airplane)) (at ?obj ?loc)))

(:action DRIVE-TRUCK
  :parameters
   (?truck
    ?loc-from
    ?loc-to
    ?city)
  :precondition
   (and (TRUCK ?truck) (LOCATION ?loc-from) (LOCATION ?loc-to) (CITY ?city)
   (at ?truck ?loc-from) (dummy-fact)
   (in-city ?loc-from ?city)
   (in-city ?loc-to ?city))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))

(:action FLY-AIRPLANE
  :parameters
   (?airplane
    ?loc-from
    ?loc-to)
  :precondition
   (and (AIRPLANE ?airplane) (AIRPORT ?loc-from) (AIRPORT ?loc-to) (dummy-fact)
	(at ?airplane ?loc-from))
  :effect
   (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))

(:action pref-op0
  :precondition (and (dummy-fact))
  :effect (and (not (dummy-fact)) (dummy-goal)))

(:action pref-op1
:precondition (and (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(at a0 l10)
(at a1 l10)
(at p0 l11)
(at p1 l10)
(at t0 l00)
(at t1 l11)
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
:effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))

(:action pref-op2
:precondition (and (dummy-fact)
(airplane a0) 
(airplane a1) 
(airport l00) 
(airport l10) 
(at a0 l10)
(at a1 l10)
(at p0 l11)
(at p1 l11)
(at t0 l00)
(at t1 l11)
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
:effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))

)
