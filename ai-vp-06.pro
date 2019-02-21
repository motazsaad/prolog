/* Problem:
	Modify the program VP-05 to include the following:
- All apllicants has declared their qualifications as well.
- A list of degrees declared as facts for graducates degrees.
- Modify the rule so that the applicant is selected only if he is
  graducated and the previous criteria is met.
*/

domains
	name	=	symbol
	age	=	integer
	degree	=	symbol
	city	=	symbol

predicates
	nondeterm applicant(name,age,city)
	nondeterm drive(name)
	nondeterm type(name)
	nondeterm computer(name)
	nondeterm qualification(name,degree)
	
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
	computer("Hussain")
	
	qualification("Muhammad","B.C.S").
	qualification("Wajid","BS").
	qualification("Ali","B.A").

	% Rule
	do:-
		write("Enter the City Name: "),
		readln(City),nl,
		write("Selected Applicants are:"),nl,
		applicant(Name,Age,City),
		Age>30,
		type(Name),
		drive(Name),
		qualification(Name,Degree),		
		write("Name: ",Name," \t Degree: ",Degree),nl,
		fail.
		do.
		
goal
	do.