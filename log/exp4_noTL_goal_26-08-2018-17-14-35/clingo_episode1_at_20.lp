1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).

wall((3, 8)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).

%END
%AAA
state_at((12, 7), 20).
%BBB
%CCC
time(20..250).
%DDD
%ANSWER SETS

%state_at((12,7),20)
%state_at((1,5),21)
%action(down,20)
%state_at((3,5),21)
%state_at((3,5),23)
%state_at((3,5),25)
%state_at((5,5),21)
%state_at((5,5),23)
%state_at((5,5),25)
%state_at((7,5),21)
%state_at((7,5),23)
%state_at((7,5),25)
%state_at((8,5),21)
%state_at((8,5),22)
%state_at((8,5),25)
%state_at((9,5),21)
%state_at((9,5),22)
%state_at((9,5),23)
%state_at((9,5),25)
%state_at((11,5),21)
%state_at((11,5),23)
%state_at((11,5),25)
%state_at((12,5),21)
%state_at((12,5),22)
%state_at((12,5),25)
%state_at((0,6),21)
%state_at((0,6),22)
%state_at((0,6),23)
%state_at((14,6),21)
%state_at((1,7),21)
%state_at((2,7),21)
%state_at((2,7),22)
%state_at((3,7),21)
%state_at((3,7),22)
%state_at((3,7),23)
%state_at((4,7),21)
%state_at((4,7),22)
%state_at((4,7),23)
%state_at((5,7),21)
%state_at((5,7),22)
%state_at((5,7),23)
%state_at((6,7),21)
%state_at((6,7),22)
%state_at((6,7),23)
%state_at((7,7),21)
%state_at((7,7),22)
%state_at((7,7),23)
%state_at((8,7),21)
%state_at((8,7),22)
%state_at((8,7),23)
%state_at((9,7),21)
%state_at((9,7),22)
%state_at((9,7),23)
%state_at((10,7),21)
%state_at((10,7),22)
%state_at((10,7),23)
%state_at((11,7),21)
%state_at((11,7),22)
%state_at((11,7),23)
%state_at((12,7),21)
%state_at((12,7),22)
%state_at((12,7),23)
%state_at((13,7),21)
%state_at((13,7),22)
%state_at((13,7),23)
%action(right,22)
%action(right,21)
%state_at((15,6),22)
%state_at((13,5),25)
%state_at((13,5),23)
%state_at((13,5),22)
%state_at((10,5),25)
%state_at((10,5),23)
%state_at((10,5),22)
%state_at((6,5),25)
%state_at((6,5),22)
%state_at((4,5),25)
%state_at((4,5),22)
%state_at((2,5),22)
%action(up,27)
%action(up,26)
%action(up,25)
%action(up,24)
%state_at((13,6),24)
%action(up,23)
%state_at((12,6),24)
%state_at((11,6),24)
%state_at((10,6),24)
%state_at((9,6),24)
%state_at((8,6),24)
%state_at((7,6),24)
%state_at((6,6),24)
%state_at((5,6),24)
%state_at((4,6),24)
%state_at((3,6),24)
%state_at((14,5),23)
%state_at((0,5),24)
%state_at((12,4),26)
%state_at((11,4),26)
%state_at((11,4),24)
%state_at((9,4),26)
%state_at((9,4),24)
%state_at((8,4),26)
%state_at((7,4),26)
%state_at((7,4),24)
%state_at((5,4),26)
%state_at((5,4),24)
%state_at((3,4),26)
%state_at((3,4),24)
%state_at((4,4),26)
%state_at((6,4),26)
%state_at((10,4),24)
%state_at((10,4),26)
%state_at((13,4),24)
%state_at((13,4),26)
%state_at((16,6),23)
%state_at((3,3),25)
%state_at((3,3),27)
%state_at((5,3),25)
%state_at((5,3),27)
%state_at((7,3),25)
%state_at((7,3),27)
%state_at((8,3),27)
%state_at((9,3),25)
%state_at((9,3),27)
%state_at((11,3),25)
%state_at((11,3),27)
%state_at((12,3),27)
%state_at((0,4),25)
%state_at((14,4),24)
%state_at((13,3),27)
%state_at((13,3),25)
%state_at((10,3),27)
%state_at((10,3),25)
%state_at((6,3),27)
%state_at((4,3),27)
%state_at((16,5),24)
%state_at((14,3),25)
%state_at((0,3),26)
%state_at((12,2),28)
%state_at((11,2),28)
%state_at((11,2),26)
%state_at((9,2),28)
%state_at((9,2),26)
%state_at((8,2),28)
%state_at((7,2),28)
%state_at((7,2),26)
%state_at((5,2),28)
%state_at((5,2),26)
%state_at((3,2),28)
%state_at((3,2),26)
%state_at((4,2),28)
%state_at((6,2),28)
%state_at((10,2),26)
%state_at((10,2),28)
%state_at((13,2),26)
%state_at((13,2),28)
%state_at((16,4),25)
%state_at((3,1),27)
%state_at((5,1),27)
%state_at((7,1),27)
%state_at((9,1),27)
%state_at((11,1),27)
%state_at((0,2),27)
%state_at((14,2),26)
%state_at((13,1),27)
%state_at((10,1),27)
%state_at((16,3),26)
%state_at((14,1),27)
%state_at((0,1),28)
%state_at((11,0),28)
%state_at((9,0),28)
%state_at((7,0),28)
%state_at((5,0),28)
%state_at((3,0),28)
%state_at((10,0),28)
%state_at((13,0),28)
%state_at((16,2),27)
%state_at((14,0),28)
%state_at((16,1),28)
