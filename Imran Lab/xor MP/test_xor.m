clc
close all
clear all
input=[0 0; 0 1; 1 0; 1 1];
target= [0
         1
         1
         0];
  weight=2*rand(2,2)-1;
  

for epoch=1:10000
    alpha=1;
    N=4;
    for k=1:N
        s_input=input(k,:)';
        %disp(x)
        sum=weight*s_input;
        y(k)=activation_Function(sum(1)+sum(2));
        s_target=target(k);
        if y(k)~=s_target
           dW=alpha*s_target*s_input;
           weight=weight+ dW;
        end
    end
end
  disp(weight);

  
  
  N=4;
  for k=1:N
      s_input=input(k,:)';
        %disp(x)
      sum=weight*s_input;
      y(k)=activation_Function(sum(1)+sum(2));
  end
  disp(y);
  
  %{
  %figure
  x1=[0 0 1;0 1 0];
  x2=[1 1];
  m=(-1:2);
  n=(-weight(1)*m-weight(3))/weight(1);   %equation y=mx+c;  w1*x+w2*y+b=0 for
                                          % making decition boundary
  figure(1);
  plot(x1(1,:),x1(2,:), 'b*','linewidth',2);
  hold on;
  plot(x2(1,1),x2(1,2), 'r+','linewidth',2);
  hold on;
  plot(m,n,'g','linewidth',2);
  axis([-0.15 1.15 -0.25 1.5]);
  legend('Class1','Class2', 'Decision Boundary');
  grid on;
  hold off;
%}
  