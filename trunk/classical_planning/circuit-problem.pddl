;; circuit problem

(define (problem CIRCUIT-PROBLEM)
    (:domain CIRCUIT)
    (:objects
        g1 g2 g3 - gate
        w1 w2 w3 w4 w5 w6 - wire
        l1 l2 - level
    )
    
    (:init
        (and-gate g1)
        (inv-gate g2)
        (or-gate g3)
        (gate-level g1 l1)
        (gate-level g2 l1)
        (gate-level g3 l2)
        (input-to w1 g1)
        (input-to w2 g1)
        (input-to w3 g2)
        (input-to w4 g3)
        (input-to w5 g3)
        (output-from w4 g1)
        (output-from w5 g2)
        (output-from w6 g3)
    )
    
    (:goal (and
        (wire-high w3)
        (wire-high w6)
    ))
)