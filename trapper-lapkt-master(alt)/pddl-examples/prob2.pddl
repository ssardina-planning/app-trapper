;; 'reduction of (Mas Sasquatch 8)'
;;
;; #####
;; # . #
;; # $ #
;; # @ #
;; ## ##
;;   #
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
    stone-01 - stone
  )
  (:init
    (IS-GOAL pos-02-01)
    (IS-NONGOAL pos-01-01)
    (IS-NONGOAL pos-01-02)
    (IS-NONGOAL pos-01-03)
    (IS-NONGOAL pos-02-02)
    (IS-NONGOAL pos-02-03)
    (IS-NONGOAL pos-03-01)
    (IS-NONGOAL pos-03-02)
    (IS-NONGOAL pos-03-03)
    (IS-NONGOAL pos-foo)
    
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
    
    (at player-01 pos-02-03)
    (at stone-01 pos-02-02)
    
    (clear pos-01-01)
    (clear pos-01-02)
    (clear pos-01-03)
    (clear pos-02-01)
    (clear pos-03-01)
    (clear pos-03-02)
    (clear pos-03-03)
    (clear pos-foo)
    (= (total-cost) 0)
  )
  (:goal (and
    (at-goal stone-01)
  ))
  (:metric minimize (total-cost))
)
