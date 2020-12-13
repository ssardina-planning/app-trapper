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

(dummy-goal)(dummy-fact)(dummy-tabustate0)(dummy-tabustate1)(dummy-tabustate2)(dummy-tabustate3)(dummy-tabustate4)(dummy-tabustate5)(dummy-tabustate6)(dummy-tabustate7)(dummy-tabustate8)(dummy-tabustate9)(dummy-tabustate10)(dummy-tabustate11)(dummy-tabustate12)(dummy-tabustate13)(dummy-tabustate14)(dummy-tabustate15)(dummy-tabustate16)(dummy-tabustate17)(dummy-tabustate18)(dummy-tabustate19)(dummy-tabustate20)(dummy-tabustate21)(dummy-tabustate22)(dummy-tabustate23)(dummy-tabustate24)(dummy-tabustate25)(dummy-tabustate26)(dummy-tabustate27)(dummy-tabustate28)(dummy-tabustate29)(dummy-tabustate30)(dummy-tabustate31)(dummy-tabustate32)(dummy-tabustate33)(dummy-tabustate34)(dummy-tabustate35)(dummy-tabustate36)(dummy-tabustate37)(dummy-tabustate38)(dummy-tabustate39)(dummy-tabustate40)(dummy-tabustate41)(dummy-tabustate42)(dummy-tabustate43)(dummy-tabustate44)(dummy-tabustate45)(dummy-tabustate46)(dummy-tabustate47)(dummy-tabustate48)(dummy-tabustate49)(dummy-tabustate50)(dummy-tabustate51)(dummy-tabustate52)(dummy-tabustate53)(dummy-tabustate54)(dummy-tabustate55)(dummy-tabustate56)(dummy-tabustate57)(dummy-tabustate58)(dummy-tabustate59)(dummy-tabustate60)(dummy-tabustate61)(dummy-tabustate62)(dummy-tabustate63)(dummy-tabustate64)(dummy-tabustate65)(dummy-tabustate66)(dummy-tabustate67)(dummy-tabustate68)(dummy-tabustate69)(dummy-tabustate70)(dummy-tabustate71)(dummy-tabustate72)(dummy-tabustate73)(dummy-tabustate74)(dummy-tabustate75)(dummy-tabustate76)(dummy-tabustate77)(dummy-tabustate78)(dummy-tabustate79)(dummy-tabustate80)(dummy-tabustate81)(dummy-tabustate82)(dummy-tabustate83)(dummy-tabustate84)(dummy-tabustate85)(dummy-tabustate86)(dummy-tabustate87)(dummy-tabustate88)(dummy-tabustate89)(dummy-tabustate90)(dummy-tabustate91)(dummy-tabustate92)(dummy-tabustate93)(dummy-tabustate94)(dummy-tabustate95)(dummy-tabustate96)(dummy-tabustate97)(dummy-tabustate98)(dummy-tabustate99)(dummy-tabustate100)(dummy-tabustate101)(dummy-tabustate102)(dummy-tabustate103)(dummy-tabustate104)(dummy-tabustate105)(dummy-tabustate106)(dummy-tabustate107)(dummy-tabustate108)(dummy-tabustate109)(dummy-tabustate110)(dummy-tabustate111)(dummy-tabustate112)(dummy-tabustate113)(dummy-tabustate114)(dummy-tabustate115)(dummy-tabustate116)(dummy-tabustate117)(dummy-tabustate118)(dummy-tabustate119)(dummy-tabustate120)(dummy-tabustate121)(dummy-tabustate122)(dummy-tabustate123)(dummy-tabustate124)(dummy-tabustate125)(dummy-tabustate126)(dummy-tabustate127)(dummy-tabustate128)(dummy-tabustate129)(dummy-tabustate130)(dummy-tabustate131)(dummy-tabustate132)(dummy-tabustate133)(dummy-tabustate134)(dummy-tabustate135)(dummy-tabustate136)(dummy-tabustate137)(dummy-tabustate138)(dummy-tabustate139)(dummy-tabustate140)(dummy-tabustate141)(dummy-tabustate142)(dummy-tabustate143)(dummy-tabustate144)(dummy-tabustate145)(dummy-tabustate146)(dummy-tabustate147)(dummy-tabustate148)(dummy-tabustate149)(dummy-tabustate150)(dummy-tabustate151)(dummy-tabustate152)(dummy-tabustate153)(dummy-tabustate154)(dummy-tabustate155)(dummy-tabustate156)(dummy-tabustate157)(dummy-tabustate158)(dummy-tabustate159)(dummy-tabustate160)(dummy-tabustate161)(dummy-tabustate162)(dummy-tabustate163)(dummy-tabustate164)(dummy-tabustate165)(dummy-tabustate166)(dummy-tabustate167)(dummy-tabustate168)(dummy-tabustate169)(dummy-tabustate170)(dummy-tabustate171)(dummy-tabustate172)(dummy-tabustate173)(dummy-tabustate174)(dummy-tabustate175)(dummy-tabustate176)(dummy-tabustate177)(dummy-tabustate178)(dummy-tabustate179)(dummy-tabustate180)(dummy-tabustate181)(dummy-tabustate182)(dummy-tabustate183)(dummy-tabustate184)(dummy-tabustate185)(dummy-tabustate186)(dummy-tabustate187)(dummy-tabustate188)(dummy-tabustate189)(dummy-tabustate190)(dummy-tabustate191)(dummy-tabustate192)(dummy-tabustate193)(dummy-tabustate194)(dummy-tabustate195)(dummy-tabustate196)(dummy-tabustate197)(dummy-tabustate198)(dummy-tabustate199)(dummy-tabustate200)(dummy-tabustate201)(dummy-tabustate202)(dummy-tabustate203)(dummy-tabustate204)(dummy-tabustate205)(dummy-tabustate206)(dummy-tabustate207)(dummy-tabustate208)(dummy-tabustate209)(dummy-tabustate210)(dummy-tabustate211)(dummy-tabustate212)(dummy-tabustate213)(dummy-tabustate214)(dummy-tabustate215)(dummy-tabustate216)(dummy-tabustate217)(dummy-tabustate218)(dummy-tabustate219)(dummy-tabustate220)(dummy-tabustate221)(dummy-tabustate222)(dummy-tabustate223)(dummy-tabustate224)(dummy-tabustate225)(dummy-tabustate226)(dummy-tabustate227)(dummy-tabustate228)(dummy-tabustate229)(dummy-tabustate230)(dummy-tabustate231)(dummy-tabustate232)(dummy-tabustate233)(dummy-tabustate234)(dummy-tabustate235)(dummy-tabustate236)(dummy-tabustate237)(dummy-tabustate238)(dummy-tabustate239)(dummy-tabustate240)(dummy-tabustate241)(dummy-tabustate242)(dummy-tabustate243)(dummy-tabustate244)(dummy-tabustate245)(dummy-tabustate246)(dummy-tabustate247)(dummy-tabustate248))
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
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate0)))

(:action tabu-op0-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate0)))

(:action tabu-op1-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate1)))

(:action tabu-op1-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate1)))

(:action tabu-op2-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate2)))

(:action tabu-op2-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate2)))

(:action tabu-op3-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate3)))

(:action tabu-op3-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate3)))

(:action tabu-op4-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate4)))

(:action tabu-op4-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate4)))

(:action tabu-op5-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate5)))

(:action tabu-op5-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate5)))

(:action tabu-op6-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate6)))

(:action tabu-op6-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate6)))

(:action tabu-op7-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate7)))

(:action tabu-op7-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate7)))

(:action tabu-op8-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate8)))

(:action tabu-op8-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate8)))

(:action tabu-op9-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate9)))

(:action tabu-op9-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate9)))

(:action tabu-op10-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate10)))

(:action tabu-op10-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate10)))

(:action tabu-op11-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate11)))

(:action tabu-op11-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate11)))

(:action tabu-op12-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate12)))

(:action tabu-op12-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate12)))

(:action tabu-op13-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate13)))

(:action tabu-op13-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate13)))

(:action tabu-op14-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate14)))

(:action tabu-op14-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate14)))

(:action tabu-op15-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate15)))

(:action tabu-op15-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate15)))

(:action tabu-op16-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate16)))

(:action tabu-op16-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate16)))

(:action tabu-op17-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate17)))

(:action tabu-op17-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate17)))

(:action tabu-op18-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate18)))

(:action tabu-op18-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate18)))

(:action tabu-op19-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate19)))

(:action tabu-op19-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate19)))

(:action tabu-op20-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate20)))

(:action tabu-op20-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate20)))

(:action tabu-op21-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate21)))

(:action tabu-op21-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate21)))

(:action tabu-op22-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate22)))

(:action tabu-op22-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate22)))

(:action tabu-op23-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate23)))

(:action tabu-op23-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate23)))

(:action tabu-op24-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate24)))

(:action tabu-op24-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate24)))

(:action tabu-op25-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate25)))

(:action tabu-op25-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate25)))

(:action tabu-op26-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate26)))

(:action tabu-op26-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate26)))

(:action tabu-op27-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate27)))

(:action tabu-op27-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate27)))

(:action tabu-op28-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate28)))

(:action tabu-op28-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate28)))

(:action tabu-op29-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate29)))

(:action tabu-op29-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate29)))

(:action tabu-op30-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate30)))

(:action tabu-op30-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate30)))

(:action tabu-op31-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate31)))

(:action tabu-op31-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate31)))

(:action tabu-op32-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate32)))

(:action tabu-op32-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate32)))

(:action tabu-op33-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate33)))

(:action tabu-op33-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate33)))

(:action tabu-op34-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate34)))

(:action tabu-op34-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate34)))

(:action tabu-op35-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate35)))

(:action tabu-op35-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate35)))

(:action tabu-op36-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate36)))

(:action tabu-op36-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate36)))

(:action tabu-op37-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate37)))

(:action tabu-op37-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate37)))

(:action tabu-op38-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate38)))

(:action tabu-op38-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate38)))

(:action tabu-op39-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate39)))

(:action tabu-op39-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate39)))

(:action tabu-op40-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate40)))

(:action tabu-op40-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate40)))

(:action tabu-op41-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate41)))

(:action tabu-op41-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate41)))

(:action tabu-op42-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate42)))

(:action tabu-op42-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate42)))

(:action tabu-op43-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate43)))

(:action tabu-op43-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate43)))

(:action tabu-op44-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate44)))

(:action tabu-op44-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate44)))

(:action tabu-op45-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate45)))

(:action tabu-op45-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate45)))

(:action tabu-op46-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate46)))

(:action tabu-op46-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate46)))

(:action tabu-op47-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate47)))

(:action tabu-op47-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate47)))

(:action tabu-op48-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate48)))

(:action tabu-op48-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate48)))

(:action tabu-op49-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate49)))

(:action tabu-op49-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate49)))

(:action tabu-op50-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate50)))

(:action tabu-op50-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate50)))

(:action tabu-op51-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate51)))

(:action tabu-op51-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate51)))

(:action tabu-op52-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate52)))

(:action tabu-op52-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate52)))

(:action tabu-op53-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate53)))

(:action tabu-op53-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate53)))

(:action tabu-op54-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate54)))

(:action tabu-op54-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate54)))

(:action tabu-op55-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate55)))

(:action tabu-op55-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate55)))

(:action tabu-op56-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate56)))

(:action tabu-op56-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate56)))

(:action tabu-op57-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate57)))

(:action tabu-op57-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate57)))

(:action tabu-op58-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate58)))

(:action tabu-op58-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate58)))

(:action tabu-op59-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate59)))

(:action tabu-op59-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate59)))

(:action tabu-op60-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate60)))

(:action tabu-op60-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate60)))

(:action tabu-op61-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate61)))

(:action tabu-op61-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate61)))

(:action tabu-op62-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate62)))

(:action tabu-op62-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate62)))

(:action tabu-op63-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate63)))

(:action tabu-op63-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate63)))

(:action tabu-op64-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate64)))

(:action tabu-op64-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate64)))

(:action tabu-op65-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate65)))

(:action tabu-op65-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate65)))

(:action tabu-op66-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate66)))

(:action tabu-op66-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate66)))

(:action tabu-op67-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate67)))

(:action tabu-op67-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate67)))

(:action tabu-op68-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate68)))

(:action tabu-op68-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate68)))

(:action tabu-op69-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate69)))

(:action tabu-op69-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate69)))

(:action tabu-op70-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate70)))

(:action tabu-op70-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate70)))

(:action tabu-op71-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate71)))

(:action tabu-op71-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate71)))

(:action tabu-op72-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate72)))

(:action tabu-op72-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate72)))

(:action tabu-op73-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate73)))

(:action tabu-op73-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate73)))

(:action tabu-op74-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate74)))

(:action tabu-op74-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate74)))

(:action tabu-op75-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate75)))

(:action tabu-op75-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate75)))

(:action tabu-op76-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate76)))

(:action tabu-op76-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate76)))

(:action tabu-op77-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate77)))

(:action tabu-op77-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate77)))

(:action tabu-op78-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate78)))

(:action tabu-op78-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate78)))

(:action tabu-op79-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate79)))

(:action tabu-op79-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate79)))

(:action tabu-op80-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate80)))

(:action tabu-op80-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate80)))

(:action tabu-op81-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate81)))

(:action tabu-op81-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate81)))

(:action tabu-op82-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate82)))

(:action tabu-op82-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate82)))

(:action tabu-op83-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate83)))

(:action tabu-op83-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate83)))

(:action tabu-op84-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate84)))

(:action tabu-op84-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate84)))

(:action tabu-op85-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate85)))

(:action tabu-op85-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate85)))

(:action tabu-op86-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate86)))

(:action tabu-op86-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate86)))

(:action tabu-op87-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate87)))

(:action tabu-op87-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate87)))

(:action tabu-op88-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate88)))

(:action tabu-op88-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate88)))

(:action tabu-op89-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate89)))

(:action tabu-op89-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate89)))

(:action tabu-op90-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate90)))

(:action tabu-op90-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate90)))

(:action tabu-op91-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate91)))

(:action tabu-op91-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate91)))

(:action tabu-op92-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate92)))

(:action tabu-op92-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate92)))

(:action tabu-op93-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate93)))

(:action tabu-op93-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate93)))

(:action tabu-op94-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate94)))

(:action tabu-op94-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate94)))

(:action tabu-op95-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate95)))

(:action tabu-op95-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate95)))

(:action tabu-op96-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate96)))

(:action tabu-op96-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate96)))

(:action tabu-op97-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate97)))

(:action tabu-op97-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate97)))

(:action tabu-op98-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate98)))

(:action tabu-op98-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate98)))

(:action tabu-op99-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate99)))

(:action tabu-op99-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate99)))

(:action tabu-op100-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate100)))

(:action tabu-op100-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate100)))

(:action tabu-op101-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate101)))

(:action tabu-op101-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate101)))

(:action tabu-op102-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate102)))

(:action tabu-op102-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate102)))

(:action tabu-op103-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate103)))

(:action tabu-op103-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate103)))

(:action tabu-op104-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate104)))

(:action tabu-op104-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate104)))

(:action tabu-op105-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate105)))

(:action tabu-op105-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate105)))

(:action tabu-op106-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate106)))

(:action tabu-op106-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate106)))

(:action tabu-op107-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate107)))

(:action tabu-op107-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate107)))

(:action tabu-op108-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate108)))

(:action tabu-op108-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate108)))

(:action tabu-op109-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate109)))

(:action tabu-op109-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate109)))

(:action tabu-op110-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate110)))

(:action tabu-op110-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate110)))

(:action tabu-op111-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate111)))

(:action tabu-op111-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate111)))

(:action tabu-op112-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate112)))

(:action tabu-op112-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate112)))

(:action tabu-op113-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate113)))

(:action tabu-op113-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate113)))

(:action tabu-op114-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate114)))

(:action tabu-op114-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate114)))

(:action tabu-op115-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate115)))

(:action tabu-op115-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate115)))

(:action tabu-op116-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate116)))

(:action tabu-op116-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate116)))

(:action tabu-op117-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate117)))

(:action tabu-op117-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate117)))

(:action tabu-op118-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate118)))

(:action tabu-op118-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate118)))

(:action tabu-op119-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate119)))

(:action tabu-op119-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate119)))

(:action tabu-op120-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate120)))

(:action tabu-op120-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate120)))

(:action tabu-op121-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate121)))

(:action tabu-op121-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate121)))

(:action tabu-op122-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate122)))

(:action tabu-op122-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate122)))

(:action tabu-op123-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate123)))

(:action tabu-op123-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate123)))

(:action tabu-op124-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate124)))

(:action tabu-op124-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate124)))

(:action tabu-op125-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate125)))

(:action tabu-op125-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate125)))

(:action tabu-op126-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate126)))

(:action tabu-op126-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate126)))

(:action tabu-op127-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate127)))

(:action tabu-op127-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate127)))

(:action tabu-op128-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate128)))

(:action tabu-op128-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate128)))

(:action tabu-op129-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate129)))

(:action tabu-op129-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate129)))

(:action tabu-op130-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate130)))

(:action tabu-op130-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate130)))

(:action tabu-op131-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate131)))

(:action tabu-op131-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate131)))

(:action tabu-op132-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate132)))

(:action tabu-op132-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate132)))

(:action tabu-op133-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate133)))

(:action tabu-op133-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate133)))

(:action tabu-op134-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate134)))

(:action tabu-op134-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate134)))

(:action tabu-op135-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate135)))

(:action tabu-op135-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate135)))

(:action tabu-op136-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate136)))

(:action tabu-op136-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate136)))

(:action tabu-op137-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate137)))

(:action tabu-op137-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate137)))

(:action tabu-op138-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate138)))

(:action tabu-op138-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate138)))

(:action tabu-op139-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate139)))

(:action tabu-op139-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate139)))

(:action tabu-op140-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate140)))

(:action tabu-op140-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate140)))

(:action tabu-op141-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate141)))

(:action tabu-op141-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate141)))

(:action tabu-op142-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate142)))

(:action tabu-op142-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate142)))

(:action tabu-op143-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate143)))

(:action tabu-op143-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate143)))

(:action tabu-op144-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate144)))

(:action tabu-op144-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate144)))

(:action tabu-op145-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate145)))

(:action tabu-op145-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate145)))

(:action tabu-op146-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate146)))

(:action tabu-op146-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate146)))

(:action tabu-op147-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate147)))

(:action tabu-op147-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate147)))

(:action tabu-op148-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate148)))

(:action tabu-op148-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate148)))

(:action tabu-op149-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate149)))

(:action tabu-op149-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate149)))

(:action tabu-op150-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate150)))

(:action tabu-op150-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate150)))

(:action tabu-op151-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate151)))

(:action tabu-op151-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate151)))

(:action tabu-op152-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate152)))

(:action tabu-op152-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate152)))

(:action tabu-op153-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate153)))

(:action tabu-op153-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate153)))

(:action tabu-op154-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate154)))

(:action tabu-op154-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate154)))

(:action tabu-op155-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate155)))

(:action tabu-op155-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate155)))

(:action tabu-op156-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate156)))

(:action tabu-op156-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate156)))

(:action tabu-op157-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate157)))

(:action tabu-op157-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate157)))

(:action tabu-op158-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate158)))

(:action tabu-op158-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate158)))

(:action tabu-op159-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate159)))

(:action tabu-op159-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate159)))

(:action tabu-op160-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate160)))

(:action tabu-op160-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate160)))

(:action tabu-op161-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate161)))

(:action tabu-op161-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate161)))

(:action tabu-op162-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate162)))

(:action tabu-op162-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate162)))

(:action tabu-op163-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate163)))

(:action tabu-op163-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate163)))

(:action tabu-op164-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate164)))

(:action tabu-op164-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate164)))

(:action tabu-op165-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate165)))

(:action tabu-op165-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate165)))

(:action tabu-op166-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate166)))

(:action tabu-op166-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate166)))

(:action tabu-op167-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate167)))

(:action tabu-op167-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate167)))

(:action tabu-op168-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate168)))

(:action tabu-op168-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate168)))

(:action tabu-op169-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate169)))

(:action tabu-op169-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate169)))

(:action tabu-op170-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate170)))

(:action tabu-op170-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate170)))

(:action tabu-op171-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate171)))

(:action tabu-op171-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate171)))

(:action tabu-op172-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate172)))

(:action tabu-op172-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate172)))

(:action tabu-op173-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate173)))

(:action tabu-op173-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate173)))

(:action tabu-op174-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate174)))

(:action tabu-op174-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate174)))

(:action tabu-op175-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate175)))

(:action tabu-op175-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate175)))

(:action tabu-op176-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate176)))

(:action tabu-op176-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate176)))

(:action tabu-op177-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate177)))

(:action tabu-op177-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate177)))

(:action tabu-op178-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate178)))

(:action tabu-op178-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate178)))

(:action tabu-op179-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate179)))

(:action tabu-op179-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate179)))

(:action tabu-op180-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate180)))

(:action tabu-op180-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate180)))

(:action tabu-op181-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate181)))

(:action tabu-op181-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate181)))

(:action tabu-op182-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate182)))

(:action tabu-op182-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate182)))

(:action tabu-op183-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate183)))

(:action tabu-op183-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate183)))

(:action tabu-op184-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate184)))

(:action tabu-op184-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate184)))

(:action tabu-op185-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate185)))

(:action tabu-op185-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate185)))

(:action tabu-op186-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate186)))

(:action tabu-op186-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate186)))

(:action tabu-op187-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate187)))

(:action tabu-op187-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate187)))

(:action tabu-op188-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate188)))

(:action tabu-op188-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate188)))

(:action tabu-op189-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate189)))

(:action tabu-op189-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate189)))

(:action tabu-op190-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate190)))

(:action tabu-op190-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate190)))

(:action tabu-op191-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate191)))

(:action tabu-op191-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate191)))

(:action tabu-op192-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate192)))

(:action tabu-op192-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate192)))

(:action tabu-op193-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate193)))

(:action tabu-op193-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate193)))

(:action tabu-op194-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate194)))

(:action tabu-op194-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate194)))

(:action tabu-op195-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate195)))

(:action tabu-op195-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate195)))

(:action tabu-op196-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate196)))

(:action tabu-op196-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate196)))

(:action tabu-op197-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate197)))

(:action tabu-op197-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate197)))

(:action tabu-op198-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate198)))

(:action tabu-op198-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate198)))

(:action tabu-op199-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate199)))

(:action tabu-op199-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate199)))

(:action tabu-op200-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate200)))

(:action tabu-op200-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate200)))

(:action tabu-op201-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate201)))

(:action tabu-op201-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate201)))

(:action tabu-op202-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate202)))

(:action tabu-op202-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate202)))

(:action tabu-op203-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate203)))

(:action tabu-op203-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate203)))

(:action tabu-op204-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate204)))

(:action tabu-op204-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate204)))

(:action tabu-op205-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate205)))

(:action tabu-op205-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate205)))

(:action tabu-op206-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate206)))

(:action tabu-op206-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate206)))

(:action tabu-op207-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate207)))

(:action tabu-op207-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate207)))

(:action tabu-op208-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate208)))

(:action tabu-op208-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate208)))

(:action tabu-op209-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate209)))

(:action tabu-op209-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate209)))

(:action tabu-op210-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate210)))

(:action tabu-op210-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate210)))

(:action tabu-op211-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate211)))

(:action tabu-op211-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate211)))

(:action tabu-op212-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate212)))

(:action tabu-op212-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate212)))

(:action tabu-op213-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate213)))

(:action tabu-op213-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate213)))

(:action tabu-op214-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate214)))

(:action tabu-op214-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate214)))

(:action tabu-op215-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate215)))

(:action tabu-op215-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate215)))

(:action tabu-op216-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate216)))

(:action tabu-op216-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate216)))

(:action tabu-op217-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate217)))

(:action tabu-op217-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate217)))

(:action tabu-op218-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate218)))

(:action tabu-op218-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate218)))

(:action tabu-op219-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate219)))

(:action tabu-op219-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate219)))

(:action tabu-op220-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate220)))

(:action tabu-op220-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate220)))

(:action tabu-op221-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate221)))

(:action tabu-op221-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate221)))

(:action tabu-op222-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate222)))

(:action tabu-op222-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate222)))

(:action tabu-op223-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate223)))

(:action tabu-op223-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate223)))

(:action tabu-op224-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate224)))

(:action tabu-op224-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate224)))

(:action tabu-op225-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate225)))

(:action tabu-op225-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate225)))

(:action tabu-op226-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate226)))

(:action tabu-op226-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate226)))

(:action tabu-op227-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate227)))

(:action tabu-op227-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate227)))

(:action tabu-op228-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate228)))

(:action tabu-op228-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate228)))

(:action tabu-op229-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate229)))

(:action tabu-op229-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate229)))

(:action tabu-op230-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate230)))

(:action tabu-op230-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate230)))

(:action tabu-op231-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate231)))

(:action tabu-op231-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate231)))

(:action tabu-op232-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate232)))

(:action tabu-op232-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate232)))

(:action tabu-op233-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate233)))

(:action tabu-op233-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate233)))

(:action tabu-op234-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate234)))

(:action tabu-op234-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate234)))

(:action tabu-op235-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate235)))

(:action tabu-op235-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate235)))

(:action tabu-op236-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate236)))

(:action tabu-op236-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate236)))

(:action tabu-op237-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate237)))

(:action tabu-op237-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate237)))

(:action tabu-op238-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate238)))

(:action tabu-op238-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate238)))

(:action tabu-op239-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate239)))

(:action tabu-op239-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate239)))

(:action tabu-op240-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate240)))

(:action tabu-op240-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate240)))

(:action tabu-op241-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate241)))

(:action tabu-op241-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate241)))

(:action tabu-op242-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate242)))

(:action tabu-op242-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate242)))

(:action tabu-op243-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate243)))

(:action tabu-op243-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate243)))

(:action tabu-op244-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate244)))

(:action tabu-op244-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate244)))

(:action tabu-op245-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate245)))

(:action tabu-op245-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate245)))

(:action tabu-op246-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate246)))

(:action tabu-op246-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate246)))

(:action tabu-op247-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate247)))

(:action tabu-op247-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate247)))

(:action tabu-op248-1
:precondition (and (not (dummy-fact)) (not (clear b3)))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-2
:precondition (and (not (dummy-fact)) (not (handempty )))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-3
:precondition (and (not (dummy-fact)) (not (on b3 b4)))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-4
:precondition (and (not (dummy-fact)) (not (on b4 b5)))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-5
:precondition (and (not (dummy-fact)) (not (ontable b2)))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-6
:precondition (and (not (dummy-fact)) (not (stai_on b1 b2)))
:effect (and (dummy-tabustate248)))

(:action tabu-op248-7
:precondition (and (not (dummy-fact)) (not (stai_on b5 b1)))
:effect (and (dummy-tabustate248)))

)
