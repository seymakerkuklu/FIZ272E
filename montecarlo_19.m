clc;
clear all;

initial_money=10^6;

prodpripertoy=input("enter  the price needed to produce one toy:");
sellpripertoy=input("enter the selling price of one toy:");

profit=sellpripertoy-prodpripertoy;
numofwilltobuy=0;

%storeloc=1;
storenum=100;
rentperday=100/30;
customerperday=2000;
advperday=(rentperday*0.1);
day=1;
while day<366
    for i=1:customerperday
        willtobuy(i)=rand();
        if(willtobuy(i)<0.8)
            numofwilltobuy=numofwilltobuy+1;
            total_profit_perdayper_people(i)=profit*numofwilltobuy;
        else
            numofwilltobuy=numofwilltobuy;


        end
    end
    net_profit_perday(day)=total_profit_perdayper_people*storenum-rentperday-advperday;
    

        if(day==35) || (day==335)
            
            net_profit_perday(day)=5*net_profit_perday(day)
        end

    

day=day+1;
end

sum(net_profit_perday)



        
        
    




