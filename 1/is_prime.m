clear variables;

n=input('Podaj liczbe: ');

czy=true;
for i=2:sqrt(n)
    if mod(n,i)==0
        czy=false;
        break;
    end
end

if czy
    disp("jest pierwsza");
else
    disp("nie jest pierwsza");
end