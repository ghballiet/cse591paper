;; briefcase with 3 latches

(define (problem BRIEFCASE-3LATCHES)
    (:domain BRIEFCASE)
    (:objects
        l1 l2 l3 - latch
    )
    
    (:init
        (not (open))
        (latched l1)
        (latched l2)
        (latched l3)
    )
    
    (:goal (and
        (open)
    ))
)