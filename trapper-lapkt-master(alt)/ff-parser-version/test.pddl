(define (problem test)(:domain blocksworld)
(:objects A B C D - block)
(:init (handempty)
       (on C A)
       (clear C)
       (on A D)
       (ontable D)
       (ontable B)
       (clear B)
       (stai_on C A)
       (stai_on A D)
       (stag_on A B)
       (stag_on B C)
       (stag_on C D)
)
(:goal (and 
  (on A B) ;G1
  ;(on B C) ;G2     
  ;(on C D) ;G3
)))
