%ILASP

%state_after(V1) :- adjacent(right, V0, V1), state_before(V0), action(left), not wall(V1).
%state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).
%state_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).
%state_after(V0) :- adjacent(right, V0, V1), state_before(V0), action(left), wall(V1).
%state_after(V1) :- adjacent(right, V0, V1), state_before(V1), action(right), wall(V0).
%state_after(V0) :- adjacent(down, V0, V1), state_before(V0), action(up), wall(V1).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V1), action(down), wall(V0).
cell((0..19, 0..8)).
#modeb(1, link_start(var(cell)), (positive)).
#modeb(1, link_dest(var(cell)), (positive)).
% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell)), (positive)).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)), (positive)).
#modeb(1, wall(var(cell))).

#max_penalty(50).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#pos({state_after((3,4))}, {state_after((4,5)),state_after((3,6)),state_after((2,5)),state_after((3,5))}, {state_before((3,5)).action(up).}).
#pos({state_after((2,4))}, {state_after((4,4)),state_after((3,5)),state_after((3,3)),state_after((3,4)),state_after((3,3))}, {state_before((3,4)).action(left).wall((4, 4)). }).
#pos({state_after((3,4))}, {state_after((2,5)),state_after((1,4)),state_after((2,3)),state_after((2,4))}, {state_before((2,4)).action(right).}).
#pos({state_after((3,5))}, {state_after((4,4)),state_after((2,4)),state_after((3,3)),state_after((3,4))}, {state_before((3,4)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((3,6)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(left).}).
#pos({}, {state_after((3,5)),state_after((2,6)),state_after((1,5)),state_after((2,5))}, {state_before((2,5)).action(up).}).
#pos({}, {state_after((2,5)),state_after((1,4)),state_after((2,3)),state_after((2,4))}, {state_before((2,4)).action(right).}).
#pos({state_after((3,4))}, {state_after((4,4)),state_after((3,5)),state_after((2,4)),state_after((3,3)),state_after((4,4))}, {state_before((3,4)).action(right).wall((4, 4)). }).
#pos({}, {state_after((4,4)),state_after((3,5)),state_after((2,4)),state_after((3,4))}, {state_before((3,4)).action(up).wall((4, 4)). }).
#pos({}, {state_after((3,4)),state_after((2,3)),state_after((3,2)),state_after((3,3)),state_after((3,4))}, {state_before((3,3)).action(right).}).
#pos({}, {state_after((5,3)),state_after((4,4)),state_after((4,2)),state_after((4,3))}, {state_before((4,3)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,3)),state_after((3,4)),state_after((2,3)),state_after((3,3))}, {state_before((3,3)).action(up).}).
#pos({}, {state_after((4,2)),state_after((3,3)),state_after((2,2)),state_after((3,2))}, {state_before((3,2)).action(up).}).
#pos({state_after((3,1))}, {state_after((4,1)),state_after((3,2)),state_after((2,1)),state_after((3,0)),state_after((3,0))}, {state_before((3,1)).action(up).wall((3, 0)). }).
#pos({}, {state_after((4,1)),state_after((2,1)),state_after((3,0)),state_after((3,1)),state_after((4,5)),state_after((3,1))}, {state_before((3,1)).action(down).wall((3, 0)). }).
#pos({}, {state_after((3,3)),state_after((2,2)),state_after((3,1)),state_after((3,2)),state_after((3,4)),state_after((2,0))}, {state_before((3,2)).action(right).}).
#pos({}, {state_after((5,2)),state_after((3,2)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(down).}).
#pos({}, {state_after((5,3)),state_after((4,4)),state_after((3,3)),state_after((4,3)),state_after((4,5)),state_after((3,1))}, {state_before((4,3)).action(up).wall((4, 4)). }).
#pos({}, {state_after((4,3)),state_after((3,2)),state_after((4,1)),state_after((4,2)),state_after((3,4)),state_after((2,0))}, {state_before((4,2)).action(right).}).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(left).}).
#pos({}, {state_after((5,2)),state_after((4,3)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(left).}).
#pos({}, {state_after((3,3)),state_after((2,2)),state_after((3,1)),state_after((3,2)),state_after((3,4)),state_after((2,0))}, {state_before((3,2)).action(right).}).
#pos({}, {state_after((4,3)),state_after((3,2)),state_after((4,1)),state_after((4,2)),state_after((3,4)),state_after((2,0))}, {state_before((4,2)).action(right).}).
#pos({}, {state_after((5,3)),state_after((4,2)),state_after((5,1)),state_after((5,2)),state_after((3,4)),state_after((2,0))}, {state_before((5,2)).action(right).}).
#pos({}, {state_after((7,2)),state_after((6,3)),state_after((6,1)),state_after((6,2))}, {state_before((6,2)).action(left).}).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((4,2)),state_after((5,2))}, {state_before((5,2)).action(up).}).
#pos({}, {state_after((6,1)),state_after((5,2)),state_after((4,1)),state_after((5,0))}, {state_before((5,1)).action(up).wall((5, 0)). }).
#pos({}, {state_after((6,1)),state_after((5,2)),state_after((4,1)),state_after((5,0))}, {state_before((5,1)).action(up).wall((5, 0)). }).
#pos({}, {state_after((5,2)),state_after((4,1)),state_after((5,0)),state_after((5,1)),state_after((3,4)),state_after((2,0)),state_after((4,0))}, {state_before((5,1)).action(right).wall((5, 0)). }).
#pos({}, {state_after((7,1)),state_after((6,2)),state_after((5,1)),state_after((6,0))}, {state_before((6,1)).action(up).wall((6, 0)). }).
#pos({}, {state_after((6,2)),state_after((5,1)),state_after((6,0)),state_after((6,1))}, {state_before((6,1)).action(right).wall((6, 0)). }).
#pos({}, {state_after((8,1)),state_after((7,2)),state_after((6,1)),state_after((7,0))}, {state_before((7,1)).action(up).wall((7, 0)). }).
#pos({}, {state_after((8,1)),state_after((7,2)),state_after((7,0)),state_after((7,1))}, {state_before((7,1)).action(left).wall((7, 0)). }).
#pos({}, {state_after((7,1)),state_after((6,2)),state_after((5,1)),state_after((6,0))}, {state_before((6,1)).action(up).wall((6, 0)). }).
#pos({}, {state_after((6,2)),state_after((5,1)),state_after((6,0)),state_after((6,1))}, {state_before((6,1)).action(right).wall((6, 0)). }).
#pos({}, {state_after((8,1)),state_after((7,2)),state_after((6,1)),state_after((7,0))}, {state_before((7,1)).action(up).wall((7, 0)). }).
#pos({}, {state_after((8,1)),state_after((7,2)),state_after((7,0)),state_after((7,1))}, {state_before((7,1)).action(left).wall((7, 0)). }).
#pos({}, {state_after((7,1)),state_after((5,1)),state_after((6,0)),state_after((6,1))}, {state_before((6,1)).action(down).wall((6, 0)). }).
#pos({}, {state_after((7,2)),state_after((6,3)),state_after((6,1)),state_after((6,2))}, {state_before((6,2)).action(left).}).
#pos({}, {state_after((6,2)),state_after((4,2)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(down).}).
#pos({}, {state_after((6,3)),state_after((5,4)),state_after((4,3)),state_after((5,3))}, {state_before((5,3)).action(up).wall((5, 4)). }).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(left).}).
#pos({}, {state_after((4,3)),state_after((3,2)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(right).}).
#pos({}, {state_after((6,2)),state_after((4,2)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(down).}).
#pos({}, {state_after((5,4)),state_after((4,3)),state_after((5,2)),state_after((5,3))}, {state_before((5,3)).action(right).wall((5, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2))}, {state_before((6,3)).action(right).wall((7, 3)). wall((6, 4)). }).
#pos({state_after((6,3))}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2)),state_after((6,4))}, {state_before((6,3)).action(down).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,3))}, {state_before((6,3)).action(up).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,2)),state_after((6,3)),state_after((6,1)),state_after((6,2))}, {state_before((6,2)).action(left).}).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(left).}).
#pos({}, {state_after((4,3)),state_after((3,2)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(right).}).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((4,2)),state_after((5,2))}, {state_before((5,2)).action(up).}).
#pos({}, {state_after((6,1)),state_after((4,1)),state_after((5,0)),state_after((5,1)),state_after((4,3)),state_after((5,3)),state_after((7,2)),state_after((6,3))}, {state_before((5,1)).action(down).wall((5, 0)). }).
#pos({}, {state_after((5,3)),state_after((4,2)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(right).}).
#pos({}, {state_after((7,2)),state_after((6,3)),state_after((5,2)),state_after((6,2))}, {state_before((6,2)).action(up).}).
#pos({}, {state_after((7,1)),state_after((6,2)),state_after((6,0)),state_after((6,1))}, {state_before((6,1)).action(left).wall((6, 0)). }).
#pos({}, {state_after((5,2)),state_after((4,1)),state_after((5,0)),state_after((5,1))}, {state_before((5,1)).action(right).wall((5, 0)). }).
#pos({}, {state_after((7,1)),state_after((5,1)),state_after((6,0)),state_after((6,1)),state_after((4,3)),state_after((5,3)),state_after((7,2)),state_after((6,3))}, {state_before((6,1)).action(down).wall((6, 0)). }).
#pos({}, {state_after((7,2)),state_after((5,2)),state_after((6,1)),state_after((6,2)),state_after((4,3)),state_after((5,3)),state_after((7,2))}, {state_before((6,2)).action(down).}).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2))}, {state_before((6,3)).action(right).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2))}, {state_before((6,3)).action(right).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2)),state_after((4,3)),state_after((5,3)),state_after((7,2))}, {state_before((6,3)).action(down).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((6,2)),state_after((6,3))}, {state_before((6,3)).action(left).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((6,3)),state_after((5,4)),state_after((4,3)),state_after((5,2))}, {state_before((5,3)).action(down).wall((5, 4)). }).
#pos({}, {state_after((6,3)),state_after((5,4)),state_after((4,3)),state_after((5,3))}, {state_before((5,3)).action(up).wall((5, 4)). }).
#pos({}, {state_after((6,2)),state_after((5,3)),state_after((4,2)),state_after((5,2))}, {state_before((5,2)).action(up).}).
#pos({}, {state_after((6,1)),state_after((5,2)),state_after((5,0)),state_after((5,1))}, {state_before((5,1)).action(left).wall((5, 0)). }).
#pos({}, {state_after((5,1)),state_after((4,2)),state_after((3,1)),state_after((4,0))}, {state_before((4,1)).action(up).wall((4, 0)). }).
#pos({}, {state_after((5,1)),state_after((4,2)),state_after((4,0)),state_after((4,1))}, {state_before((4,1)).action(left).wall((4, 0)). }).
#pos({}, {state_after((4,1)),state_after((2,1)),state_after((3,0)),state_after((3,1))}, {state_before((3,1)).action(down).wall((3, 0)). }).
#pos({}, {state_after((4,2)),state_after((2,2)),state_after((3,1)),state_after((3,2))}, {state_before((3,2)).action(down).}).
#pos({}, {state_after((4,3)),state_after((3,4)),state_after((3,2)),state_after((3,3))}, {state_before((3,3)).action(left).}).
#pos({}, {state_after((2,4)),state_after((1,3)),state_after((2,2)),state_after((2,3))}, {state_before((2,3)).action(right).}).
#pos({}, {state_after((3,4)),state_after((2,3)),state_after((3,2)),state_after((3,3))}, {state_before((3,3)).action(right).}).
#pos({}, {state_after((5,3)),state_after((4,4)),state_after((3,3)),state_after((4,3))}, {state_before((4,3)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,2)),state_after((4,3)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(left).}).
#pos({}, {state_after((4,2)),state_after((2,2)),state_after((3,1)),state_after((3,2))}, {state_before((3,2)).action(down).}).
#pos({}, {state_after((3,4)),state_after((2,3)),state_after((3,2)),state_after((3,3))}, {state_before((3,3)).action(right).}).
#pos({}, {state_after((5,3)),state_after((4,4)),state_after((3,3)),state_after((4,2))}, {state_before((4,3)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,4)),state_after((3,3)),state_after((4,2)),state_after((4,3))}, {state_before((4,3)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,3)),state_after((5,4)),state_after((4,3)),state_after((5,2))}, {state_before((5,3)).action(down).wall((5, 4)). }).
#pos({}, {state_after((5,4)),state_after((4,3)),state_after((5,2)),state_after((5,3))}, {state_before((5,3)).action(right).wall((5, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,2))}, {state_before((6,3)).action(down).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((5,3)),state_after((6,3))}, {state_before((6,3)).action(up).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((7,2)),state_after((5,2)),state_after((6,1)),state_after((6,2))}, {state_before((6,2)).action(down).}).
#pos({}, {state_after((7,3)),state_after((6,4)),state_after((6,2)),state_after((6,3))}, {state_before((6,3)).action(left).wall((7, 3)). wall((6, 4)). }).
#pos({}, {state_after((6,3)),state_after((5,4)),state_after((5,2)),state_after((5,3))}, {state_before((5,3)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,3)),state_after((4,4)),state_after((3,3)),state_after((4,3))}, {state_before((4,3)).action(up).wall((4, 4)). }).
#pos({}, {state_after((4,3)),state_after((3,2)),state_after((4,1)),state_after((4,2))}, {state_before((4,2)).action(right).}).
#pos({}, {state_after((5,3)),state_after((4,2)),state_after((5,1)),state_after((5,2))}, {state_before((5,2)).action(right).}).
#pos({}, {state_after((6,3)),state_after((5,2)),state_after((6,1)),state_after((6,2))}, {state_before((6,2)).action(right).}).
#pos({}, {state_after((8,2)),state_after((7,3)),state_after((6,2)),state_after((7,2))}, {state_before((7,2)).action(up).wall((7, 3)). }).
#pos({}, {state_after((8,1)),state_after((7,2)),state_after((6,1)),state_after((7,0))}, {state_before((7,1)).action(up).wall((7, 0)). }).
#pos({}, {state_after((7,2)),state_after((6,1)),state_after((7,0)),state_after((7,1))}, {state_before((7,1)).action(right).wall((7, 0)). }).
#pos({}, {state_after((9,1)),state_after((7,1)),state_after((8,0)),state_after((8,1))}, {state_before((8,1)).action(down).wall((8, 0)). }).
#pos({}, {state_after((8,3)),state_after((7,2)),state_after((8,1)),state_after((8,2))}, {state_before((8,2)).action(right).}).
#pos({}, {state_after((10,2)),state_after((9,3)),state_after((9,1)),state_after((9,2))}, {state_before((9,2)).action(left).}).
#pos({}, {state_after((9,2)),state_after((7,2)),state_after((8,1)),state_after((8,2))}, {state_before((8,2)).action(down).}).
#pos({state_after((8,3))}, {state_after((9,3)),state_after((8,4)),state_after((7,3)),state_after((8,2)),state_after((7,3))}, {state_before((8,3)).action(left).wall((8, 4)). wall((7, 3)). }).
#pos({}, {state_after((8,4)),state_after((7,3)),state_after((8,2)),state_after((8,3)),state_after((4,0)),state_after((5,0)),state_after((6,0)),state_after((7,0)),state_after((8,0)),state_after((9,0)),state_after((8,3)),state_after((5,4)),state_after((6,4)),state_after((7,4)),state_after((9,4))}, {state_before((8,3)).action(right).wall((8, 4)). wall((7, 3)). }).
#pos({}, {state_after((9,4)),state_after((8,3)),state_after((9,2)),state_after((9,3))}, {state_before((9,3)).action(right).}).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3))}, {state_before((10,3)).action(up).}).
#pos({}, {state_after((10,3)),state_after((9,2)),state_after((10,1)),state_after((10,2))}, {state_before((10,2)).action(right).}).
#pos({}, {state_after((12,2)),state_after((10,2)),state_after((11,1)),state_after((11,2))}, {state_before((11,2)).action(down).}).
#pos({}, {state_after((12,3)),state_after((10,3)),state_after((11,2)),state_after((11,3))}, {state_before((11,3)).action(down).}).
#pos({}, {state_after((12,4)),state_after((11,5)),state_after((10,4)),state_after((11,3))}, {state_before((11,4)).action(down).wall((11, 5)). }).
#pos({}, {state_after((12,4)),state_after((11,5)),state_after((10,4)),state_after((11,3))}, {state_before((11,4)).action(down).wall((11, 5)). }).
#pos({}, {state_after((12,4)),state_after((11,5)),state_after((10,4)),state_after((11,4))}, {state_before((11,4)).action(up).wall((11, 5)). }).
#pos({}, {state_after((12,3)),state_after((10,3)),state_after((11,2)),state_after((11,3))}, {state_before((11,3)).action(down).}).
#pos({}, {state_after((12,4)),state_after((11,5)),state_after((11,3)),state_after((11,4)),state_after((4,0)),state_after((5,0)),state_after((6,0)),state_after((7,0)),state_after((8,0)),state_after((9,0)),state_after((8,3)),state_after((5,4)),state_after((6,4)),state_after((7,4)),state_after((9,4)),state_after((12,5))}, {state_before((11,4)).action(left).wall((11, 5)). }).
