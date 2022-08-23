function [weight]=train_xor(weight,input,target)
alpha=1;
N=4;
for k=1:N
    s_input=input(k,:)';
    %disp(x)
    sum=weight*s_input;
    y(k)=activation_Function(sum);
    s_target=target(k);
    if y(k)~=s_target
       dW=alpha*s_target*s_input;
       weight(1)=weight(1)+ dW(1);
       weight(2)=weight(2)+ dW(2);
       weight(3)=weight(3)+ dW(3);
    end
end

end