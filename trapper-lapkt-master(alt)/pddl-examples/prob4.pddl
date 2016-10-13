;; 'reduction of (Mas Sasquatch 8)'
;;
;; ## ##
;; ## ##
;; ## ##
;; # $.#
;; # @ #
;; # $.#
;; ## ##
;; ## ##
;; ## ##
(define (problem p147-microban-sequential)
  (:domain sokoban-sequential)
  (:objects
    dir-down - direction
    dir-left - direction
    dir-right - direction
    dir-up - direction
    player-01 - player
    pos-01-01 - location
    pos-01-02 - location
    pos-01-03 - location
    pos-02-01 - location
    pos-02-02 - location
    pos-02-03 - location
    pos-03-01 - location
    pos-03-02 - location
    pos-03-03 - location
    pos-foo - location
    pos-foo2 - location
    pos-foo3 - location
    pos-boo - location
    pos-boo2 - location
    pos-boo3 - location
    stone-01 - stone
    stone-02 - stone
  )
  (:init
    (IS-GOAL pos-03-01)
    (IS-GOAL pos-03-03)
    (IS-NONGOAL pos-01-01)
    (IS-NONGOAL pos-01-02)
    (IS-NONGOAL pos-01-03)
    (IS-NONGOAL pos-02-02)
    (IS-NONGOAL pos-02-03)
    (IS-NONGOAL pos-03-01)
    (IS-NONGOAL pos-03-02)
    (IS-NONGOAL pos-foo)
    (IS-NONGOAL pos-foo2)
    (IS-NONGOAL pos-foo3)
    (IS-NONGOAL pos-boo)
    (IS-NONGOAL pos-boo2)
    (IS-NONGOAL pos-boo3)

    
    (MOVE-DIR pos-01-01 pos-02-01 dir-right)
    (MOVE-DIR pos-02-01 pos-03-01 dir-right)
    
    (MOVE-DIR pos-01-02 pos-02-02 dir-right)
    (MOVE-DIR pos-02-02 pos-03-02 dir-right)
    
    (MOVE-DIR pos-01-03 pos-02-03 dir-right)
    (MOVE-DIR pos-02-03 pos-03-03 dir-right)
    
    
    (MOVE-DIR pos-03-01 pos-02-01 dir-left)
    (MOVE-DIR pos-02-01 pos-01-01 dir-left)
    
    (MOVE-DIR pos-03-02 pos-02-02 dir-left)
    (MOVE-DIR pos-02-02 pos-01-02 dir-left)
    
    (MOVE-DIR pos-03-03 pos-02-03 dir-left)
    (MOVE-DIR pos-02-03 pos-01-03 dir-left)
    
    
    (MOVE-DIR pos-01-01 pos-01-02 dir-down)
    (MOVE-DIR pos-01-02 pos-01-03 dir-down)

    (MOVE-DIR pos-02-03 pos-foo dir-down)
    (MOVE-DIR pos-foo pos-02-03 dir-up)
    (MOVE-DIR pos-foo pos-foo2 dir-down)
    (MOVE-DIR pos-foo2 pos-foo dir-up)
    (MOVE-DIR pos-foo2 pos-foo3 dir-down)
    (MOVE-DIR pos-foo3 pos-foo2 dir-up)

    (MOVE-DIR pos-02-01 pos-boo dir-up)
    (MOVE-DIR pos-boo pos-02-01 dir-down)
    (MOVE-DIR pos-boo2 pos-boo dir-down)
    (MOVE-DIR pos-boo pos-boo2 dir-up)
    (MOVE-DIR pos-boo3 pos-boo2 dir-down)
    (MOVE-DIR pos-boo2 pos-boo3 dir-up)
    (MOVE-DIR pos-boo3 pos-boo2 dir-down)
    (MOVE-DIR pos-boo2 pos-boo3 dir-up)
    (MOVE-DIR pos-foo3 pos-boo3 dir-down)
    (MOVE-DIR pos-boo3 pos-foo3 dir-up)
    
    (MOVE-DIR pos-02-01 pos-02-02 dir-down)
    (MOVE-DIR pos-02-02 pos-02-03 dir-down)
    
    (MOVE-DIR pos-03-01 pos-03-02 dir-down)
    (MOVE-DIR pos-03-02 pos-03-03 dir-down)
    
    
    (MOVE-DIR pos-01-03 pos-01-02 dir-up)
    (MOVE-DIR pos-01-02 pos-01-01 dir-up)
    
    (MOVE-DIR pos-02-03 pos-02-02 dir-up)
    (MOVE-DIR pos-02-02 pos-02-01 dir-up)
    
    (MOVE-DIR pos-03-03 pos-03-02 dir-up)
    (MOVE-DIR pos-03-02 pos-03-01 dir-up)
    
    (at player-01 pos-02-02)
    (at stone-01 pos-02-03)
    (at stone-02 pos-02-01)
    
    (clear pos-01-01)
    (clear pos-01-02)
    (clear pos-01-03)

    (clear pos-03-01)
    (clear pos-03-02)
    (clear pos-03-03)
    (clear pos-foo)
    (clear pos-foo2)
    (clear pos-foo3)
    (clear pos-boo)
    (clear pos-boo2)
    (clear pos-boo3)
    (= (total-cost) 0)
  )
  (:goal (and
    (at-goal stone-01)
    (at-goal stone-02)
  ))
  (:metric minimize (total-cost))
)
