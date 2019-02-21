% A Prolog Program that reads two integers and report them in Ascending Order.

domains 
	number1	 =	 integer
	number2	 =	 integer
						
predicates
	nondeterm sort(number1,number2)

	nondeterm do			
		
clauses
	% Rules
	sort(N,M):-
		N=M, 
		write("\n",N," , ",M),nl.
		
	sort(N,M):-
		N>M, 
		write("\n",M," , ",N),nl.		
		
	sort(N,M):-
		N<M, 
		write("\n",N," , ",M),nl.		
				
	do:-
		write("Enter the First Integer = "),
		readint(X),
		write("Enter the Second Integer ="),
		readint(Y),
		sort(X,Y).
		   			   	
goal
	do.		   		