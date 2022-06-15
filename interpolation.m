function coeff=interpolation(x,y)
%here we have imported the values of X and Y
%NOW WE NEED TO MAKE THE VONDERMONDE MATRIX

    for k=1:9
        arr(k,1)=1; %DEFINING THE FIRST COLUMN==1 
    end
    %NOW WE ASSING THE VALUE TO THE OTHER ELEMENTS OF OUR VONDERMONDE
    %MATRIX
    for j=1:9    
        for i=2:9
           arr(j,i)= x(j)^(i-1);
        end
        
    end
    %THUS GETTING VONDERMONDE MATRIX , WE NOT USE THE GAUSS ELIMINATION
    %TECHINIQUE WHICH WE USED IN THE 2ND ASSINGMENT TO FIND THE
    %COEFFICIENTS
coeff= gauss_elimination(arr,y);
end

