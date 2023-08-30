% How much caffeine is there in the jar?

% n - number of days
% x - fraction of caffeinated 

%r= 0.1 %r1
r=2.5
K =0.6 %K

%(1,:) = [0 0.1 0.3 0.5 0.7];%initial conditions

%y = x(n) + r(1-x(n)/K)x(n)
nMax = 60; % max number of days to simulate

x = zeros(1,nMax); % number of rabbits
x(1) = 0.2; % initial condition1
%x(1) = 2; % initial condition 2

for n=2:nMax
    
    x(n) = x(n-1) + r*(1-x(n-1)/K)*x(n-1);
  
    
end % finished loop through days

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ? 

figure(1); 
plot(x,'-ok');
ylabel('fraction caffeinated')
xlabel('Days')