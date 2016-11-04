(:action pickup
  :parameters (?h - hand ?b - block)
  :precondition (and (clear ?b) (on-table ?b) (empty ?h))
  :effect (and (holding ?h ?b) (not (on-table ?b)) (not (clear ?b))
               (not (empty ?h))))
(:action putdown-pos-pos
  :parameters  (?h - hand ?b - block)
  :precondition (and (holding ?h ?b) (hand-positive ?h) (block-positive ?b))
  :effect (and (empty ?h) (on-table ?b) (clear ?b)
               (not (holding ?h ?b))))
(:action putdown-neg-neg
  :parameters  (?h - hand ?b - block)
  :precondition (and (holding ?h ?b) (hand-negative ?h) (block-negative ?b))
  :effect (and (empty ?h) (on-table ?b) (clear ?b)
               (not (holding ?h ?b))))
(:action putdown-pos-neg
  :parameters  (?h - hand ?b - block)
  :precondition (and (holding ?h ?b) (hand-positive ?h) (block-negative ?b))
  :effect (and (empty ?h) (on-table ?b) (clear ?b) (not (solid ?b))(notsolid ?b)
               (not (holding ?h ?b))))
(:action putdown-neg-pos
  :parameters  (?h - hand ?b - block)
  :precondition (and (holding ?h ?b) (hand-negative ?h) (block-positive ?b))
  :effect (and (empty ?h) (on-table ?b) (not (solid ?b))(notsolid ?b) (clear ?b)
               (not (holding ?h ?b))))
(:action stack-pos-pos
  :parameters  (?h - hand ?b ?underb - block)
  :precondition (and (clear ?underb) (solid ?underb) (holding ?h ?b) (hand-positive ?h) (block-positive ?b))
  :effect (and (empty ?h) (on ?b ?underb) (clear ?b)
               (not (clear ?underb)) (not (holding ?h ?b))))
(:action stack-neg-neg
  :parameters  (?h - hand ?b ?underb - block)
  :precondition (and (clear ?underb) (solid ?underb) (holding ?h ?b) (hand-negative ?h) (block-negative ?b))
  :effect (and (empty ?h) (on ?b ?underb) (clear ?b)
               (not (clear ?underb)) (not (holding ?h ?b))))
(:action stack-pos-neg
  :parameters  (?h - hand ?b ?underb - block)
  :precondition (and (clear ?underb) (solid ?underb) (holding ?h ?b) (hand-positive ?h) (block-negative ?b))
  :effect (and (empty ?h) (on ?b ?underb) (not (solid ?b)) (notsolid ?b)(clear ?b)
               (not (clear ?underb)) (not (holding ?h ?b))))
(:action stack-neg-pos
  :parameters  (?h - hand ?b ?underb - block)
  :precondition (and (clear ?underb) (solid ?underb) (holding ?h ?b) (hand-negative ?h) (block-positive ?b))
  :effect (and (empty ?h) (on ?b ?underb) (not (solid ?b)) (notsolid ?b)(clear ?b)
               (not (clear ?underb)) (not (holding ?h ?b))))

(:action unstack
  :parameters  (?h - hand ?b ?underb - block)
  :precondition (and (on ?b ?underb) (clear ?b) (empty ?h))
  :effect (and (holding ?h ?b) (clear ?underb) (not (clear ?b))
               (not (on ?b ?underb)) (not (empty ?h))))
