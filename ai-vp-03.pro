% A Prolog Program to compute Average of two Numbers.

domains 
	number1	 =	 integer
	number2	 =	 integer
						
predicates
	nondeterm average(number1,number2)

	nondeterm do			
		
clauses
	% Rules
	average(N,M):-
		Sum = N + M,
		Average = Sum / 2,
		write("\nAverage = ",Average),nl.
				
	do:-
		write("Enter the First Integer = "),
		readint(X),
		write("Enter the Second Integer ="),
		readint(Y),
		average(X,Y).
		   			   	
goal
	do.		   		