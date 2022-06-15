X= load('x.txt');
Y= load('y.txt');
coeff_poly=interpolation(X,Y);

%HERE WE INSERT OUR VALUES OF X , AS GIVEN IN THE ASSINGMENT 
x_new=[0.5;1.5;2.5;3.5;4.5;6.5;7.5];
%NOW FOR EACH VALUE OF X IN THE ASSINGMENT , WE FIND CORRESPONDING Y
for i=1:7
    s=0;
    for j=1:9
        s=s+ coeff_poly(j)*(x_new(i))^(j-1);%UPDATING THE VALUE OF Y IN EACH STEP
    end
    y_new(i)=s;
end
%NOW WE NEED TO FIND THE VALUE OF SQRT(X VALUES)

for i=1:7
    y_sqrt(i)= sqrt(X_new(i));
end
%NOW WE ARE CALCULATING THE DIFFERENCE BETWEEN THE VALUES WE OBTAINED FROM
%THE PROGRAM AND THE SQUARE-ROOT 
for i=1:7
    diff(i)= y_new(i)-sqrt(X_new(i));
end
%NOW WE ARE PLOTTING THE THREE CURVES
%AND OUTPUT THE DIFFERENCE IN THE COMMAND WINDOW
disp(diff)
plot(X,Y);
hold on
plot(x_new,y_new);
plot(x_new,y_sqrt);





