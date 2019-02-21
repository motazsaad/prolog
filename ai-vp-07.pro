/*
  Develop a program to store facts regarding students, the courses in which they
  are registered and the course schedule. This information may be declared as
  following
  	students(rollnumber,name,age,city)
  	registered(rollnumber,coursename)
  	course_schedule(coursename,days,roomnumber)
  Develop the menu and supporting rules to enable the user to receive the
  following information
  	1- Names and Roll numbersof all students
  	2- Names of the students registered in a particular course
  	3- Names of students belonging to a particular city
  	4- The time table of a particular course
  	5- Exit
  	
  Use dummy names and data of your course.
*/

domains
	rollno	=	integer
	name	=	symbol
	age	=	integer
	city	=	symbol
	course	=	symbol
	day	=	symbol
	roomno	=	symbol

	Choice  =       integer
	
predicates
	nondeterm student(rollno,name,age,city)
	nondeterm registered(rollno,course)
	nondeterm course_schedule(course,day,roomno)
	
	nondeterm option(Choice)
	
	nondeterm do
		
clauses
	% facts
	student(39,"Muhammad",45,"Gaza").
	student(19,"Ali",40,"Khanyounis").
	student(29,"Hassan",35,"Rafah").
	
	registered(39,"Maths").
	registered(39,"Physics").	
	registered(19,"Physics").
	registered(29,"Chemistry").

	course_schedule("Maths","Sunday","R1").
	course_schedule("Physics","Monday","R2").
	course_schedule("Chemistry","Tuesday","R1").
	
	% rules
	option(1):-
	              student(X,Y,_,_),
	              write("Name: ",Y,"		Roll No: ",X),nl,
	              fail.
	              option(1).
	              
	option(2):-
	              student(X,Y,_,_),
	              registered(X,Z),
                      write("Name: ",Y,"		Course: ",Z),nl,
	              fail.
	              option(2).
	              
	option(3):-
	              student(_,X,_,Y),
                      write("Name: ",X,"		City: ",Y),nl,
	              fail.
	              option(3).

	option(4):-
	              course_schedule(X,Y,Z),
                      write("Course: ",X,"		Day: ",Y,"		Room: ",Z),nl,
	              fail.
	              option(4).

	option(5):-
		exit(0).
	
	do:-
	write("\n\n * * * * * * * * * * * * *  Menu  * * * * * * * * * * * * * * *"),nl,
	write("1.) Names and Roll Numbers of all Students"),nl,
	write("2.) Names of Students registered in a particular course"),nl,
	write("3.) Names of Students belonging to a particular city"),nl,
	write("4.) The time table of a particular course"),nl,
	write("5.) Exit"),nl,
        write("\n==>> Enter your choice: "),

        readint(Choice),nl,
       
        option(Choice),
        do.

goal
       do.       