; woodworking task with 4 parts and 500% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 575080

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
    white mauve blue - acolour
    walnut teak - awood
    p0 p1 p2 p3 - part
    b0 b1 b2 b3 b4 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
  )
