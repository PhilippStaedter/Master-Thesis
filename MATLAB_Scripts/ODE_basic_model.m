%% define all ODE models
function dy = ODE_basic_model(~,y,guess_parameters,system)
    
    % Known parameters, equal for all subsystems   
    c_sec = 2.1*10^-3;     
    A_syn = 5.2*10^-4;
    K_x = 0.17;
    gamma_ex = 2*10^-4;
    
    % rho_V = ?;
    V_cell = 6*10^-16;
    V_tot = 1*10^-3;
    mu = 0.958/3600;


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LEGEND %%%%%%%
    % 0  :   basic submodel                     %
    % 13 :   basic submodel - RsaL              %
    % 9  :   basic submodel - double LasRd      %
    % 2  :   qslA submodel                      %
    % 14 :   qslA submodel - RsaL               %
    % 10 :   qslA submodel - double LasRd       %
    % 3  :   qteE submodel                      %
    % 15 :   qteE model - RsaL                  %
    % 11  :   qteE model - double LasRd         %
    % 5  :   full model                         %
    % 16 :   full model - RsaL                  %
    % 12  :   full model - double LasRd         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

     
    if system == 0
        %% basic model
        K_max = 4330367279.4375;

        % initial guess of unknown parameter
        beta_r = guess_parameters(1);
        gamma_in = guess_parameters(2);
        k_1_1 = guess_parameters(3);
        gamma_R = guess_parameters(4);
        eta = guess_parameters(5);
        zeta = guess_parameters(6);
        beta_x = guess_parameters(7);
        beta_1 = guess_parameters(8);
        gamma_x = guess_parameters(9);
        alpha_X = guess_parameters(10);
        gamma_X = guess_parameters(11);
        gamma_r = guess_parameters(12);
        alpha_R = guess_parameters(13);
        k_1_0 = guess_parameters(14);
        k_2_0 = guess_parameters(15);
        k_2_1 = guess_parameters(16);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(7)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = mu*y(7)*(1 - y(7)/K_max);
        dy(8) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x)) - zeta*mu*y(7)*(1 - y(7)/K_max)*y(8);


    elseif system == 13
        %% basic model with extended RsaL pathway  
        K_max = 4330367279.4375;

        % initial guess of unknown parameter
        beta_r = guess_parameters(1);
        gamma_in = guess_parameters(2);
        k_1_1 = guess_parameters(3);
        gamma_R = guess_parameters(4);
        eta = guess_parameters(5);
        zeta = guess_parameters(6);
        beta_x = guess_parameters(7);
        beta_1 = guess_parameters(8);
        gamma_x = guess_parameters(9);
        alpha_X = guess_parameters(10);
        gamma_X = guess_parameters(11);
        gamma_r = guess_parameters(12);
        alpha_R = guess_parameters(13);
        k_1_0 = guess_parameters(14);
        k_2_0 = guess_parameters(15);
        k_2_1 = guess_parameters(16);

        alpha_L = guess_parameters(17);
        gamma_l = guess_parameters(18);
        beta_l = guess_parameters(19);
        beta_0 = guess_parameters(20);
        K_l = guess_parameters(21);
        gamma_L = guess_parameters(22);
        K_H = guess_parameters(23);


        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(7)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(8) + K_H)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = mu*y(7)*(1 - y(7)/K_max);
        dy(8) = alpha_L/gamma_l*(beta_l + beta_0*y(6)/(y(6) + K_l)) - gamma_L*y(8);      % RsaL protein
        dy(9) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(8) + K_H))- zeta*mu*y(7)*(1 - y(7)/K_max)*y(9);


    elseif system == 9
        %% basic model - double LasRd on lasI promotor
        K_max = 4330367279.4375;

        % initial guess of unknown parameter
        beta_r = guess_parameters(1);
        gamma_in = guess_parameters(2);
        k_1_1 = guess_parameters(3);
        gamma_R = guess_parameters(4);
        eta = guess_parameters(5);
        zeta = guess_parameters(6);
        beta_x = guess_parameters(7);
        beta_1 = guess_parameters(8);
        gamma_x = guess_parameters(9);
        alpha_X = guess_parameters(10);
        gamma_X = guess_parameters(11);
        gamma_r = guess_parameters(12);
        alpha_R = guess_parameters(13);
        k_1_0 = guess_parameters(14);
        k_2_0 = guess_parameters(15);
        k_2_1 = guess_parameters(16);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(7)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2)) ...        % double LasRd binding
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = mu*y(7)*(1 - y(7)/K_max);
        dy(8) = eta*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2)) - zeta*mu*y(7)*(1 - y(7)/K_max)*y(8);
    

    elseif system == 2
        %% qslA model
        K_max = 4189158311.3314;

        % initial guess of unknown parameter
        beta_qa = guess_parameters(1);
        gamma_qa = guess_parameters(2);
        alpha_Qa = guess_parameters(3);
        k_4_0 = guess_parameters(4);
        k_4_1 = guess_parameters(5);
        k_5 = guess_parameters(6);
        gamma_r2q2 = guess_parameters(7);
        beta_r = guess_parameters(8);
        gamma_in = guess_parameters(9);
        k_1_1 = guess_parameters(10);
        gamma_R = guess_parameters(11);
        eta = guess_parameters(12);
        zeta = guess_parameters(13);
        beta_x = guess_parameters(14);
        beta_1 = guess_parameters(15);
        gamma_x = guess_parameters(16);
        alpha_X = guess_parameters(17);
        gamma_X = guess_parameters(18);
        gamma_r = guess_parameters(19);
        alpha_R = guess_parameters(20);
        k_1_0 = guess_parameters(21);
        k_2_0 = guess_parameters(22);
        k_2_1 = guess_parameters(23);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(10)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(8);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(7).^2 + 2*k_4_1*y(8);
        dy(8) = k_4_0*y(7).^2 - k_4_1*y(8) - k_5*y(5)*y(8);
        dy(9) = k_5*y(5)*y(8) - gamma_r2q2*y(9);
        dy(10) = mu*y(10)*(1 - y(10)/K_max);
        dy(11) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x))- zeta*mu*y(10)*(1 - y(10)/K_max)*y(11);
    

    elseif system == 14
        %% qslA model with extended RsaL pathway
        K_max = 4189158311.3314;

        % initial guess of unknown parameter
        beta_qa = guess_parameters(1);
        gamma_qa = guess_parameters(2);
        alpha_Qa = guess_parameters(3);
        k_4_0 = guess_parameters(4);
        k_4_1 = guess_parameters(5);
        k_5 = guess_parameters(6);
        gamma_r2q2 = guess_parameters(7);
        beta_r = guess_parameters(8);
        gamma_in = guess_parameters(9);
        k_1_1 = guess_parameters(10);
        gamma_R = guess_parameters(11);
        eta = guess_parameters(12);
        zeta = guess_parameters(13);
        beta_x = guess_parameters(14);
        beta_1 = guess_parameters(15);
        gamma_x = guess_parameters(16);
        alpha_X = guess_parameters(17);
        gamma_X = guess_parameters(18);
        gamma_r = guess_parameters(19);
        alpha_R = guess_parameters(20);
        k_1_0 = guess_parameters(21);
        k_2_0 = guess_parameters(22);
        k_2_1 = guess_parameters(23);

        alpha_L = guess_parameters(24);
        gamma_l = guess_parameters(25);
        beta_l = guess_parameters(26);
        beta_0 = guess_parameters(27);
        K_l = guess_parameters(28);
        gamma_L = guess_parameters(29);
        K_H = guess_parameters(30);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(10)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(11) + K_H)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(8);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(7).^2 + 2*k_4_1*y(8);
        dy(8) = k_4_0*y(7).^2 - k_4_1*y(8) - k_5*y(5)*y(8);
        dy(9) = k_5*y(5)*y(8) - gamma_r2q2*y(9);
        dy(10) = mu*y(10)*(1 - y(10)/K_max);
        dy(11) = alpha_L/gamma_l*(beta_l + beta_0*y(6)/(y(6) + K_l)) - gamma_L*y(11);      % RsaL protein
        dy(12) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(11) + K_H))- zeta*mu*y(10)*(1 - y(10)/K_max)*y(12);


    elseif system == 10
        %% qslA model - double LasRd on lasI promotor
        K_max = 4189158311.3314;

        % initial guess of unknown parameter
        beta_qa = guess_parameters(1);
        gamma_qa = guess_parameters(2);
        alpha_Qa = guess_parameters(3);
        k_4_0 = guess_parameters(4);
        k_4_1 = guess_parameters(5);
        k_5 = guess_parameters(6);
        gamma_r2q2 = guess_parameters(7);
        beta_r = guess_parameters(8);
        gamma_in = guess_parameters(9);
        k_1_1 = guess_parameters(10);
        gamma_R = guess_parameters(11);
        eta = guess_parameters(12);
        zeta = guess_parameters(13);
        beta_x = guess_parameters(14);
        beta_1 = guess_parameters(15);
        gamma_x = guess_parameters(16);
        alpha_X = guess_parameters(17);
        gamma_X = guess_parameters(18);
        gamma_r = guess_parameters(19);
        alpha_R = guess_parameters(20);
        k_1_0 = guess_parameters(21);
        k_2_0 = guess_parameters(22);
        k_2_1 = guess_parameters(23);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(10)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2)) ...            % double LasRd binding
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(8);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(7).^2 + 2*k_4_1*y(8);
        dy(8) = k_4_0*y(7).^2 - k_4_1*y(8) - k_5*y(5)*y(8);
        dy(9) = k_5*y(5)*y(8) - gamma_r2q2*y(9);
        dy(10) = mu*y(10)*(1 - y(10)/K_max);
        dy(11) = eta*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2))- zeta*mu*y(10)*(1 - y(10)/K_max)*y(11);
    

    elseif system == 3
        %% qteE model
        K_max = 3852317386.5;
        
        % initial guess of unknown parameter
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_r = guess_parameters(7);
        gamma_in = guess_parameters(8);
        k_1_1 = guess_parameters(9);
        gamma_R = guess_parameters(10);
        eta = guess_parameters(11);
        zeta = guess_parameters(12);
        beta_x = guess_parameters(13);
        beta_1 = guess_parameters(14);
        gamma_x = guess_parameters(15);
        alpha_X = guess_parameters(16);
        gamma_X = guess_parameters(17);
        gamma_r = guess_parameters(18);
        alpha_R = guess_parameters(19);
        k_1_0 = guess_parameters(20);
        k_2_0 = guess_parameters(21);
        k_2_1 = guess_parameters(22);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(8)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = mu*y(8)*(1 - y(8)/K_max);
        dy(9) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x))- zeta*mu*y(8)*(1 - y(8)/K_max)*y(9);


    elseif system == 15
        %% qteE model with extended RsaL pathway
        K_max = 3852317386.5;
        
        % initial guess of unknown parameters
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_r = guess_parameters(7);
        gamma_in = guess_parameters(8);
        k_1_1 = guess_parameters(9);
        gamma_R = guess_parameters(10);
        eta = guess_parameters(11);
        zeta = guess_parameters(12);
        beta_x = guess_parameters(13);
        beta_1 = guess_parameters(14);
        gamma_x = guess_parameters(15);
        alpha_X = guess_parameters(16);
        gamma_X = guess_parameters(17);
        gamma_r = guess_parameters(18);
        alpha_R = guess_parameters(19);
        k_1_0 = guess_parameters(20);
        k_2_0 = guess_parameters(21);
        k_2_1 = guess_parameters(22);

        alpha_L = guess_parameters(23);
        gamma_l = guess_parameters(24);
        beta_l = guess_parameters(25);
        beta_0 = guess_parameters(26);
        K_l = guess_parameters(27);
        gamma_L = guess_parameters(28);
        K_H = guess_parameters(29);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(8)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(9) + K_H)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = mu*y(8)*(1 - y(8)/K_max);
        dy(9) = alpha_L/gamma_l*(beta_l + beta_0*y(6)/(y(6) + K_l)) - gamma_L*y(9);      % RsaL protein
        dy(10) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(9) + K_H))- zeta*mu*y(8)*(1 - y(8)/K_max)*y(10);
    

    elseif system == 11
        %% qteE model - double LasRd on lasI promotor
        K_max = 3852317386.5;

        % initial guess of unknown parameters
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_r = guess_parameters(7);
        gamma_in = guess_parameters(8);
        k_1_1 = guess_parameters(9);
        gamma_R = guess_parameters(10);
        eta = guess_parameters(11);
        zeta = guess_parameters(12);
        beta_x = guess_parameters(13);
        beta_1 = guess_parameters(14);
        gamma_x = guess_parameters(15);
        alpha_X = guess_parameters(16);
        gamma_X = guess_parameters(17);
        gamma_r = guess_parameters(18);
        alpha_R = guess_parameters(19);
        k_1_0 = guess_parameters(20);
        k_2_0 = guess_parameters(21);
        k_2_1 = guess_parameters(22);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(8)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...          % double LasRd binding
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = mu*y(8)*(1 - y(8)/K_max);
        dy(9) = eta*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2))- zeta*mu*y(8)*(1 - y(8)/K_max)*y(9);


    elseif system == 5
        %% full model
        K_max = 3511957545.05;

        % initial guess of unknown parameters
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_qa = guess_parameters(7);
        gamma_qa = guess_parameters(8);
        alpha_Qa = guess_parameters(9);
        k_4_0 = guess_parameters(10);
        k_4_1 = guess_parameters(11);
        k_5 = guess_parameters(12);
        gamma_r2q2 = guess_parameters(13);
        beta_r = guess_parameters(14);
        gamma_in = guess_parameters(15);
        k_1_1 = guess_parameters(16);
        gamma_R = guess_parameters(17);
        eta = guess_parameters(18);
        zeta = guess_parameters(19);
        beta_x = guess_parameters(20);
        beta_1 = guess_parameters(21);
        gamma_x = guess_parameters(22);
        alpha_X = guess_parameters(23);
        gamma_X = guess_parameters(24);
        gamma_r = guess_parameters(25);
        alpha_R = guess_parameters(26);
        k_1_0 = guess_parameters(27);
        k_2_0 = guess_parameters(28);
        k_2_1 = guess_parameters(29);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(11)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(9);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(8).^2 + 2*k_4_1*y(9);
        dy(9) = k_4_0*y(8).^2 - k_4_1*y(9) - k_5*y(5)*y(9);
        dy(10) = k_5*y(5)*y(9) - gamma_r2q2*y(10);
        dy(11) = mu*y(11)*(1 - y(11)/K_max);
        dy(12) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x))- zeta*mu*y(11)*(1 - y(11)/K_max)*y(12);
    
    elseif system == 16
        %% full model with extended RsaL pathway
        K_max = 3511957545.05;

        % initial guess of unknown parameters
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_qa = guess_parameters(7);
        gamma_qa = guess_parameters(8);
        alpha_Qa = guess_parameters(9);
        k_4_0 = guess_parameters(10);
        k_4_1 = guess_parameters(11);
        k_5 = guess_parameters(12);
        gamma_r2q2 = guess_parameters(13);
        beta_r = guess_parameters(14);
        gamma_in = guess_parameters(15);
        k_1_1 = guess_parameters(16);
        gamma_R = guess_parameters(17);
        eta = guess_parameters(18);
        zeta = guess_parameters(19);
        beta_x = guess_parameters(20);
        beta_1 = guess_parameters(21);
        gamma_x = guess_parameters(22);
        alpha_X = guess_parameters(23);
        gamma_X = guess_parameters(24);
        gamma_r = guess_parameters(25);
        alpha_R = guess_parameters(26);
        k_1_0 = guess_parameters(27);
        k_2_0 = guess_parameters(28);
        k_2_1 = guess_parameters(29);

        alpha_L = guess_parameters(30);
        gamma_l = guess_parameters(31);
        beta_l = guess_parameters(32);
        beta_0 = guess_parameters(33);
        K_l = guess_parameters(34);
        gamma_L = guess_parameters(35);
        K_H = guess_parameters(36);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(11)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(12) + K_H)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(9);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(8).^2 + 2*k_4_1*y(9);
        dy(9) = k_4_0*y(8).^2 - k_4_1*y(9) - k_5*y(5)*y(9);
        dy(10) = k_5*y(5)*y(9) - gamma_r2q2*y(10);
        dy(11) = mu*y(11)*(1 - y(11)/K_max);
        dy(12) = alpha_L/gamma_l*(beta_l + beta_0*y(6)/(y(6) + K_l)) - gamma_L*y(12);      % RsaL protein
        dy(13) = eta*(beta_x + beta_1*y(6)/(y(6) + K_x)*K_H/(y(12) + K_H))- zeta*mu*y(11)*(1 - y(11)/K_max)*y(13);


    elseif system == 12
        %% full model - double LasRd on lasI promotor
        K_max = 3511957545.05;

        % initial guess of unknown parameters
        beta_qe = guess_parameters(1);
        beta_2 = guess_parameters(2);
        K_qe = guess_parameters(3);
        gamma_qe = guess_parameters(4);
        alpha_Qe = guess_parameters(5);
        k_3 = guess_parameters(6);
        beta_qa = guess_parameters(7);
        gamma_qa = guess_parameters(8);
        alpha_Qa = guess_parameters(9);
        k_4_0 = guess_parameters(10);
        k_4_1 = guess_parameters(11);
        k_5 = guess_parameters(12);
        gamma_r2q2 = guess_parameters(13);
        beta_r = guess_parameters(14);
        gamma_in = guess_parameters(15);
        k_1_1 = guess_parameters(16);
        gamma_R = guess_parameters(17);
        eta = guess_parameters(18);
        zeta = guess_parameters(19);
        beta_x = guess_parameters(20);
        beta_1 = guess_parameters(21);
        gamma_x = guess_parameters(22);
        alpha_X = guess_parameters(23);
        gamma_X = guess_parameters(24);
        gamma_r = guess_parameters(25);
        alpha_R = guess_parameters(26);
        k_1_0 = guess_parameters(27);
        k_2_0 = guess_parameters(28);
        k_2_1 = guess_parameters(29);

        % Nonlinear system of ODEs
        dy(1) = V_cell/V_tot*y(11)*c_sec*(y(2) - y(1)) - gamma_ex*y(1);
        dy(2) = c_sec*(y(1) - y(2)) + A_syn*y(3) - gamma_in*y(2) - k_1_0*y(4)*y(2) ...          % double LasRd binding
                + k_1_1*y(5);
        dy(3) = alpha_X/gamma_x*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2)) ...
                - gamma_X*y(3);
        dy(4) = alpha_R*beta_r/gamma_r - gamma_R*y(4) - k_1_0*y(4)*y(2) ...
                + k_1_1*y(5) - k_3*y(4)*y(7);
        dy(5) = - k_1_1*y(5) + k_1_0*y(4)*y(2) - 2*k_2_0*y(5).^2 ...
                + 2*k_2_1*y(6) - k_5*y(5)*y(9);
        dy(6) = k_2_0*y(5).^2 - k_2_1*y(6);
        dy(7) = alpha_Qe/gamma_qe*(beta_qe + beta_2*y(6)/(y(6) + K_qe)) - k_3*y(4)*y(7);
        dy(8) = alpha_Qa*beta_qa/gamma_qa - 2*k_4_0*y(8).^2 + 2*k_4_1*y(9);
        dy(9) = k_4_0*y(8).^2 - k_4_1*y(9) - k_5*y(5)*y(9);
        dy(10) = k_5*y(5)*y(9) - gamma_r2q2*y(10);
        dy(11) = mu*y(11)*(1 - y(11)/K_max);
        dy(12) = eta*(beta_x + beta_1*y(6).^2/(y(6).^2 + K_x.^2))- zeta*mu*y(11)*(1 - y(11)/K_max)*y(12);
    end
        
    dy = dy';
end
