clc;
clear;

temp=transpose(dlmread('weatherinistanbul.txt','',0,1));
days=transpose(dlmread('weatherinistanbul.txt','',[0 0 11 0]));
N=11;

xs=1:365;
for k=1:365
for i=1:12
    lambda(i)=1;
end


for i=1:12
    for j=1:12
        if(i~=j)
            lambda(i)=lambda(i)*((xs(k)-days(j))/(days(i)-days(j)));
            
        end
    end
end

ff=0;
for i=1:12
    ff=ff+lambda(i)*temp(i);
end

fff(k)=ff;
end

fff

plot(xs,fff)