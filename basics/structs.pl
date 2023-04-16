%This statement is very long and hard to understand.
course(cse110, mon, wed, 11, 12, 11, 12, holton, bryce, coor105, coor321).

%We can use a Struct to make it more readable.
course(
    cse110,
    day(mon, wed),
    time(11, 12),
    professor(holton, bryce),
    coor105
    ).

course(
    cse110,
    day(mon, wed),
    time(11, 12),
    professor(holton, bryce),
    coor321
    ).