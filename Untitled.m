m=input('number of equation: ');
n=input('number of variables: ');


arr=[9 -4 1 0 0 0 0 0 0 0 0 0 0 0 0;
4 6 -4 1 0 0 0 0 0 0 0 0 0 0 0;  
1 -4 6 -4 1 0 0 0 0 0 0 0 0 0 0;
0 1 -4 6 -4 1 0 0 0 0 0 0 0 0 0;
0 0 1 -4 6 -4 1 0 0 0 0 0 0 0 0;
0 0 0 1 -4 6 -4 1 0 0 0 0 0 0 0;
0 0 0 0 1 -4 6 -4 1 0 0 0 0 0 0;
0 0 0 0 0 1 -4 6 -4 1 0 0 0 0 0;
0 0 0 0 0 0 1 -4 6 -4 1 0 0 0 0;
0 0 0 0 0 0 0 1 -4 6 -4 1 0 0 0;
0 0 0 0 0 0 0 0 1 -4 6 -4 1 0 0;
0 0 0 0 0 0 0 0 0 1 -4 6 -4 1 0;
0 0 0 0 0 0 0 0 0 0 1 -4 6 -4 1;
0 0 0 0 0 0 0 0 0 0 0 1 -4 5 -2;
0 0 0 0 0 0 0 0 0 0 0 0 1 -2 1;];
b= zeros(1,24);
for i=1:24
    b(1,i)=24;
end

for i=1:m-1
    c=1;
    temp=0;
    for j=i:m
        index=1;
        if(abs(arr(j,c))>temp)
            temp=abs(arr(j,c));
            index=j;
        end
    end
    temparr = zeros(1,n);
    for k=1:n
        temparr(1,k)=arr(i,k);
    end
    for k2=1:n
        arr(i,k2)=arr(j,k2);
    end
    for k3=1:n
        arr(j,k3)=temparr(1,k2);
    end
    tempb = b(1,i);
    b(1,i)=b(1,j);
    b(1,j)=tempb;
    
    for r=i:m-1
            z=arr(r+1,1)/arr(r,1);
        for l=1:n
            arr(r+1,l)=arr(r+1,l)-(arr(r,l))*z;
        end
    end
    c=c+1;
end
 
disp(arr)
