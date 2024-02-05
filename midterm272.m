% 090200124 Şeyma Kerküklü

clc;
clear;

mSK=0; %I defined a variable mSK
% which will be the number of point lies within the ellipse

%explanation about my repetative code
% I initially tried to write samples as N=10^j j=1:6 in a loop
% but I stuck with a pi value of 3.4-3.6 so when i do one by one 
% I could get the pi results which are closer to the real pi value
% so this is the reason why I didn't use them in a loop 

for i=1:10^1 %this is the first loop which indicates 
    % the sample number and how many points will there be in ellipse
    aSK=1; %this is the major radius of my ellipse
    bSK=0.8; %this is the minor radius of my ellipse
    xSK=aSK*rand(); %this is a random real point in x axis which is between 0-1
    ySK=bSK*rand(); %this is a random real point in y axis which is between 0-0.8
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);%cartesian equation of ellipse is 
    % x^2/a^2+y^2/b^2=1 so I used this formula to define the ellipse
    if(hipoSK<aSK*bSK) %In here I checked if the random point (x,y) is in the ellipse
        % by given formula
         mSK=mSK+1; %It counts the number of points lie within the ellipse
    end

end
piSK(1)=4*mSK/10^1; %It is the pi value for 10^1 sample
%So basically what I do after is same with the first loop 
mSK=0; %i had to declare the mSK value again 
% for other loops to not use the previous SK value
for i=1:10^2 
    
    aSK=1; 
    bSK=0.8; 
    xSK=aSK*rand(); 
    ySK=bSK*rand();
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);
    if(hipoSK<aSK*bSK) 
         mSK=mSK+1; 
    end
end
piSK(2)=4*mSK/10^2;
mSK=0;
for i=1:10^3    
    aSK=1; 
    bSK=0.8; 
    xSK=aSK*rand(); 
    ySK=bSK*rand();
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);
    if(hipoSK<aSK*bSK) 
         mSK=mSK+1; 
    end
end
piSK(3)=4*mSK/10^3;
mSK=0;
for i=1:10^4   
    aSK=1; 
    bSK=0.8; 
    xSK=aSK*rand(); 
    ySK=bSK*rand();
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);
    if(hipoSK<aSK*bSK) 
         mSK=mSK+1; 
    end
end
piSK(4)=4*mSK/10^4;
mSK=0;
for i=1:10^5   
    aSK=1; 
    bSK=0.8; 
    xSK=aSK*rand(); 
    ySK=bSK*rand();
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);
    if(hipoSK<aSK*bSK) 
         mSK=mSK+1; 
    end
end
piSK(5)=4*mSK/10^5;
mSK=0;
tic;
for i=1:10^6   
    aSK=1; 
    bSK=0.8; 
    xSK=aSK*rand(); 
    ySK=bSK*rand();
    hipoSK=sqrt(xSK^2*bSK^2+ySK^2*aSK^2);
    if(hipoSK<aSK*bSK) 
         mSK=mSK+1; 
    end
end
piSK(6)=4*mSK/10^6;
toc;
piSK




k=1:6;
matrix=[k;piSK];
transpose(matrix)%k vs pi values
plot(k,piSK,".")%plot of pi vs k

