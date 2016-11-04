(define (domain blocksworld)
(:requirements :typing)
(:types block - object
)
(:predicates (on ?x - block ?y - block)
(ontable ?x - block)
(clear ?x - block)
(handempty)
(holding ?x - block)
(stai_on ?x - block ?y - block)
;(stag_on ?x - block ?y - block)

(dummy-goal)(dummy-fact)(dummy-tabustate0))
(:functions (cost))(:action pick-up
:parameters ( ?x - block)
:precondition (and (clear ?x)(ontable ?x)(handempty))
:effect (and (not (ontable ?x))(not (clear ?x))(not (handempty))(holding ?x))
)
(:action put-down
:parameters ( ?x - block)
:precondition (and (holding ?x))
:effect (and (not (holding ?x))(clear ?x)(handempty)(ontable ?x))
)
(:action stack
:parameters ( ?x - block ?y - block)
:precondition (and (holding ?x)(clear ?y));(stag_on ?x ?y))
:effect (and (not (holding ?x))(not (clear ?y))(clear ?x)(handempty)(on ?x ?y))
)
(:action unstack
:parameters ( ?x - block ?y - block)
:precondition (and (clear ?x)(handempty)(stai_on ?x ?y))
:effect (and (holding ?x)(clear ?y)(not (clear ?x))(not (handempty))(not (stai_on ?x ?y)))
)

(:action pref-op0
  :precondition (and (dummy-fact))
  :effect (and (not (dummy-fact)) (dummy-goal)))(:action tabu-op0-1
:precondition (and (not (dummy-fact)) (not (clear b1)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-2
:precondition (and (not (dummy-fact)) (not (clear b2)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-3
:precondition (and (not (dummy-fact)) (not (clear b4)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-4
:precondition (and (not (dummy-fact)) (not (clear b5)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-5
:precondition (and (not (dummy-fact)) (not (clear b6)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-6
:precondition (and (not (dummy-fact)) (not (clear b8)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-7
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-8
:precondition (and (not (dummy-fact)) (not (on b8 b9)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-9
:precondition (and (not (dummy-fact)) (not (on b9 b10)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-10
:precondition (and (not (dummy-fact)) (not (ontable b1)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-11
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-12
:precondition (and (not (dummy-fact)) (not (ontable b3)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-13
:precondition (and (not (dummy-fact)) (not (ontable b4)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-14
:precondition (and (not (dummy-fact)) (not (ontable b5)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-15
:precondition (and (not (dummy-fact)) (not (ontable b7)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-16
:precondition (and (not (dummy-fact)) (not (stai_on b10 b3)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-17
:precondition (and (not (dummy-fact)) (not (stai_on b6 b7)))
:effect (and (dummy-tabustate0)))

)
