%��ʼ��T
clc;clear;close all;


floc=1000  ;      %1Ghz
fser=100000 ;     %100 Ghz
Tnum = 40;        %�������� 
Pcpu = 0.5 ;      %0.5W
Ptu = 2 ;         %2W
Rptu = 2 ;       %Mbps
rt = 0.5;         %ʱ��Ȩ��
re = 0.5;         %�ܺ�Ȩ��
K = 0;            %����K
T = zeros(Tnum,7);           %A(i,:)��ȡ����A�ĵ�i�� A(:,i)��ȡ����A�ĵ�i��

for i = 1:Tnum
    
    T (i,1)=i;      %����ID
    T (i,3)=rand()*2000;   %��������� M
    T (i,4)=rand();   %���������� MB
    T(i,5)=T(i,3)/floc; %����ִ��ʱ��
    T(i,6)=T(i,3)/fser; %�ƶ�ִ��ʱ��
    T(i,7)=T(i,4)/Rptu; % �����ϴ�ʱ��
% ��ʼ�������Ƿ�Ǩ�ƣ������ʼ����
    if rand()>=0.5 %%�����Ƿ�Ǩ��
        T (i,2)=1;
    else
        T(i,2)=0;
    end

end

Q = T(:,2);%��������
Q0 = zeros(Tnum,1);%��������
Q1 = zeros(Tnum,1)+1;%��������