%clear;
clc;close all;

T(:,2)=Q;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %�ƶ�ִ������C;����ִ������L
[t,e] = sysload(C,L,Ptu,Pcpu);  %t,e
K = rt*t+re*e;


T(:,2)=Q1;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %�ƶ�ִ������C;����ִ������L
[t,e] = sysload(C,L,Ptu,Pcpu);  %t,e
K1 = rt*t+re*e;

T(:,2)=Q0;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %�ƶ�ִ������C;����ִ������L
[t,e] = sysload(C,L,Ptu,Pcpu);  %t,e
K0 = rt*t+re*e;

