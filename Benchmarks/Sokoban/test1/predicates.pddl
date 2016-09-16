(define (domain sokoban-typed)
(:requirements :typing)
(:types LOC DIR BOX)
(:predicates 
             (at-robot ?l - LOC)
             (at ?o - BOX ?l - LOC)
             (adjacent ?l1 - LOC ?l2 - LOC ?d - DIR) 
             (clear ?l - LOC)
