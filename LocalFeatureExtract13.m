  function [ output] =LocalFeatureExtract13( input )

[m,n]=size(input);   %m=358
%%%358*T==>357*2*T,
a=zeros(2*(m-1),n);
for i=2:m
    for j=1:n
        if input(i,j)<=input(i-1,j)
            a(2*(i-1)-1,j)=1;
        end
    end
end
for i=2:m-1
    for j=1:n
        if input(i,j)<=input(i+1,j)
            a(2*(i-1),j)=1;
        end
    end
end

for j=1:n
        if input(m,j)<=input(1,j)
            a(2*(m-1),j)=1;
        end
end
%%%357*2*T==>119*T，6
len=floor((2*(m-1)-1)/6)+1;  %len=119
b=zeros(len,n);
for j=1:n
    p=1;
    for i=1:2*(m-1)
        add=floor((i-1)/6)+1;
        if add>p
            p=add;
            b(p,j)=b(p,j)+a(i,j)*2^(5-mod(i-1,6));
        else
            b(p,j)=b(p,j)+a(i,j)*2^(5-mod(i-1,6)); 
        end
    end
end
%%%119*T==>119*bin==>bin*119
% for i=1:len
%     [num,location]=hist(b(i,:),64);
%     c(i,:)=num;
% end
[num,location]=histc(b',0:1:63);
%[output,location]=histc(num,1:1:63);
output=num;
end

