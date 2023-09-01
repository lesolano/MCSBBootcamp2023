% ------------------------------------------------------
A     = 1.1; % fluorescence intensity units
omega = 2.6; % rad/s
A_0   = 0.01;

u=@(t) A*sin(omega*t)+A_0;

tArray = linspace(0,1.6,200);
uArray = u(tArray); % an array of samples of u
% ------------------------------------------------------
for n=1:10
    
     uObserved = u(tArray) + (10)^(-n)*randn(size(tArray)) %1e-x determines noise;

    % create finite-difference derivatives for first derivative, second derivative and third derivative
    dudt   = diff(uObserved)./diff(tArray);
    du2dt2 = diff(dudt)./diff(tArray(1:end-1));
    du3dt3 = diff(du2dt2)./diff(tArray(1:end-2));

    display(dudt)
    display(du2dt2)
    display(du3dt3)
    `display(uObserved);
end % finished loop through days