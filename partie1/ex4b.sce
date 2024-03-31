exec("Fonctions.sci")

/* VARIABLES */
tempsAttente = 2000 // Temps d attente en ms pour les sleep()
n = 5 // Taille des matrice
b = 100*rand(1, n) // Matrice aleatoire a une ligne et n colonnes pour en faire un vecteur
A = 100*rand(n,n) // Matrice aleatoire a n lignes et n colonnes
A=triu(A) // On transforme la matrice A en matrice superieur

reponse=RESOUSUP(A, b, n)
disp("matrice A")
disp(A)
sleep(tempsAttente)
disp("matrice b")
disp(b') // On utilise la transpose de b pour l afficher en colonne
sleep(tempsAttente)
disp("matrice Reponse")
disp(reponse)
sleep(tempsAttente)
disp("Verification doit etre egale a b")
disp(A*reponse) // Puisqu on fait AX=b et que l on a trouve X qui est reponse
    // il faut faire A*reponse pour trouver b
