/* Problem:
	A Manager wants to heir some sales persons. He has received 5
applications. Each applicant has stated his Name, City of residence and
age. Write 5 Prolog facts after declaring suitable domains and predicates.
Some of the applicants know how to type, drive and use computers. Write
independent facts randomly for these skills for the above applicants.

	The Manager has the following criteria for selecting candidates for
interview: "The applicant should be resident of the City where sales person
is required, should be more than 30 years, should know how to type and
drive".  

	Write a Prolog Rule to state the above criteria. Complete the
program and demonstrate the deductive reasoning.
*/

domains
	name	=	symbol
	age	=	integer
	city	=	symbol

predicates
	nondeterm applicant(name,age,city)
	nondeterm drive(name)
	nondeterm type(name)
	nondeterm computer(name)
	nondeterm candidate(city)
	nondeterm do
	
clauses
	% Facts
	applicant("Muhammad",33,"Gaza").
	applicant("Hussain",32,"Khanyounis").
	applicant("Wajid",21,"Gaza").
	applicant("Abdul",39,"Rafah").
	applicant("Ali",35,"Gaza").
	
	drive("Muhammad").
	drive("Hussain").
	drive("Ali").
	
	type("Muhammad").
	type("Ali").
	type("Wajid").
	
	computer("Muhammad").
	computer("Wajid").
	computer("Ali").
	computer("Hussain").

	% Rule
	do:-
		write("Enter the City Name: "),
		readln(City),nl,
		write("Selected Applicants are:"),nl,
		candidate(City).
		
		
	
	candidate(City):-
	applicant(Name,Age,City),
	Age>30,
	type(Name),
	drive(Name),
	write("Name: ",Name, " Age: ",Age),nl,
	fail.
		
goal
	do.