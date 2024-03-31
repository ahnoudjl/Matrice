/* EXERCICE 4 */

// QUESTION 1: Fonction pour resoudre Ax=b avec A une matrice inferieur inversible, on retourne x le resultat
function [x]=RESOUINF(A, b, n)
    x=[n] // Correspond au resultat
    for i = 1:n // Boucle qui parcout les lignes 
        tmp=0
        for j = 1:(i-1) // Boucle qui parcout les colonnes
           tmp=tmp+(A(i, j)*x(j))
        end
        x(i)=(b(i)-tmp)/A(i,i)
    end
endfunction

// QUESTION 2: Fonction pour resoudre Ax=b avec A une matrice superieur inversible, on retourne x le resultat
function [x]=RESOUSUP(A, b, n)
    x=[n] // Correspond au resultat
    for i = n:-1:1
        tmp=0
        for j = n:-1:(i+1)
           tmp=tmp+(A(i, j)*x(j))
        end
        x(i)=(b(i)-tmp)/A(i,i)
    end
endfunction

/* EXERCIE 5 */

// QUESTION 1: Retourne la reduction de Gausse sur les matrices A et b pour Ax=b
function [x, bNouveau]=REDUC(A, b, n)
    x=A // Correspond a la nouvelle matrice A
    bNouveau=b // Correspond a la nouvelle matrice B
    for i = 1:n-1
        for j = i+1 : n
            tmp = (1/x(i,i))*x(j,i)
            for k = 1:n
                x(j,k)=x(j,k)-x(i,k)*tmp // notre tmp ne fonctionne pas, on ne sait pas pourquoi
                x(j,k)=x(j,k)-x(i,k)/x(i,i)*x(j,i)
            end
            bNouveau(j)=bNouveau(j)-bNouveau(i)*tmp
            bNouveau(j)=bNouveau(j)-bNouveau(i)/x(i,i)*x(j,i)
        end
    end
endfunction


//QUESTION 2: La fonction GAUSS renvoie X la solution de l’équation AX=b, à partir de la matrice triangulaire supérieure A et la matrice b en utilisant les fonctions REDUC et RESOUSUP.

function X=GAUSS(A, b, n)
   [A,b]=REDUC(A,b,n)
   X=RESOUSUP(A,b,n)
 endfunction
