%This is a comment.
%This is a comment btw.

%Declaring Facts:
likes(mary,jhon).
likes(thomas,mary).
likes(jhon,mary).
likes(laura,thomas).

%rules declarations:
%the ":-" means THEN
%the "," means AND
%the ";" means OR

%the not represents negation in syntax
dating(X,Y) :-
likes(X,Y),
likes(Y,X).

friendship(X,Y) :-
likes(X,Y);
likes(Y,X).