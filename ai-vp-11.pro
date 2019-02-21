% A Prolog Program to show the use of Lists (Pointer Types).

domains
	degree	=	symbol
	name	=	symbol
	names	=	name*
	numbers	=	integer*
	
predicates
	nondeterm students(degree,names)
	nondeterm result(degree,numbers)
	nondeterm print(names)
	nondeterm print(numbers)
	nondeterm do
	
clauses
	students("BCS",["Muhammad Hassan","Syed Ahmad","Ali Eid","Hussain Ali"]).
	students("MCS",["Farhan Usman","Muhammad Usman","Hassan Eid"]).
	
	result("BCS",[90,90,80,60]).
	result("MCS",[60,70,50]).
	
	print([]):-!.
	
	print([H|T]):-
		write(H),nl,
		print(T).
		
	do:-
		write("Enter the Degree Title (BCS or MCS): "),
		readln(X),nl,
		
		write("Names:\n"),
		students(X,Y),
		print(Y),nl,
		
		write("Marks:\n"),
		result(X,Z),
		print(Z),nl.
	
goal
	do.	