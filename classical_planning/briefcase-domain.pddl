;; briefcase domain

(define (domain BRIEFCASE)
    (:requirements :typing)
    (:types latch)
    (:predicates
        (open)
        (latched ?l - latch)
    )
    
    (:action flip-open
        :parameters (?l - latch)
        :precondition (latched ?l)
        :effect (not (latched ?l))
    )
    
    (:action flip-closed
        :parameters (?l - latch)
        :precondition (not (latched ?l))
        :effect (latched ?l)
    )
    
    (:action open
        :parameters ()
        :precondition (and
            (forall (?l - latch)
                (not (latched ?l))
            )
            (not (open))
        )
        :effect (open)
    )
)