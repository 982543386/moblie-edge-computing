function [Tcloud,Tlocal] = groupT(T,Tnum)
%UNTITLED10 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
m=0;
for i = 1:Tnum
    if T(i,2)==0
        m=m+1;
    end
end
Tlocal=zeros(m,7);
Tcloud=zeros(Tnum-m,7);

a=1;b=1;
for i = 1:Tnum           
    if T(i,2)==0 
        Tlocal(a,:)=T(i,:);a=a+1;
    else 
        Tcloud(b,:)=T(i,:);b=b+1;
    end    
end

end

