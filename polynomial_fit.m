clc;
clear;

x=[1,2,3,4,5];
y=[2,4,1,3,8];
M=zeros(4,4);
V=zeros(4,1);

for i=1:4
    for j=1:4
        for k=1:5
            M(i,j)=M(i,j)+x(k)^(i+j-2); 
           
        end
    end

end

for j=1:4
        for k=1:5
            V(j,1)=V(j,1)+(x(k)^(j-1))*y(k);
        end
end

coeffs=M\V;

a0=coeffs(1);
a1=coeffs(2);
a2=coeffs(3);
a3=coeffs(4);

xx=-10:11;
for i=1:22
    f(i)=a0+a1*xx(i)+a2*xx(i)^2+a3*xx(i)^3;
end

plot(x,y,".",xx,f)
grid on







