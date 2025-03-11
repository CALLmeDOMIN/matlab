clear variables;

n=input('Podaj liczbe: ');

while n>1
    for i=2:n
        if mod(n,i)==0
            disp(i)
            n=n/i;
            break;
        end
    end
end