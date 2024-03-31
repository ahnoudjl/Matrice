chdir("C:\Users\DELL\Downloads\tp2\tp2")
exec("Fonctions.sci")

n=4
A=rand(n, n)
//A=[1, -1, 1, -1; -1, 2, -2, 2; 1, -2, 3, -3; -1, 2, -3, 4]
//A=[-1, 1, 1, 0; -1, 2, 1, -1; 5, -3, -2, 5; 4, -2, -2, 3]
[X, B]=MAGIQUE(A, n)

disp("matrice A")
disp(A)
disp("Matrice X resultat")
disp(X)
disp("matrice A apres la fonction")
disp(B)
disp("Matrice resultat avec la fonction de scilabe doit etre egale a X")
disp(inv(A))
disp("A*X, doit afficher la matrice indentite")
disp(A*X)
