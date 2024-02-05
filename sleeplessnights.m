clc;
clear;

MSK=dlmread("sleeplessnights.txt"); % I read the data from the file 
% and assign it to the matrix MSK

cekirgeSK=transpose(MSK(:,1)); % I assigned the first column to cekirgeSK
temp_fahrSK=transpose(MSK(:,2));%I assigned the second column to cekirgeSK

for i=1:7
    temp_celcSK(i)=(temp_fahrSK(i)-32)*5/9; %I used the formula to calculate
    %temperature in celcius degrees
end

sum_xSK=0; %this is a12 of my derived value of a1SKx+a0SK function to the matrix MSK
%which is the number of the crickets
sum_xsquareSK=0; % this is a22 of my derived value of a1x+a0 function to the matrix MSK
%which is the square of the number of crickets
sum_ySK=0;%this is a11 of the matrix VSK which is the sum of all celcius degrees
sum_yxSK=0;%this is a21 of the matrix VSK which is the 
% multiplication of the number of crickets and sum of all celcius degrees
NSK=7; %number of data
for i=1:7 %this loop calculates matrix MSK and VSK's values and assigns each value 
    % to calculate the values that I stated above
    sum_xSK=sum_xSK+cekirgeSK(i); %the number of the crickets
    sum_xsquareSK=sum_xsquareSK+cekirgeSK(i)^2;%the square of the number of crickets
    sum_ySK=sum_ySK+temp_celcSK(i);%sum of celcius degrees
    sum_yxSK=sum_yxSK+cekirgeSK(i)*temp_celcSK(i);%multiplication of the number of 
    % crickets and sum of celcius degrees
end

MSK=[NSK,sum_xSK; sum_xSK,sum_xsquareSK]; %MSK and VSK matrixes are used to help us
% to find a0SK and a1SK values to create the function which we will use to fit the curve

VSK=[sum_ySK;sum_yxSK];

coeffsSK=MSK\VSK; %coeffsSK are the solution of the MSK\V which is the matrix that gives
%a0SK and a1SK values

a0SK=coeffsSK(1);
a1SK=coeffsSK(2);

xxSK=0:49;
for i=1:50
    fSK(i)=a1SK*xxSK(i)+a0SK; %function that we use to fit the curve
end

plot(cekirgeSK,temp_celcSK,".",xxSK,fSK)
chi_squareSK=0;
for i=1:7
    chi_squareSK=chi_squareSK+(cekirgeSK(i)-fSK(i))^2/fSK(i);
end
chi_squareSK




