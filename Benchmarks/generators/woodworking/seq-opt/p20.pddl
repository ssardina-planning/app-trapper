; woodworking task with 12 parts and 600% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 243374

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
    blue white mauve red green black - acolour
    oak beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    (unused p1)
    (goalsize p1 small)
    (unused p2)
    (goalsize p2 large)
    (unused p3)
    (goalsize p3 large)
    (unused p4)
    (goalsize p4 small)
    (unused p5)
    (goalsize p5 medium)
    (available p6)
    (colour p6 natural)
    (wood p6 oak)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    (available p7)
    (colour p7 green)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 varnished)
    (goalsize p7 medium)
    (unused p8)
    (goalsize p8 small)
    (unused p9)
    (goalsize p9 small)
    (available p10)
    (colour p10 red)
    (wood p10 beech)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 small)
    (unused p11)
    (goalsize p11 medium)
    (boardsize b0 s8)
    (wood b0 beech)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 beech)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 beech)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 beech)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s4)
    (wood b4 beech)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s3)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 cherry)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (wood p2 oak)
      (available p3)
      (colour p3 blue)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 oak)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (wood p8 oak)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 beech)
      (treatment p11 varnished)
    )
  )
  (:metric minimize (total-cost))
)
