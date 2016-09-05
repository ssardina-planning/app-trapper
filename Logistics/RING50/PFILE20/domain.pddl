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
(airport l20) 
(airport l30) 
(airport l40) 
(at a0 l40)
(at a1 l20)
(at p0 l40)
(at p1 l10)
(at p2 l40)
(at p3 l20)
(at p4 l21)
(at t0 l01)
(at t1 l10)
(at t2 l21)
(at t3 l30)
(at t4 l41)
(city c0) 
(city c1) 
(city c2) 
(city c3) 
(city c4) 
(in-city l00 c0) 
(in-city l01 c0) 
(in-city l10 c1) 
(in-city l11 c1) 
(in-city l20 c2) 
(in-city l21 c2) 
(in-city l30 c3) 
(in-city l31 c3) 
(in-city l40 c4) 
(in-city l41 c4) 
(location l00) 
(location l01) 
(location l10) 
(location l11) 
(location l20) 
(location l21) 
(location l30) 
(location l31) 
(location l40) 
(location l41) 
(obj p0) 
(obj p1) 
(obj p2) 
(obj p3) 
(obj p4) 
(truck t0) 
(truck t1) 
(truck t2) 
(truck t3) 
(truck t4) 
)
:effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))

)
