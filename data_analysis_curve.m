clc;
clear;

x=[0,1,2];
y=[3,6,9]; %[3,6,9]

sum_x=0;
sum_xsquare=0;
sum_y=0;
sum_yx=0;

N=3;

for i=1:3
    sum_x=sum_x+hvalues(i);
    sum_x2=sum_xsquare+zvalues(i)^2;
    sum_x3=sum_xsquare+zvalues(i)^3;
    sum_x4=sum_xsquare+zvalues(i)^4;
    sum_x5=sum_xsquare+zvalues(i)^5;
    sum_x6=sum_xsquare+zvalues(i)^6;
    sum_x7=sum_xsquare+zvalues(i)^7;


    sum_y=sum_y+hvalues(i);
    sum_yx=sum_yx+zvalues(i)*hvalues(i);
end

M=[N,sum_x,sum_x2,sum_x3,sum_x4,sum_x5,sum_x6,sum_x7; sum_x,sum_x2,sum_x3,sum_x4,sum_x5,sum_x6,sum_x7;sum_x,sum_xsquare]

V=[sum_y;sum_yx]

coeffs=M\V

a0=coeffs(1)
a1=coeffs(2)

xx=0:10;
for i=1:11
    f(i)=a1*xx(i)+a0;
end

plot(x,y,".",xx,f)