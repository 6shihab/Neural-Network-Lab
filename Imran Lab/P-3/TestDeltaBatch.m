clc
close all
clear all
input=[0 0 1; 0  1 1; 1 0 1; 1 1 1;];
D= [  0
      0
      1
      1
      ];
  weight=2*rand(1,3)-1;
  %disp(W)
  for epoch=1:40000
      weight=DeltaBatch(weight,input,D);
  end
  N=4;
  for k=1:N
      x=input(k,:)';
      v=weight*x;
      y(k)=Sigmoid(v)
  end
  