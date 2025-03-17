clear variables;
clc;

ilosc_kandydatow=1000;
n=100;
sukces=zeros(1,ilosc_kandydatow-1);

for k=1:ilosc_kandydatow-1
    for i=1:n
        ocena=randperm(ilosc_kandydatow);
        najlepsza=max(ocena(1:k));
        index=find(ocena>najlepsza, 1);
        if isempty(index)
            zatrudniona=ocena(end);
        else
            zatrudniona=ocena(index);
        end
        if zatrudniona==ilosc_kandydatow
            sukces(k)=sukces(k)+1;
        end
    end
end

bar(sukces)