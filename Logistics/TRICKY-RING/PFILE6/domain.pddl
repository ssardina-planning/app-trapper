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
                (CONNECTED ?loc1 ?loc2)
        (dummy-goal)
        (dummy-fact)
(dummy-tabustate0)(dummy-tabustate1)(dummy-tabustate2)(dummy-tabustate3)(dummy-tabustate4)(dummy-tabustate5)(dummy-tabustate6)(dummy-tabustate7)(dummy-tabustate8)(dummy-tabustate9)(dummy-tabustate10)(dummy-tabustate11)(dummy-tabustate12)(dummy-tabustate13)(dummy-tabustate14)(dummy-tabustate15)(dummy-tabustate16)(dummy-tabustate17)(dummy-tabustate18)(dummy-tabustate19)(dummy-tabustate20)(dummy-tabustate21)(dummy-tabustate22)(dummy-tabustate23)(dummy-tabustate24))
(:functions (total-cost))
 
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
   (and (CONNECTED ?loc-from ?loc-to) (AIRPLANE ?airplane) (AIRPORT ?loc-from) (AIRPORT ?loc-to) (dummy-fact)
	(at ?airplane ?loc-from))
  :effect
   (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))

(:action pref-op0
  :precondition (and (dummy-fact))
  :effect (and (not (dummy-fact)) (dummy-goal) (increase (total-cost) 100)))

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
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate0)))

(:action tabu-op1-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate1)))

(:action tabu-op2-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate2)))

(:action tabu-op3-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate3)))

(:action tabu-op4-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate4)))

(:action tabu-op5-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate5)))

(:action tabu-op6-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-13
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-14
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-15
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate6)))

(:action tabu-op7-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-13
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-14
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-15
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate7)))

(:action tabu-op8-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate8)))

(:action tabu-op9-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-10
:precondition (and (not (dummy-fact)) (not (at p2 l11)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate9)))

(:action tabu-op10-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-13
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-14
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-15
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate10)))

(:action tabu-op11-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-13
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-14
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-15
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate11)))

(:action tabu-op12-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-13
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-14
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-15
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate12)))

(:action tabu-op13-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-13
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-14
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-15
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate13)))

(:action tabu-op14-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-13
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-14
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-15
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate14)))

(:action tabu-op15-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate15)))

(:action tabu-op16-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate16)))

(:action tabu-op17-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-13
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-14
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-15
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-22
:precondition (and (not (dummy-fact)) (not (in p2 t1)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate17)))

(:action tabu-op18-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate18)))

(:action tabu-op19-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate19)))

(:action tabu-op20-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-16
:precondition (and (not (dummy-fact)) (not (at t2 l20)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate20)))

(:action tabu-op21-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-15
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate21)))

(:action tabu-op22-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-14
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate22)))

(:action tabu-op23-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-10
:precondition (and (not (dummy-fact)) (not (at p2 l10)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-11
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-12
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-13
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-14
:precondition (and (not (dummy-fact)) (not (at t0 l01)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-15
:precondition (and (not (dummy-fact)) (not (at t1 l11)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-16
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-17
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-18
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-19
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-20
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-21
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-22
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate23)))

(:action tabu-op24-1
:precondition (and (not (dummy-fact)) (not (airplane a0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-2
:precondition (and (not (dummy-fact)) (not (airplane a1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-3
:precondition (and (not (dummy-fact)) (not (airport l00) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-4
:precondition (and (not (dummy-fact)) (not (airport l10) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-5
:precondition (and (not (dummy-fact)) (not (airport l20) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-6
:precondition (and (not (dummy-fact)) (not (at a0 l20)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-7
:precondition (and (not (dummy-fact)) (not (at a1 l20)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-8
:precondition (and (not (dummy-fact)) (not (at p0 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-9
:precondition (and (not (dummy-fact)) (not (at p1 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-10
:precondition (and (not (dummy-fact)) (not (at p3 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-11
:precondition (and (not (dummy-fact)) (not (at p4 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-12
:precondition (and (not (dummy-fact)) (not (at p5 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-13
:precondition (and (not (dummy-fact)) (not (at t0 l00)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-14
:precondition (and (not (dummy-fact)) (not (at t1 l10)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-15
:precondition (and (not (dummy-fact)) (not (at t2 l21)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-16
:precondition (and (not (dummy-fact)) (not (city c0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-17
:precondition (and (not (dummy-fact)) (not (city c1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-18
:precondition (and (not (dummy-fact)) (not (city c2) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-19
:precondition (and (not (dummy-fact)) (not (connected l00 l10) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-20
:precondition (and (not (dummy-fact)) (not (connected l00 l20) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-21
:precondition (and (not (dummy-fact)) (not (connected l10 l00) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-22
:precondition (and (not (dummy-fact)) (not (in p2 a0)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-23
:precondition (and (not (dummy-fact)) (not (in-city l00 c0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-24
:precondition (and (not (dummy-fact)) (not (in-city l01 c0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-25
:precondition (and (not (dummy-fact)) (not (in-city l10 c1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-26
:precondition (and (not (dummy-fact)) (not (in-city l11 c1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-27
:precondition (and (not (dummy-fact)) (not (in-city l20 c2) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-28
:precondition (and (not (dummy-fact)) (not (in-city l21 c2) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-29
:precondition (and (not (dummy-fact)) (not (location l00) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-30
:precondition (and (not (dummy-fact)) (not (location l01) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-31
:precondition (and (not (dummy-fact)) (not (location l10) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-32
:precondition (and (not (dummy-fact)) (not (location l11) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-33
:precondition (and (not (dummy-fact)) (not (location l20) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-34
:precondition (and (not (dummy-fact)) (not (location l21) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-35
:precondition (and (not (dummy-fact)) (not (obj p0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-36
:precondition (and (not (dummy-fact)) (not (obj p1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-37
:precondition (and (not (dummy-fact)) (not (obj p2) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-38
:precondition (and (not (dummy-fact)) (not (obj p3) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-39
:precondition (and (not (dummy-fact)) (not (obj p4) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-40
:precondition (and (not (dummy-fact)) (not (obj p5) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-41
:precondition (and (not (dummy-fact)) (not (truck t0) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-42
:precondition (and (not (dummy-fact)) (not (truck t1) ))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-43
:precondition (and (not (dummy-fact)) (not (truck t2) ))
:effect (and (dummy-tabustate24)))

)
