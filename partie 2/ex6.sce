chdir("C:\Users\timot\Documents\Ecole\L2\MInfo402\tp1\tp2")
exec("Fonctions.sci")

n=5
A=100*rand(1, n)
B=100*rand(1, n)
C=100*rand(1,n)

D=100*rand(n, 1)

X = RESOUTRI(A, B, C, D, n)

disp("Matrice A")
disp(A)
disp("Matrice B")
disp(B)
disp("Matrice C")
disp(C)
disp("Matrice D")
disp(D)

disp("Matrice X")
disp(X)

disp("Resultat doit etre le plus proche de 0, version avec M forme")
disp(DIF(A, B, C, X, D, n))
disp("Resultat doit etre le plus proche de 0, version avec M non forme")
disp(DIF2(A, B, C, X, D, n))

disp("Suite de l exercice")

A=QueDesa(n, -1)
B=QueDesa(n, 2)
C=QueDesa(n, -1)

//Kiru(5)
n=5
tab=[3, n]
i=1
for j = 1 : n
    i=i*10
    A=QueDesa(i, -1)
    B=QueDesa(i, 2)
    C=QueDesa(i, -1)
    //D=QueDesb(i, 1)
    D=100*rand(i, 1)    
        
    t1 = timer()
        
    X = RESOUTRI(A, B, C, D, i)
        
    t2=timer()
        
    k = DIF2(A, B, C, X, D, i)
    //disp("norme de l erreur")
    //disp(k)
        
    tab(1, j)=i
    tab(2, j)=t2
    tab(3, j)=norm(k)
end
disp("temps")
disp(tab)
//plot(log10(tab(1, :)), tab(2, :), "r+")
//subplot(1,2,2)
plot(log10(tab(1, :)), log10(tab(3, :)), "r+")















