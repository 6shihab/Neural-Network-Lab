clear all
clc
X=[0 0 1; 0  1 1; 1 0 1; 1 1 1]
D= [0; 0; 1; 1 ]
W=2*rand(1,3)-1;
  for epoch=1:10000
      W=DeltaSGD(W,X,D);
  end
  
  %testing
  m=[0 1 1];
  v=W*m';
  y=Sigmoid(v)
    
  N=4;
  for k=1:N
      x=X(k,:)';
      v=W*x;
      y(k)=Sigmoid(v)
  end