(define (domain blocksworld)
  (:requirements :strips)
(:predicates (clear ?x)
             (on-table ?x)
             (arm-empty)
             (holding ?x)
             (on ?x ?y)
             (dummy-goal)
             (dummy-fact))
(:functions (cost))
 
(:action pickup
  :parameters (?ob)
  :precondition (and (clear ?ob) (on-table ?ob) (arm-empty) (dummy-fact))
  :effect (and (holding ?ob) (not (clear ?ob)) (not (on-table ?ob)) 
               (not (arm-empty))))

(:action putdown
  :parameters  (?ob)
  :precondition (and (holding ?ob) (dummy-fact))
  :effect (and (clear ?ob) (arm-empty) (on-table ?ob) 
               (not (holding ?ob))))

(:action stack
  :parameters  (?ob ?underob)
  :precondition (and (clear ?underob) (holding ?ob) (dummy-fact))
  :effect (and (arm-empty) (clear ?ob) (on ?ob ?underob)
               (not (clear ?underob)) (not (holding ?ob))))

(:action unstack
  :parameters  (?ob ?underob)
  :precondition (and (on ?ob ?underob) (clear ?ob) (arm-empty) (dummy-fact))
  :effect (and (holding ?ob) (clear ?underob)
               (not (on ?ob ?underob)) (not (clear ?ob)) (not (arm-empty))))

(:action pref-op0
  :precondition (and (dummy-fact))
  :effect (and (not (dummy-fact)) (dummy-goal)))


(:action pref-op1
:precondition (and (dummy-fact)
(arm-empty )
(clear b1)
(on b1 b2)
(on-table b2)
)
:effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))

)
