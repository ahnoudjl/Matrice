chdir("C:\Users\timot\Documents\Ecole\L2\MInfo402\tp1\tp2")
exec("Fonctions.sci")

// Question 1
nbPoint=2000
x=linspace(0, 1, nbPoint)
y=uB(x)
plot(x, y) 

// Question 2

for N = 10: 10 : 50
    A=-1*ones(1, N)
    B=2*ones(1, N)
    C=-1 * ones(1, N)
    i=linspace(1, N, N)
    D=DB(i, N)
    Y=RESOUTRI(A, B, C, D, N)
    clf()
    plot(x, y)
    plot(T(i), Y, "r+")
    title("trace pour N = " + string(N))
    sleep(2000)
end

