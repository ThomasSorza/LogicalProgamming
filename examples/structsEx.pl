course(
    cse340,
    day(tues, thurs),
    time(1200,1300),
    instructor(bryce, holton),
    coor300
).

course(
    cse340,
    day(tues, thurs),
    time(1200,1300),
    instructor(ivan, andersen),
    coor500
).

%TODO: get the code working

instructor(Instructor, Class) :-
    
    course(Class,
            _,
            _,
            Instructor,
            -
        ).