;; towers of hanoi for 3 discs and 3 pegs

(define (problem HANOI-3DISCS-3PEGS)
    (:domain HANOI)
    (:objects
        d1 d2 d3 - disc
        p1 p2 p3 - peg
    )
    
    (:init
        (clear d1)
        (clear p2)
        (clear p3)
        (on d1 d2)
        (on d2 d3)
        (on d3 p1)
        (larger d2 d1)
        (larger d3 d2)
        (larger d3 d1)
    )
    
    (:goal (and
        (on d3 p3)
        (on d2 d3)
        (on d1 d2)
    ))
)