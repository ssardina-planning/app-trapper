(define (domain woodworking)
  (:requirements :typing :action-costs)
  (:types
      acolour awood woodobj machine 
      surface treatmentstatus
      aboardsize apartsize - object
      highspeed-saw glazer grinder immersion-varnisher
      planer saw spray-varnisher - machine
      board part - woodobj)

  (:constants
              verysmooth smooth rough - surface
              varnished glazed untreated colourfragments - treatmentstatus
              natural - acolour
              small medium large - apartsize)

  (:predicates 
            (unused ?obj - part)
            (available ?obj - woodobj)

            (surface-condition ?obj - woodobj ?surface - surface)
            (treatment ?obj - part ?treatment - treatmentstatus)
            (colour ?obj - part ?colour - acolour)
            (wood ?obj - woodobj ?wood - awood)
            (boardsize ?board - board ?size - aboardsize)
            (goalsize ?part - part ?size - apartsize)
            (boardsize-successor ?size1 ?size2 - aboardsize)

            (in-highspeed-saw ?b - board ?m - highspeed-saw)
            (empty ?m - highspeed-saw)
            (has-colour ?machine - machine ?colour - acolour)
            (contains-part ?b - board ?p - part)
            (grind-treatment-change ?old ?new - treatmentstatus)
            (is-smooth ?surface - surface)
