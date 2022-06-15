function output=lagrange_coeff(input)
X=[0;1;2;3;4;5;6;7;8;9;10]; %values of x as given in the question
%making a matrix 11*1 for storing the coefficients
%INITIALIZING THE VALUES TO BE 1
output=zeros(11,1);
for i=1:11
    output(i)=1;
end
    %FOR EACH VALUE OF X , WE CALCULATE THE LAGRANGE COEFFICIENT 
    for k=1:11 %LOOP FOR EACH VALUE OF X
        %NOW USING THE LAGRANGE COEFFICIENT FORMULAE
        for j=1:11
            if k~=j
                output(k)=output(k)*((input-X(j))/(X(k)-X(j)));
            end
        
        end
    end

return
end
