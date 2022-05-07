%% Estimate K_max from logistic function for OD experimental data
clc;

%% Parameter Estimation & Optimization
% experimental data
sigma_data = 0.015;
load('experimental_data.mat');
    
global OD_data
global t_data

figure
for iModel = 1 : 4
    % choose correct data
    if iModel == 1
        OD_data = 10^9*experimental_data.qslA_qteE.WT_1(:,2);
        t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1);
    elseif iModel == 3
        OD_data = 10^9*experimental_data.qteE.WT_3(:,2);
        t_data = 3600*experimental_data.qteE.WT_3(:,1);
    elseif iModel == 2
        OD_data = 10^9*experimental_data.qslA.WT_3(:,2);
        t_data = 3600*experimental_data.qslA.WT_3(:,1);
    elseif iModel == 4
        OD_data = 10^9*experimental_data.WT.WT_1(:,2);
        t_data = 3600*experimental_data.WT.WT_1(:,1);
    end

    % parameter initial guess
    K_max_guess = 1;
    
    % show initial objective
    disp(['Initial Objective: ' num2str(objective_function(K_max_guess))])
    
    % optimize with fminsearch
    options = optimset('Display','iter', 'MaxFunEvals', 1000);
    [optimized_parameters,fval] = fminsearch(@objective_function,K_max_guess,options);
    
    % show final objective
    disp(['Final Objective: ' num2str(objective_function(optimized_parameters))])
    disp(['guessed_parameters: ' num2str(K_max_guess)])
    disp(['optimized_parameters: ' num2str(optimized_parameters)])
    
    if iModel == 1
        subplot('Position',[0.1, 0.6, 0.35, 0.35])    
    elseif iModel == 2
        subplot('Position',[0.6, 0.6, 0.35, 0.35])
    elseif iModel == 3
        subplot('Position',[0.1, 0.1, 0.35, 0.35])
    elseif iModel == 4
        subplot('Position',[0.6, 0.1, 0.35, 0.35])
    end

    [t,y] = simulate(optimized_parameters);
    plot(t,y,'color',[0, 0.21, 0.46], 'LineWidth', 2.0)
    hold on
    plot(t_data, OD_data, 'o', 'color', [0.96, 0.41, 0], 'LineWidth', 1.5)

    % process numbers for annotation object
    exponent = floor(log10(optimized_parameters));
    coefficient = optimized_parameters*10^(-exponent);

    if iModel == 1
        text(-1.5*10^4, 5*10^9, 'a', 'FontSize', 18, 'FontWeight', 'bold')
        annotation('textbox',[0.12, 0.88, 0.05, 0.05],'String',...
                        {['K_{P-basic}: ', strcat(num2str(round(coefficient,2)), '*10^{', num2str(round(exponent,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 12)
    elseif iModel == 2
        text(-1.5*10^4, 5*10^9, 'b', 'FontSize', 18, 'FontWeight', 'bold')
        annotation('textbox',[0.62, 0.88, 0.05, 0.05],'String',...
                        {['K_{P-qteE}: ', strcat(num2str(round(coefficient,2)), '*10^{', num2str(round(exponent,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 12)
    elseif iModel == 3
        text(-1.5*10^4, 5*10^9, 'c', 'FontSize', 18, 'FontWeight', 'bold')
        annotation('textbox',[0.12, 0.38, 0.05, 0.05],'String',...
                        {['K_{P-qslA}: ', strcat(num2str(round(coefficient,2)), '*10^{', num2str(round(exponent,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 12)
    elseif iModel == 4
        text(-1.5*10^4, 5*10^9, 'd', 'FontSize', 18, 'FontWeight', 'bold')
        annotation('textbox',[0.62, 0.38, 0.05, 0.05],'String',...
                        {['K_{P-full}: ', strcat(num2str(round(coefficient,2)), '*10^{', num2str(round(exponent,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 12)
    end

    legend('GFP(t) [\mumol/l] ',...
            'Data (GFP)', 'Location', [0.5 0.49 0.05 0.05], 'Fontsize', 12)
    xlabel('Time [s]', 'FontSize', 12)
    ylabel('OD [cells/ml]', 'FontSize', 12)
    axis([0, 100000, 0, 5*10^9])
end

% save figure as pdf
h=gcf;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
print(gcf, '-dpdf', 'Figure_4_1.pdf')


%% objective function
function obj = objective_function(guess_parameters)

    global OD_data
    global t_data

    [t,y] = simulate(guess_parameters(1));
    sigma_data = 0.015;
    t_index = ismember(t,t_data);
    obj = 1/2*sum(sum(((OD_data(:,:) - y(t_index,1))./sigma_data).^2));
end


%% numerical integration of the system of ODEs
function [t,y] = simulate(guess_parameters)

    time_range = linspace(0,100000,1001);
    y0 = 5100;
    [t,y] = ode15s(@(t,x)PA2(t,x,guess_parameters),time_range,y0);
end


%% define ODE model (condensed)
function dy = PA2(~,y,guess_parameters)

    % initial guess of unknown parameter
    K_max = guess_parameters(1);
    
    % Known parameters
    mu = 0.958/3600;
    
    % Nonlinear system of ODEs
    dy(1) = mu*y(1)*(1 - y(1)/K_max);
    
    dy = dy';
end
