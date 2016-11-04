; woodworking task with 6 parts and 100% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 790415

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
    black white mauve red - acolour
    teak mahogany - awood
    p0 p1 p2 p3 p4 p5 - part
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 white)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    (available p1)
    (colour p1 mauve)
    (wood p1 teak)
    (surface-condition p1 rough)
    (treatment p1 colourfragments)
    (goalsize p1 medium)
    (available p2)
    (colour p2 natural)
    (wood p2 mahogany)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    (unused p3)
    (goalsize p3 small)
    (unused p4)
    (goalsize p4 small)
    (available p5)
    (colour p5 white)
    (wood p5 teak)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    (boardsize b0 s4)
    (wood b0 teak)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s1)
    (wood b1 mahogany)
    (surface-condition b1 smooth)
    (available b1)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 teak)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 mahogany)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 teak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 white)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 teak)
      (treatment p5 glazed)
    )
  )
  (:metric minimize (total-cost))
)
