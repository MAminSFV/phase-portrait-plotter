%% Model Settings %%
clc
clear
tf = 20;
ts = 0.05;


%% Initial Condition Generator
for i = 1:100
     try
        A = 5*(rand(2,1)-0.5);
        hold all;
        sim nonlinear_plot
        plot(States(:,1) , States(:,2))
        plot(A(1),A(2),'o')
     catch
         disp('unstable');
     end
end
%% Phase Plot - Vector Field
[x1,x2]= meshgrid(-4:1:4, -4:1:4);

%% A %%
%  xd1 = x2;
%  xd2 = -x2-0.5*x1;
 
%% B %%
% xd1 = x2;
% xd2 = 1-x2-0.5*x1;

%% C %%
% xd1 = x2;
% xd2 = -x2.^2-0.5*x1;
%% Problem 4 %%
b = 0.5;
xd1 = -x1+0.1*x2+(x1.^2)*x2;
xd2 = b-0.1*x2-(x1.^2)*x2;
%% %%%
quiver(x1,x2,xd1,xd2,1)
xlabel('X1')
ylabel('X2')


