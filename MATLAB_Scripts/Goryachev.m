%% Reconstruction of figures from Goryachev et al. (2005)
clc;

%% plot
figure

% unlimited bacterial growth
subplot('Position',[0.14, 0.6, 0.25, 0.35]) 
y0 = [0, 0, 0, 5100, 0, 1*10^-5];
[s,x] = simulate_unlimited(y0);
plot(s,x(:,1:5)) 
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 10^-5, 10^5])
text(-1.5*10^4, 10*10^4, 'a', 'FontSize', 18, 'FontWeight', 'bold')

subplot('Position',[0.44, 0.6, 0.25, 0.35]) 
semilogy(s,x(:,1:5))
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 10^-8, 10^12])
text(-1.5*10^4, 1*10^12, 'b', 'FontSize', 18, 'FontWeight', 'bold')

subplot('Position',[0.74, 0.6, 0.25, 0.35]) 
plot(s,x(:,6),'blue')
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 1, 3*10^4])
legend('GFP [\mumol/l]','Location','northwest', 'FontSize', 10)
text(-1.5*10^4, 3*10^4, 'c', 'FontSize', 18, 'FontWeight', 'bold')

% limited bacterial growth
subplot('Position',[0.14, 0.1, 0.25, 0.35]) 
y0 = [0, 0, 0, 5100, 0, 1*10^-5];
[s,x] = simulate_logistic(y0);
plot(s,x(:,1:5)) 
legend('A_e(t) [\mumol/l] ', 'A_i(t) [\mumol/l] ', 'TraRd(t) [\mumol/l] ', 'N_{cell}(t) [cell]', 'TraM(t) [\mumol/l] ',...
       'Location', [0.02 0.5 0.1 0.1], 'FontSize', 10)
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 10^-5, 10^5])
text(-1.5*10^4, 10*10^4, 'd', 'FontSize', 18, 'FontWeight', 'bold')

subplot('Position',[0.44, 0.1, 0.25, 0.35]) 
semilogy(s,x(:,1:5))
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 10^-8, 10^12])
text(-1.5*10^4, 1*10^12, 'e', 'FontSize', 18, 'FontWeight', 'bold')

subplot('Position',[0.74, 0.1, 0.25, 0.35]) 
plot(s,x(:,6),'blue')
xlabel('Time [s]')
ylabel('Concentration [\mumol/l]')
axis([0, 100000, 1, 3*10^4])
legend('GFP [\mumol/l]','Location','northwest', 'FontSize', 10)
text(-1.5*10^4, 3*10^4, 'f', 'FontSize', 18, 'FontWeight', 'bold')

% save figure as pdf
h=gcf;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', 'Figure_4_6.pdf')


%% simulate
function [t,y] = simulate_unlimited(y0)
        
    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)GoryachevODE_unlimited(t,x),time_range,y0);
end

%% simulate
function [t,y] = simulate_logistic(y0)
        
    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)GoryachevODE_logistic(t,x),time_range,y0);
end

%% model 1 - unlimited bacterial growth
function dy = GoryachevODE_unlimited(~,y)

    % Known parameter values  
    k_1 = 0.3; 
    k_2 = 0.14; 
    k_3 = 0.4; 
    k_4 = 0.04;             
    k_5 = 2*10^-3;
    k_6 = 3.56*10^-5;
    k_7 = 1.5*10^-2;
    k_10 = 3.3*10^-4; 
    k_11 = 8.3*10^-4;
    k_12 = 6*10^-3;
    k_13 = 1.6*10^-2;
    k_14 = 1*10^-4;
    k_15 = 1.6*10^-2;
    k_16 = 1.4*10^-2;
    k_17 = 9.26*10^-3;
    k_18 = 1.6*10^-3;
    k_19 = 1.92*10^-2;
    k_20 = 8*10^-5;
    k_21 = 1.6*10^-2;
    k_22 = 2.68*10^-2;
    k_23 = 2.2*10^-2;
    k_24 = 6*10^-3;
    k_25 = 1.6*10^-2;
    k_26 = 1*10^-4;
    k_27 = 2.3*10^-4;
    k_28 = 2.2*10^-2;
    k_29 = 2.9*10^-3;
    k_30 = 2.4*10^-3;

    V_cell = 1.4*10^-16;
    V_tot = 1*10^-3;
    alpha = 0.958/3600;

    eta = 100;
    zeta = 3*10^-10;
    
    % Nonlinear system of ODEs
    dy(1) = V_cell/V_tot*y(4)*(k_2*(y(2) - y(1)) ...
            + (k_13/k_12*(k_7 + k_28*y(3)/(y(3) + k_30/k_29)) + k_4*y(1))*((k_5*k_4)/(k_3 + k_5)*y(1) - y(1)/(k_14/k_4 + y(1))));           % A_e
    dy(2) = k_1*k_25/(k_24*k_26)*(k_27 + k_21*y(3)/(y(3) + k_23/k_22)) + k_2*(y(1) - y(2)) ...
            + k_3*k_13/(k_12*k_14)*y(1)/(y(1) + (k_3+k_5)/k_4)*(k_7 + k_28*y(3)/(y(3) + k_30/k_29)) ...
            - k_6/k_12*(k_7 + k_28*y(3)/(y(3) + k_30/k_29))*y(2);                                                                           % A_i
    dy(3) = k_6/(2*k_12)*(k_7 + k_28*y(3)/(y(3) + k_30/k_29))*y(2) - k_11*y(3)*y(5) - k_10*y(3);                                            % R_d
    dy(4) = alpha*y(4);                                                                                                                     % N                                                                                                               % N_cell
    dy(5) = k_19*k_15/k_18*y(3)/(y(3) + k_17/k_16) - k_11*y(3)*y(5) - k_20*y(5);                                                            % M
    dy(6) = eta*(k_27 + k_21*y(3)/(y(3) + k_23/k_22)) - zeta*alpha*y(4)*y(6);                                                               % G

    dy = dy';
end

%% model 2 - limited bacterial growth
function dy = GoryachevODE_logistic(~,y)

    % Known parameters  
    k_1 = 0.3; 
    k_2 = 0.14; 
    k_3 = 0.4; 
    k_4 = 0.04;             
    k_5 = 2*10^-3;
    k_6 = 3.56*10^-5;
    k_7 = 1.5*10^-2;
    k_10 = 3.3*10^-4; 
    k_11 = 8.3*10^-4;
    k_12 = 6*10^-3;
    k_13 = 1.6*10^-2;
    k_14 = 1*10^-4;
    k_15 = 1.6*10^-2;
    k_16 = 1.4*10^-2;
    k_17 = 9.26*10^-3;
    k_18 = 1.6*10^-3;
    k_19 = 1.92*10^-2;
    k_20 = 8*10^-5;
    k_21 = 1.6*10^-2;
    k_22 = 2.68*10^-2;
    k_23 = 2.2*10^-2;
    k_24 = 6*10^-3;
    k_25 = 1.6*10^-2;
    k_26 = 1*10^-4;
    k_27 = 2.3*10^-4;
    k_28 = 2.2*10^-2;
    k_29 = 2.9*10^-3;
    k_30 = 2.4*10^-3;

    V_cell = 1.4*10^-16;
    V_tot = 1*10^-3;
    alpha = 0.958/3600;
    K_max = 3852317386.5;

    eta = 100;
    zeta = 3*10^-10;
    
    % Nonlinear system of ODEs
    dy(1) = V_cell/V_tot*y(4)*(k_2*(y(2) - y(1)) ...
            + (k_13/k_12*(k_7 + k_28*y(3)/(y(3) + k_30/k_29)) + k_4*y(1))*((k_5*k_4)/(k_3 + k_5)*y(1) - y(1)/(k_14/k_4 + y(1))));                   % A_e
    dy(2) = k_1*k_25/(k_24*k_26)*(k_27 + k_21*y(3)/(y(3) + k_23/k_22)) + k_2*(y(1) - y(2)) ...
            + k_3*k_13/(k_12*k_14)*y(1)/(y(1) + (k_3+k_5)/k_4)*(k_7 + k_28*y(3)/(y(3) + k_30/k_29)) ...
            - k_6/k_12*(k_7 + k_28*y(3)/(y(3) + k_30/k_29))*y(2);                                                                                   % A_i
    dy(3) = k_6/(2*k_12)*(k_7 + k_28*y(3)/(y(3) + k_30/k_29))*y(2) - k_11*y(3)*y(5) - k_10*y(3);                                                    % R_d
    dy(4) = alpha*y(4)*(1 - y(4)/K_max);                                                                                                            % N                                                                                                               % N_cell
    dy(5) = k_19*k_15/k_18*y(3)/(y(3) + k_17/k_16) - k_11*y(3)*y(5) - k_20*y(5);                                                                    % M
    dy(6) = eta*(k_27 + k_21*y(3)/(y(3) + k_23/k_22)) - zeta*alpha*y(4)*(1 - y(4)/K_max)*y(6);                                                      % G

    dy = dy';
end