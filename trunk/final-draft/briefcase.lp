% ============================
% OBJECTS
% ============================

#const n = 2.

time(0..n).

latch(1).
latch(2).

% ============================
% FLUENTS
% ============================

fluent(open(Latch)) :-
	latch(Latch).

fluent(opened).

% ============================
% ACTIONS
% ============================

action(flip(Latch)) :-
	latch(Latch).

% ============================
% CAUSAL LAWS
% ============================

holds(open(Latch), T + 1) :-
	occurs(flip(Latch), T),
	-holds(open(Latch), T),
	latch(Latch),
	time(T).

-holds(open(Latch), T + 1) :-
	occurs(flip(Latch), T),
	holds(open(Latch), T),
	latch(Latch),
	time(T).

-holds(opened, T) :-
	-holds(open(Latch), T),
	latch(Latch),
	time(T).

holds(opened, T) :-
	not -holds(opened, T),
	time(T).

% ============================
% INERTIA AXIOMS
% ============================

holds(Fluent, T + 1) :-
    holds(Fluent, T),
    not -holds(Fluent, T + 1),
    fluent(Fluent),
    time(T).

-holds(Fluent, T + 1) :-
    -holds(Fluent, T),
    not holds(Fluent, T + 1),
    fluent(Fluent),
    time(T).

% ============================
% INITIAL STATE
% ============================

-holds(open(Latch), 0) :-
	latch(Latch).

% ============================
% GOAL SPECIFICATION
% ============================

goal(T) :-
	holds(opened, T),
	time(T).

done :-
	goal(T).

:- not done.

% ============================
% PLANNING MODULE
% ============================

1{occurs(Action,T) : action(Action)}1 :-
    not goal(T),
    time(T).

% ============================
% SOLVER DIRECTIVES
% ============================

#hide.
#show occurs(_,_).