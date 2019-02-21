% A Prolog Program to show the use of Lists (Pointer Types) - 2nd Example.

domains
	degree	=	symbol
	name	=	symbol
	names	=	name*
	numbers	=	integer*
	
predicates
	nondeterm students(degree,names)
	nondeterm result(degree,numbers)
	nondeterm print(names,numbers)
	nondeterm do
	
clauses
	students("BCS",["Muhammad Hassan","Syed Ahmad","Ali Eid","Hussain Ali"]).
	students("MCS",["Farhan Usman","Muhammad Usman","Hassan Eid"]).
	
	result("BCS",[90,90,80,60]).
	result("MCS",[60,70,50]).
	
	print([],[]):-!.
		
	print([H1|T1],[H2|T2]):-
		write(H1,"\t\t",H2),nl,
		print(T1,T2).
		
	do:-
		write("Enter Degree Title (BCS or MCS): "),
		readln(X),nl,
		
		write("Name: \t\t\t Marks:\n"),
		students(X,Y),
		result(X,Z),
		print(Y,Z),nl.
	
goal
	do.	