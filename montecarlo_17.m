clc;
clear all;
v=[0,0,0];
tur=0;
tur_won=0;
tur_change=0;
while(1)
    car=randi(3);
    v(car)=1;
    pick=randi(3);
    if(pick~=car)
        %disp("lost")
        tur_change=tur_change+1;
    else
        %disp("won")
        tur_won=tur_won+1;
    end
tur=tur+1;
if(tur>10000)
    break
end
        
end

tur_won
tur_change

time=1:tur-1;
