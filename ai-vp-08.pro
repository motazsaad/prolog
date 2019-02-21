% A Prolog Program to calculate sequential Sum from N to 0 using Back Tracking.

domains
	num	=	integer

predicates
	nondeterm sum(num,num)

	nondeterm do

clauses
	% Rules
	sum(0,0):-!.
	
	sum(N,Sum):-
		M=N-1,
		sum(M,S),
		Sum=N+S.
	
	do:-
		write("Enter the Value of N: "),
		readint(N),
		sum(N,Sum),
		write("Sum from ",N," to 0 = ",Sum),nl.
				
goal
	do.