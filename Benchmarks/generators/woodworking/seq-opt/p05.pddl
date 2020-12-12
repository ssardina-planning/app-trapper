; woodworking task with 7 parts and 500% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 553168

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
    white green black red blue - acolour
    walnut cherry - awood
    p0 p1 p2 p3 p4 p5 p6 - part
    b0 b1 b2 b3 b4 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (unused p0)
    (goalsize p0 small)
    (unused p1)
    (goalsize p1 medium)
    (available p2)
    (colour p2 natural)
    (wood p2 cherry)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 small)
    (unused p3)
    (goalsize p3 small)
    (available p4)
    (colour p4 black)
    (wood p4 walnut)
    (surface-condition p4 verysmooth)
    (treatment p4 varnished)
    (goalsize p4 medium)
    (unused p5)
    (goalsize p5 large)
    (available p6)
    (colour p6 red)
    (wood p6 cherry)
    (surface-condition p6 verysmooth)
    (treatment p6 varnished)
    (goalsize p6 large)
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s2)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 walnut)
    (surface-condition b4 smooth)
    (available b4)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 natural)
      (wood p1 cherry)
      (available p2)
      (colour p2 green)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (treatment p3 glazed)
      (available p4)
      (colour p4 red)
      (wood p4 walnut)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (wood p6 cherry)
      (surface-condition p6 smooth)
    )
  )
  (:metric minimize (total-cost))
)