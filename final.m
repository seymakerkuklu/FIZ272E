%090200124 Şeyma Kerküklü
%Question 1: Calculating an integral using the 3-point Gauss-Legendre rule

%%Q3=5/2*x^3-3*x/2  => third legendre polynomial 
%roots(-sqrt(3/5),0,sqrt(3/5)) => roots of the polynomial
%w1=5/9, w2=8/9, w3=5/9 => coeffs of 
%%I've got the upper polynomial, root and coeffs from the codes for quiz7
P3=5/9*(f(-sqrt(3/5)))+8/9*f(0)+5/9*f(sqrt(3/5));

fprintf('the result of the integral is %s',P3);


%090200124 Şeyma Kerküklü
%Question 2: Calculating an integral using the Monte-Carlo Method with 1000
%points

a=-1;
b=1;
N=1000;
total=0;

for i=1:N
    x=(b-a)*rand()+a; % I assigned random number between 1 to -1 
    total=total+f(x); %I've sent the random number to the previous x^2 function to get sum
    ave_f=total/N; %I divide it to N to calculate average
end

result=(b-a)*ave_f;
fprintf('the result of the integral is %s',result);

%090200124 Şeyma Kerküklü
%Question 3: Solving an initial value problem with 4th order runge kutta
%scheme

f= @(z,h,y) y;
g= @(z,h,y) sin(z)-3*y-5*h;

zinitial=0;
hinitial=1;
yinitial=3;
zfinal=7;

numpoints=1000;
k=(zfinal-zinitial)/numpoints;

zvalues=zeros(1,N+1);
hvalues=zeros(1,N+1);
yvalues=zeros(1,N+1);

zvalues(1)=zinitial;
hvalues(1)=hinitial;
yvalues(1)=yinitial;

for i=1:numpoints

    F1h=f(zvalues(i),hvalues(i),yvalues(i));
    F1y=g(zvalues(i),hvalues(i),yvalues(i));

    F2h=f(zvalues(i)+(k/2),hvalues(i)+(k/2)*F1h,yvalues(i)+(k/2)*F1y);
    F2y=g(zvalues(i)+(k/2),hvalues(i)+(k/2)*F1h,yvalues(i)+(k/2)*F1y);

    F3h=f(zvalues(i)+(k/2),hvalues(i)+(k/2)*F2h,yvalues(i)+(k/2)*F2y);
    F3y=g(zvalues(i)+(k/2),hvalues(i)+(k/2)*F2h,yvalues(i)+(k/2)*F2y);

    F4h=f(zvalues(i)+k,hvalues(i)+k*F3h,yvalues(i)+k*F3y);
    F4y=g(zvalues(i)+k,hvalues(i)+k*F3h,yvalues(i)+k*F3y);

    hvalues(i+1)=hvalues(i)+(k/6)*(F1h+2*F2h+2*F3h+F4h);
    yvalues(i+1)=yvalues(i)+(k/6)*(F1y+2*F2y+2*F3y+F4y);
    zvalues(i+1)=zvalues(i)+k;
end

plot(zvalues,hvalues)
hvalues(7)

%090200124 Şeyma Kerküklü
%Question 5: Calculating the interpolation by using Lagrange interpolation e

xs=2.5;

x=[1,2,3];


func(1)=10;
func(2)=20;
func(3)=30;

for i=1:3
    lambda(i)=1;
end

for i=1:3
    for j=1:3
        if(i~=j)
            lambda(i)=lambda(i)*((xs-x(j))/(x(i)-x(j)));
            
        end
    end
end

ff=0;
for i=1:3
    ff=ff+lambda(i)*func(i);
end
ff

