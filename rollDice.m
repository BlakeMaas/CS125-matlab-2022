function [faces, numDiceRolled, sum] = rollDice(faces, numDiceRolled, Y )
%doMathStuff(number of faces the dice has, number of dice to bve rolled, do you want the sum of the dice rolled 1 = yes 0 = no);
%FUNCTION rollDice
% Name: Blake Maas
% Course: EGR115
% Homework 8, Problem 2

% Description:
%rolls x number of dice with y number of faces, and can calculate the sum
%of the rolls

%variables:
%faces = the number of faces each dice has
%rollValue will store the values of the rolls made
%i = the starting value of the rolls
%sumx stores the sum of the rolls

clc;
rng(1,'philox'); %seed value using philox
rollValue = zeros(); %creates a array of zeros for storage efficiency
i = 1; %staring value of i
sumx = 0;


if true == isempty(numDiceRolled) %sets the value of number of dice rolled to two if left empty
    numDiceRolled = 2;
end

if true == isempty(faces) %sets the value of number of dice rolled to two if left empty
    faces = 6;
end

while (i <= (numDiceRolled))
    rollValue(1, i) = round((5*rand())+1);
    sumx = (rollValue(1,i) + sumx);
    i = i+1;
end
disp('these are the values of your dice rolls: ')
disp(rollValue(1,[1:length(rollValue)]));


if Y == 1
    disp(' the sum of your series is: ');
    disp(sumx);
    
end
result = ('idk' ,rollValue, sumx);

