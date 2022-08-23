function weight=DeltaBatch(weight,input,Desired)
eta=0.9;  %learning rate
dWsum=zeros(3,1);
N=4;
for i=1:N
    x=input(i,:)';
    %disp(x)
    v=weight*x;
    y=Sigmoid(v);
    d=Desired(i);
    e=d-y;
    delta=y*(1-y)*e;
    dW=eta*delta*x;  %delta rulr    
    dWsum=dWsum+dW;
end
    dWavg=dWsum/N;
    weight(1)=weight(1)+dWavg(1);
    weight(2)=weight(2)+dWavg(2);
    weight(3)=weight(3)+dWavg(3);
end