clc;
clear all;

path=1:100;
player1=1;
player2=1;

while(1)
    hole1=randi([2,99]);
    hole2=randi([2,99]);
    if(hole1~=hole2)
        hole3=randi([2,99]);
        if(hole3~=hole1) && (hole3~=hole2)
            while(1)
            dice1=randi([1,6]);
            player1=player1+dice1;
            if(player1==hole1) || (player1==hole2) || (player1==hole3)
                player1=1;
            else
                if(player1>=100)
                    disp("player 1 won the game");
                    break
                end
            end
            dice2=randi([1,6]);
            player2=player2+dice2;
            if(player2==hole1) || (player2==hole2) || (player2==hole3)
                player2=1;
            else
                if(player2>=100)
                    disp("player 2 won the game");
                    break
                end
            end
            end
        end
    end
    break
end
hole1
hole2
hole3
player1
player2
