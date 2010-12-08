;; briefcase with two latches

(define (problem BRIEFCASE-2LATCHES)
    (:domain BRIEFCASE)
    (:objects
        l1 l2 - latch
    )
    
    (:init 
        (open)
        (not (latched l1))
        (not (latched l2))
    )
    
    (:goal (and
        (latched l1)
    ))
)