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
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(up, T), wall(V1).

%END
%AAA
state_at((1, 7), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,7),0)
%state_at((2,8),1)
%action(up,0)
%state_at((1,7),1)
%state_at((2,6),1)
%state_at((2,6),3)
%state_at((3,8),1)
%state_at((3,8),2)
%state_at((3,7),3)
%state_at((3,7),2)
%state_at((2,5),4)
%state_at((2,5),2)
%state_at((2,7),2)
%action(right,19)
%action(right,18)
%action(right,17)
%action(right,16)
%action(right,15)
%action(right,14)
%action(right,13)
%action(right,12)
%action(right,11)
%action(right,10)
%action(right,9)
%action(right,8)
%action(right,7)
%action(right,6)
%action(right,5)
%action(right,4)
%action(right,3)
%state_at((4,8),3)
%action(right,2)
%state_at((4,8),2)
%action(right,1)
%state_at((3,6),4)
%state_at((3,6),3)
%state_at((3,6),2)
%state_at((3,5),3)
%state_at((3,5),4)
%state_at((3,5),5)
%state_at((4,7),3)
%state_at((4,7),4)
%state_at((2,4),3)
%state_at((2,4),5)
%state_at((4,6),3)
%state_at((4,6),4)
%state_at((4,6),5)
%state_at((5,8),3)
%state_at((5,8),4)
%state_at((5,7),5)
%state_at((5,7),4)
%state_at((4,5),6)
%state_at((4,5),5)
%state_at((4,5),4)
%state_at((2,3),6)
%state_at((2,3),4)
%state_at((3,4),6)
%state_at((3,4),5)
%state_at((3,4),4)
%state_at((6,8),5)
%state_at((6,8),4)
%state_at((5,6),6)
%state_at((5,6),5)
%state_at((5,6),4)
%state_at((5,5),5)
%state_at((5,5),6)
%state_at((5,5),7)
%state_at((6,7),5)
%state_at((6,7),6)
%state_at((3,3),5)
%state_at((3,3),6)
%state_at((3,3),7)
%state_at((2,2),5)
%state_at((2,2),7)
%state_at((4,4),5)
%state_at((4,4),6)
%state_at((4,4),7)
%state_at((6,6),5)
%state_at((6,6),6)
%state_at((6,6),7)
%state_at((7,8),5)
%state_at((7,8),6)
%state_at((7,7),7)
%state_at((7,7),6)
%state_at((6,5),8)
%state_at((6,5),7)
%state_at((6,5),6)
%state_at((4,3),8)
%state_at((4,3),7)
%state_at((4,3),6)
%state_at((2,1),8)
%state_at((2,1),6)
%state_at((3,2),8)
%state_at((3,2),7)
%state_at((3,2),6)
%state_at((5,4),8)
%state_at((5,4),7)
%state_at((5,4),6)
%state_at((8,8),7)
%state_at((8,8),6)
%state_at((7,6),8)
%state_at((7,6),7)
%state_at((7,6),6)
%state_at((7,5),7)
%state_at((7,5),8)
%state_at((7,5),9)
%state_at((8,7),7)
%state_at((8,7),8)
%state_at((5,3),7)
%state_at((5,3),8)
%state_at((5,3),9)
%state_at((3,1),7)
%state_at((3,1),8)
%state_at((3,1),9)
%state_at((2,0),7)
%state_at((2,0),9)
%state_at((4,2),7)
%state_at((4,2),8)
%state_at((4,2),9)
%state_at((6,4),7)
%state_at((6,4),8)
%state_at((6,4),9)
%state_at((8,6),7)
%state_at((8,6),8)
%state_at((8,6),9)
%state_at((9,8),7)
%state_at((9,8),8)
%state_at((9,7),9)
%state_at((9,7),8)
%state_at((8,5),10)
%state_at((8,5),9)
%state_at((8,5),8)
%state_at((6,3),10)
%state_at((6,3),9)
%state_at((6,3),8)
%state_at((4,1),10)
%state_at((4,1),9)
%state_at((4,1),8)
%state_at((3,0),10)
%state_at((3,0),9)
%state_at((3,0),8)
%state_at((5,2),10)
%state_at((5,2),9)
%state_at((5,2),8)
%state_at((7,4),10)
%state_at((7,4),9)
%state_at((7,4),8)
%state_at((10,8),9)
%state_at((10,8),8)
%state_at((9,6),10)
%state_at((9,6),9)
%state_at((9,6),8)
%state_at((9,5),9)
%state_at((9,5),10)
%state_at((9,5),11)
%state_at((10,7),9)
%state_at((10,7),10)
%state_at((7,3),9)
%state_at((7,3),10)
%state_at((7,3),11)
%state_at((5,1),9)
%state_at((5,1),10)
%state_at((5,1),11)
%state_at((4,0),9)
%state_at((4,0),10)
%state_at((4,0),11)
%state_at((6,2),9)
%state_at((6,2),10)
%state_at((6,2),11)
%state_at((8,4),9)
%state_at((8,4),10)
%state_at((8,4),11)
%state_at((10,6),9)
%state_at((10,6),10)
%state_at((10,6),11)
%state_at((11,8),9)
%state_at((11,8),10)
%state_at((11,7),11)
%state_at((11,7),10)
%state_at((10,5),12)
%state_at((10,5),11)
%state_at((10,5),10)
%state_at((8,3),12)
%state_at((8,3),11)
%state_at((8,3),10)
%state_at((6,1),12)
%state_at((6,1),11)
%state_at((6,1),10)
%state_at((5,0),12)
%state_at((5,0),11)
%state_at((5,0),10)
%state_at((7,2),12)
%state_at((7,2),11)
%state_at((7,2),10)
%state_at((9,4),12)
%state_at((9,4),11)
%state_at((9,4),10)
%state_at((12,8),11)
%state_at((12,8),10)
%state_at((11,6),12)
%state_at((11,6),11)
%state_at((11,6),10)
%state_at((11,5),11)
%state_at((11,5),12)
%state_at((11,5),13)
%state_at((12,7),11)
%state_at((12,7),12)
%state_at((9,3),11)
%state_at((9,3),12)
%state_at((9,3),13)
%state_at((7,1),11)
%state_at((7,1),12)
%state_at((7,1),13)
%state_at((6,0),11)
%state_at((6,0),12)
%state_at((6,0),13)
%state_at((8,2),11)
%state_at((8,2),12)
%state_at((8,2),13)
%state_at((10,4),11)
%state_at((10,4),12)
%state_at((10,4),13)
%state_at((12,6),11)
%state_at((12,6),12)
%state_at((12,6),13)
%state_at((13,8),11)
%state_at((13,8),12)
%state_at((13,7),13)
%state_at((13,7),12)
%state_at((12,5),14)
%state_at((12,5),13)
%state_at((12,5),12)
%state_at((10,3),14)
%state_at((10,3),13)
%state_at((10,3),12)
%state_at((8,1),14)
%state_at((8,1),13)
%state_at((8,1),12)
%state_at((7,0),14)
%state_at((7,0),13)
%state_at((7,0),12)
%state_at((9,2),14)
%state_at((9,2),13)
%state_at((9,2),12)
%state_at((11,4),14)
%state_at((11,4),13)
%state_at((11,4),12)
%state_at((14,8),13)
%state_at((14,8),12)
%state_at((13,6),14)
%state_at((13,6),13)
%state_at((13,6),12)
%state_at((13,5),13)
%state_at((13,5),14)
%state_at((13,5),15)
%state_at((14,7),13)
%state_at((14,7),14)
%state_at((11,3),13)
%state_at((11,3),14)
%state_at((11,3),15)
%state_at((9,1),13)
%state_at((9,1),14)
%state_at((9,1),15)
%state_at((8,0),13)
%state_at((8,0),14)
%state_at((8,0),15)
%state_at((10,2),13)
%state_at((10,2),14)
%state_at((10,2),15)
%state_at((12,4),13)
%state_at((12,4),14)
%state_at((12,4),15)
%state_at((14,6),13)
%state_at((14,6),14)
%state_at((14,6),15)
%state_at((15,8),13)
%state_at((15,8),14)
%state_at((15,7),15)
%state_at((15,7),14)
%state_at((14,5),16)
%state_at((14,5),15)
%state_at((14,5),14)
%state_at((12,3),16)
%state_at((12,3),15)
%state_at((12,3),14)
%state_at((10,1),16)
%state_at((10,1),15)
%state_at((10,1),14)
%state_at((9,0),16)
%state_at((9,0),15)
%state_at((9,0),14)
%state_at((11,2),16)
%state_at((11,2),15)
%state_at((11,2),14)
%state_at((13,4),16)
%state_at((13,4),15)
%state_at((13,4),14)
%state_at((16,8),15)
%state_at((16,8),14)
%state_at((15,6),16)
%state_at((15,6),15)
%state_at((15,6),14)
%state_at((15,5),15)
%state_at((15,5),16)
%state_at((15,5),17)
%state_at((16,7),15)
%state_at((16,7),16)
%state_at((13,3),15)
%state_at((13,3),16)
%state_at((13,3),17)
%state_at((11,1),15)
%state_at((11,1),16)
%state_at((11,1),17)
%state_at((10,0),15)
%state_at((10,0),16)
%state_at((10,0),17)
%state_at((12,2),15)
%state_at((12,2),16)
%state_at((12,2),17)
%state_at((14,4),15)
%state_at((14,4),16)
%state_at((14,4),17)
%state_at((16,6),15)
%state_at((16,6),16)
%state_at((16,6),17)
%state_at((17,8),15)
%state_at((17,8),16)
%state_at((17,7),17)
%state_at((17,7),16)
%state_at((16,5),18)
%state_at((16,5),17)
%state_at((16,5),16)
%state_at((14,3),18)
%state_at((14,3),17)
%state_at((14,3),16)
%state_at((12,1),18)
%state_at((12,1),17)
%state_at((12,1),16)
%state_at((11,0),18)
%state_at((11,0),17)
%state_at((11,0),16)
%state_at((13,2),18)
%state_at((13,2),17)
%state_at((13,2),16)
%state_at((15,4),18)
%state_at((15,4),17)
%state_at((15,4),16)
%state_at((17,6),18)
%state_at((17,6),17)
%state_at((17,6),16)
%state_at((17,5),17)
%state_at((17,5),18)
%state_at((17,5),19)
%state_at((15,3),17)
%state_at((15,3),18)
%state_at((15,3),19)
%state_at((13,1),17)
%state_at((13,1),18)
%state_at((13,1),19)
%state_at((12,0),17)
%state_at((12,0),18)
%state_at((12,0),19)
%state_at((14,2),17)
%state_at((14,2),18)
%state_at((14,2),19)
%state_at((16,4),17)
%state_at((16,4),18)
%state_at((16,4),19)
%state_at((16,3),20)
%state_at((16,3),19)
%state_at((16,3),18)
%state_at((14,1),20)
%state_at((14,1),19)
%state_at((14,1),18)
%state_at((13,0),20)
%state_at((13,0),19)
%state_at((13,0),18)
%state_at((15,2),20)
%state_at((15,2),19)
%state_at((15,2),18)
%state_at((17,4),20)
%state_at((17,4),19)
%state_at((17,4),18)
%state_at((17,3),19)
%state_at((17,3),20)
%state_at((17,3),21)
%state_at((15,1),19)
%state_at((15,1),20)
%state_at((15,1),21)
%state_at((14,0),19)
%state_at((14,0),20)
%state_at((14,0),21)
%state_at((16,2),19)
%state_at((16,2),20)
%state_at((16,2),21)
%state_at((16,1),22)
%state_at((16,1),21)
%state_at((16,1),20)
%state_at((15,0),22)
%state_at((15,0),21)
%state_at((15,0),20)
%state_at((17,2),22)
%state_at((17,2),21)
%state_at((17,2),20)
%state_at((17,1),21)
%state_at((17,1),22)
%state_at((17,1),23)
%state_at((16,0),21)
%state_at((16,0),22)
%state_at((16,0),23)
%state_at((17,0),24)
%state_at((17,0),23)
%state_at((17,0),22)
