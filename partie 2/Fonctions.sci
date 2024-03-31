/* EXERCICE 6 TP 1 + EXERCICE 1 TP 2 */
function X = RESOUTRI(A, B, C, D, n)
    X = zeros(n, 1)
    
    /*Cas particulier (première ligne) */
    E(1) = -C(1)/B(1)
    F(1) = D(1)/B(1)
    
    for i = 2:n-1
        aux = A(i)*E(i-1) + B(i)
        E(i) = -C(i) / aux
        F(i) = (D(i) - A(i)*F(i-1)) / aux
    end
    
    F(n) = (D(n) - A(n)*F(n-1)) / (A(n)*E(n-1) + B(n))
    X(n) = F(n)
    
    for i = n-1:-1:1
        X(i) = E(i)*X(i+1) + F(i)
    end
endfunction

// Fonction avec M non forme
function [M]=DIF(A, B, C, X, D, n)
    M = zeros(n, n) // M est le resultat
    for i = 1 : n
        M(i, i) = B(i)
        if (i <> 1)
            M(i, i-1) = A(i)
        end
        if(i <> n)
            M(i, i+1) = C(i)
        end
    end
    M=M*X-D
endfunction

// Fonction avec M forme
function [Y]=DIF2(A, B, C, X, D, n) // n > 2 
    Y=[n]
    Y(1) = B(1)*X(1)+C(1)*X(2)
    for i = 2 : n-1
        Y(i)=A(i)*X(i-1)+B(i)*X(i)+C(i)*X(i+1)
    end
    Y(n)=A(n)*X(n-1)+B(n)*X(n)
    Y=Y-D
endfunction

// Renvoie un tableau de taille 1,n avec que des a
function [X]=QueDesa(n, a)
    X=[1, n]
    for i = 1:n
        X(i) = a
    end
endfunction
// Renvoie un tableau de taille n,1 avec que des a
function [X]=QueDesb(n, a)
    X=[n,1]
    for i = 1:n
        X(i) = a
    end
endfunction

/* EXERCICE 2 */

function [X, B] = MAGIQUE(A, n)
    X=eye(n, n) 
    for i = 1 : n disp(X,A)
        for j = 1 : n
            //q=(1/A(i, i))*A(j, i) on ne peut pas utiliser q car on a des soucis d'arrondi qui vont fausser les calcules
            ak=A(i, i) // pour sauvegarder ces valeurs sinon on les remplace
            ap=A(j, i)
            if(i <> j) then
                for k = 1 : n
                    if k<=i then
                        X(j, k) = X(j, k) - X(i, k) / ak*ap
                    end
                    A(j, k) = A(j, k) - A(i, k) / ak*ap
                end
            end
        end
    end
    for i = 1 : n
        for j = 1 : n
            X(i, j)=X(i, j)/A(i, i)
        end
        A(i,i)=A(i, i)/A(i, i)
    end
    B=A
    disp(X, A)
endfunction

/* EXERCICE 3 */

function x = uA(t)
   x = t .* sin(7 * %pi * t)
endfunction

function x = uB(t)
    x = (t - t .* t) .* (2 + sin(9 * %pi * t))
endfunction

function x = fA(t)
    x = 49 * %pi * %pi * t .* sin(7*%pi*t) - 14 * %pi * cos(7*%pi*t)
endfunction

function x = fB(t)
    x = 4 + 2 .* sin(9 .* %pi .* t) + (2 .* t - 1) .* 18 .* %pi .* cos(9 .* %pi .* t) + (t - t .* t) .* (9 .* %pi) .* (9 .* %pi) .* sin(9 .* %pi .* t)
endfunction

function x = T(i, N)
    h=1/(N+1)
    x=i*h
endfunction

function x = DA(i, N)
    h=1/(N+1)
    x=h*h*fA(T(i))
endfunction

function x = DB(i, N)
    h=1/(N+1)
    x=h*h*fB(T(i))
endfunction


