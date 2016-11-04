; woodworking task with 7 parts and 100% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 572957

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
    blue green red black mauve - acolour
    oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 - part
    b0 b1 - board
    s0 s1 s2 s3 s4 - aboardsize
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
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (unused p0)
    (goalsize p0 medium)
    (unused p1)
    (goalsize p1 small)
    (unused p2)
    (goalsize p2 medium)
    (unused p3)
    (goalsize p3 small)
    (unused p4)
    (goalsize p4 small)
    (unused p5)
    (goalsize p5 small)
    (available p6)
    (colour p6 green)
    (wood p6 oak)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    (boardsize b0 s4)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s4)
    (wood b1 oak)
    (surface-condition b1 smooth)
    (available b1)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 cherry)
      (available p1)
      (wood p1 cherry)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 blue)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
    )
  )
  (:metric minimize (total-cost))
)
