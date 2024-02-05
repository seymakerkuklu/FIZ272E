clc;
clear all;

age=25;
walk_die=5*10^(-5);
walk_meet=0.01;
marry=0.03;
subway_die=2*10^(-5);
subway_meet=0.005;
day=0;


while(1)
    way_chance=rand();
    if(way_chance<0.5)
        walk_die_chance=rand();
        if(walk_die_chance<walk_die)
            disp("Rifki died while walking and had never fell in love")
            break
        else
            walk_meet_chance=rand();
            if(walk_meet_chance<walk_meet)
                walk_marry_chance=rand();
                if(walk_marry_chance<marry)
                    disp("Rifki fell in love while walking and got married ")
                    break
                end
            end
        end

    else
        subway_die_chance=rand();
        if(subway_die_chance<subway_die)
            disp("Rifki died in subway and had never fell in love")
            break
        else
            subway_meet_chance=rand();
            if(subway_meet_chance<subway_meet)
                subway_marry_chance=rand();
                if(subway_marry_chance<marry)
                    disp("Rifki fell in love in subway and got married ")
                    break
                end
            end
        end
    end
day=day+1;

end

time=floor(day/365);

age=age+time




