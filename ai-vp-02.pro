% A Prolog Program to read and Compare two numbers.

domains
      number1	=	integer
      number2	=	integer
      
predicates
      nondeterm  compare(number1,number2)

      nondeterm  do
      
clauses
	
	compare(X,Y):-
        	X=Y,
		write(X," = ",Y),nl.

	compare(X,Y):- 
        	X<Y,
                write(X," < ",Y),nl.
                
	compare(X,Y):-
		X>Y,
                write(X," > ",Y),nl.
  
	do:-
		write("Please enter the First Integer:"),
		readint(X),
		write("Please enter the Second Integer:"),
		readint(Y),
		compare(X,Y).
                               
goal
	do.
