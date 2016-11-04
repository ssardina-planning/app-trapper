; woodworking task with 8 parts and 100% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 122699

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
    mauve red blue green black white - acolour
    beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 - part
    b0 b1 b2 - board
    s0 s1 s2 s3 s4 s5 s6 - aboardsize
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 medium)
    (unused p1)
    (goalsize p1 large)
    (unused p2)
    (goalsize p2 large)
    (available p3)
    (colour p3 green)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    (unused p4)
    (goalsize p4 medium)
    (unused p5)
    (goalsize p5 medium)
    (available p6)
    (colour p6 white)
    (wood p6 oak)
    (surface-condition p6 verysmooth)
    (treatment p6 glazed)
    (goalsize p6 small)
    (unused p7)
    (goalsize p7 small)
    (boardsize b0 s5)
    (wood b0 beech)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 oak)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 oak)
    (surface-condition b2 smooth)
    (available b2)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (available p2)
      (wood p2 oak)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 white)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 mauve)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (wood p7 oak)
      (surface-condition p7 smooth)
    )
  )
  (:metric minimize (total-cost))
)
