; woodworking task with 9 parts and 500% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 717942

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green blue black white red - acolour
    pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (has-colour glazer0 blue)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    (unused p1)
    (goalsize p1 medium)
    (unused p2)
    (goalsize p2 small)
    (unused p3)
    (goalsize p3 large)
    (unused p4)
    (goalsize p4 small)
    (unused p5)
    (goalsize p5 large)
    (unused p6)
    (goalsize p6 large)
    (unused p7)
    (goalsize p7 large)
    (unused p8)
    (goalsize p8 medium)
    (boardsize b0 s9)
    (wood b0 beech)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 beech)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 beech)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 beech)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 beech)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s8)
    (wood b5 beech)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 beech)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s10)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 pine)
      (available p1)
      (colour p1 red)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 pine)
      (treatment p2 varnished)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 white)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 white)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 black)
      (wood p7 beech)
      (available p8)
      (colour p8 blue)
      (wood p8 pine)
    )
  )
  (:metric minimize (total-cost))
)
