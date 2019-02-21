% First Problem in Prolog

domains
	name	=	symbol
	hobby	=	symbol
	age	=	integer

predicates
	nondeterm person(name,age)
	nondeterm has(name,hobby)
	nondeterm child(name)
	nondeterm adult(name)
	nondeterm friend(name,name)
	
clauses
	% Facts
	person("Muhammad Tahir",23).
	person("Wajdi",21).
	person("Ahmad",23).
	person("Ali",22).
	person("Hussain",22).
	person("Nader",15).	
	person("Haseeb",18).
	
	has("Muhammad Tahir","Programming").
	has("Wajdi","Graphic Designing").
	has("Hussain","Web Designing").
	has("Ali","Programming").
	has("Nader","Watching TV").
	has("Haseeb","Watching TV").
	
	% Rules
	child(Name):-
		person(Name,Age),
		Age<12.
		
	adult(Name):-
		person(Name,Age),
		Age>18.		
	
	friend(PersonA,PersonB):-
		child(PersonA),
		child(PersonB),
		PersonA<>PersonB,
		has(PersonA,Hobby),
		has(PersonB,Hobby).
		
	friend(PersonA,PersonB):-
		adult(PersonA),
		adult(PersonB),
		PersonA<>PersonB,
		has(PersonA,Hobby),
		has(PersonB,Hobby).		
			
goal
	% Goals
	% Test these goals one by one by removing '%' sign
	person(Name,Age).
%	person("Muhammad Tahir",_).
%	person(Name,Age), Age>20 , Age<25.
%	child(Name).
%	adult(Name).
%	friend("Muhammad Tahir",Friend).
	