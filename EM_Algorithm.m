% EM algorithm to estimate theta(theta1) iteratively
% fahad mostafa @ttu 2019

x = [6,52,28,14]; % Given Dataset

% Initialize
j = 1;
theta1(j) = 0.1;

% Update Step
i = 15;
for k = 1:i
    theta1(k+1) = (x(1) + x(2)*(theta1(k)/(2+theta1(k))) + x(4))/(2*(x(1)+x(2)*theta1(k)/(2+theta1(k))+x(4)+x(3)));
end

figure(1);
plot(1:i+1,theta1)
title('Theta.hat of the Mutinomial Distribution');
xlabel('# of iteration-i')
ylabel('theta-->')

disp(theta1(end));