1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 6)).

wall((5, 5)).

wall((6, 4)).

wall((7, 4)).

wall((8, 6)).

wall((8, 4)).

wall((9, 6)).

wall((9, 4)).

wall((11, 5)).

wall((11, 4)).

wall((11, 3)).

wall((10, 2)).

wall((9, 2)).

wall((7, 3)).

wall((7, 2)).

wall((8, 0)).

wall((9, 0)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((2, 4)).

wall((3, 4)).

wall((4, 4)).
%AAA
state_at((4, 5), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((4,5),12)
%state_at((4,6),13)
%action(down,12)
%action(down,13)
%state_at((4,7),14)
%action(right,14)
%state_at((5,7),15)
%action(right,15)
%state_at((6,7),16)
%action(right,16)
%state_at((7,7),17)
%action(right,17)
%state_at((8,7),18)
%action(right,18)
%state_at((9,7),19)
%action(right,19)
%state_at((10,7),20)
%action(up,20)
%state_at((10,6),21)
%action(right,21)
%state_at((11,6),22)
%action(right,22)
%state_at((12,6),23)
%action(up,23)
%state_at((12,5),24)
%action(up,24)
%state_at((12,4),25)
%action(up,25)
%state_at((12,3),26)
%action(right,26)
%state_at((13,3),27)
%action(right,27)
%state_at((14,3),28)
%action(up,28)
%state_at((14,2),29)
%action(up,29)
%state_at((14,1),30)
%action(right,30)
%state_at((15,1),31)
%action(right,31)
%state_at((16,1),32)
