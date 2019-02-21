% A Prolog Program to calculate Factorial of a Number using Back Tracking.

predicates
	nondeterm factorial(integer,integer)

	nondeterm do
	
clauses
	% Rules
	factorial(0,1):-!.	
	factorial(1,1):-!.	

	factorial(N,F):-
		X=N-1,
		factorial(X,Y),
		F=N*Y.
	
	do:-
		write("Enter the Number: "),
		readint(Number),
		factorial(Number,Factorial),
		write(Number,"! = ",Factorial),nl.
				
goal
	do.