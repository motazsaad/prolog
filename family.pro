domains
name = symbol

predicates
nondeterm father(name,name)
nondeterm brother(name,name)
nondeterm cousin(name,name)
nondeterm grand(name,name)

clauses

father(jameel,kamal).
father(jameel,hasan).

father(kamal,fareed).
father(kamal,jamal).

father(hasan,ali).
father(hasan,muhammad).

brother(N1,N2):-father(X,N1),father(X,N2),N1<>N2.
cousin(N1,N2):-father(X1,N1),father(X2,N2),brother(X1,X2).

grand(N1,N2):-father(X1,N2),father(N1,X1).

goal

%father(hasan, Sons).
%father(kamal, Sons).
%brother(ali, muhammad).
%brother(ali, X).
%brother(ali, fareed).
%cousin(ali, muhammad).
%cousin(ali, X).
grand(X,kamal).









	