exec("Fonctions.sci")

/* VARIABLES */
tempsAttente = 2000 // Temps d attente en ms pour les sleep()
n=5 // Taille des matrices
A = 100*rand(n,n) // Matrice aleatoire a n lignes et n colonnes 
x = 100*rand(1,n) // Matrice aleatoire a 1 ligne et n colonnes pour en faire un vecteur

[ANouveau, bNouveau]=REDUC(A, A*x', n)
disp("matrice A")
disp(A)
sleep(tempsAttente)
disp("matrice x")
disp(x)
sleep(tempsAttente)
disp("matrice A apres avoir fait le pivot de Gauss")
disp(ANouveau)
sleep(tempsAttente)
disp("matrice b apres avoir fait le pivot de Gauss")
disp(bNouveau)
sleep(tempsAttente)
disp("matrice ANouveau*x doit etre egale a b reponse")
disp(ANouveau*x')
sleep(tempsAttente)

disp("question 2")
disp("matrice x")
disp(x') //transpose pour avoir un vecteur colonne 
sleep(tempsAttente)
XGauss=GAUSS(A, A*x', n)
disp("XGauss doit etre égale a la matrice x")
disp(XGauss)
sleep(tempsAttente)
