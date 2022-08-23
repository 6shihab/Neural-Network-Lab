function [W]=DeltaSGD(W,X,D)
alpha=0.9;
N=4;
for k=1:N
    x=X(k,:)';
    v=W*x;
    y=Sigmoid(v);
    d=D(k);
    e=d-y;
    delta=y*(1-y)*e;
    dW=alpha*delta*x;  %delta rule
    %W=W+dW;
    W(1)=W(1)+dW(1);
    W(2)=W(2)+dW(2);
    W(3)=W(3)+dW(3);
end
end