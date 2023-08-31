
%r= 0.1 %r1
%r=2.5; % per capita growth rate
K =0.6; %K

%(1,:) = [0 0.1 0.3 0.5 0.7];%initial conditions

%y = x(n) + r(1-x(n)/K)x(n)
nMax = 1000; % max number of days to simulate

x = zeros(1,nMax); % number of rabbits
x(1) = 0.2; % initial condition1
%x(1) = 2; % initial condition 2

% Define the number of values
num_values = 1000;

% Define the range for R
R_min = 0;
R_max = 3;

% Create a linearly spaced vector for R
R_values = linspace(R_min, R_max, num_values);

% Initialize a loop to iterate through R_values
for i = 1:num_values
    R = R_values(i);
    
    for n=2:nMax
        x(n) = x(n-1) + r*(1-x(n-1)/K)*x(n-1);

    end % finished loop through days
end

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ? 

figure(1); 
plot(x,'-ok');
ylabel('fraction caffeinated')
xlabel('Days')