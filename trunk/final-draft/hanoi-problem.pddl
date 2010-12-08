;; towers of hanoi for 4 discs and 3 pegs

(define (problem HANOI-4DISCS-3PEGS)
    (:domain HANOI)
    (:objects
        d1 d2 d3 d4 - disc
        p1 p2 p3 - peg
    )
    
    (:init
        (clear d1)
        (clear p2)
        (clear p3)
        (on d1 d2)
        (on d2 d3)
        (on d3 d4)
        (on d4 p1)
        (larger d2 d1)
        (larger d3 d2)
        (larger d3 d1)
        (larger d4 d1)
        (larger d4 d2)
        (larger d4 d3)
    )
    
    (:goal (and
        (on d4 p3)
        (on d3 d4)
        (on d2 d3)
        (on d1 d2)
    ))
)