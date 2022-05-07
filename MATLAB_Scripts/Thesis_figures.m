%% all important figures for the main manuscript of the Master thesis
clc;

iFigure = 12;
gca_interface = 'off';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LEGEND %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1  :   Figure 2.1 - Time Scale Analysis                          %
% 2  :   Figure 2.2 - Relaxation Oscillations                      %
% 3  :   Figure 3.1 - Genetic Switch Basic submodel                %
% 4  :   Figure 3.2 - Genetic Switch QslA submodel                 %
% 5  :   Figure 4.1 - Bacterial growth Saturation effect           %
% 6  :   Figure 4.2 - Multistart Parameter Estimation              %
% 7  :   Figure 4.3 - Manual Start Parameter Estimation            %
% 8  :   Figure 4.4 - double LasRd binding extension               %
% 9  :   Figure 4.5 - RsaL extension                               %
% 10 :   Figure 4.6 - Goryachev model                              %
% 11 :   Figure 4.7 - Manual Start no outlier Parameter Estimation %
% 12 :   Figure 4.8 - Concentration Trajectories                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Figure 2.1
if iFigure == 1
    figure
    % first subplot
    subplot('Position',[0.04, 0.1, 0.27, 0.8]) 
    fimplicit(@(a,b) b - 1/2*cos(0.6*a + 0.5), [-5.5,5.5,-3,3], 'color', [0, 0.21, 0.46], 'LineWidth', 2)
    hold on
    line([-6 -6], [-4 4], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6.5 6], [-3 -3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.1, 4.3, 'y', 'FontSize',16)
    text(6.15, -3+1*10^-2, 'x', 'FontSize',16)
    
    % arrows at the end
    patch([5.5,5.5,6], [-2.85,-3.15,-3], 'black')
    patch([-6.3,-5.7,-6], [3.65,3.65,4], 'black')

    % fast system
    line([-5 -5], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    line([-3 -3], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    line([-1 -1], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    line([1 1], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    line([3 3], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    text(3.8, 0, 'f(x(t),y(t)) = 0', 'FontSize', 14)
    plot(-5, 1/2*cos(0.6*(-5) + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    plot(-3, 1/2*cos(0.6*(-3) + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    plot(-1, 1/2*cos(0.6*(-1) + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    plot(1, 1/2*cos(0.6*1 + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    plot(3, 1/2*cos(0.6*3 + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    text(-1.5, 3.25, 'fast', 'FontSize', 14)
    text(-1.5, -2.75, 'fast', 'FontSize', 14)
    % below
    patch([-5.3,-4.7,-5], [-2.25,-2.25,-1.95], [0.96, 0.41, 0])
    patch([-5.3,-4.7,-5], [-1,-1,-0.7], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [-1.85,-1.85,-1.55], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [-0.6,-0.6,-0.3], [0.96, 0.41, 0])
    patch([-1.3,-0.7,-1], [-1.45,-1.45,-1.15], [0.96, 0.41, 0])
    patch([-1.3,-0.7,-1], [-0.2,-0.2,0.1], [0.96, 0.41, 0])
    patch([1.3,0.7,1], [-1.85,-1.85,-1.55], [0.96, 0.41, 0])
    patch([1.3,0.7,1], [-0.6,-0.6,-0.3], [0.96, 0.41, 0])
    patch([3.3,2.7,3], [-2.25,-2.25,-1.95], [0.96, 0.41, 0])
    patch([3.3,2.7,3], [-1,-1,-0.7], [0.96, 0.41, 0])
    % above
    patch([-5.3,-4.7,-5], [1.45,1.45,1.15], [0.96, 0.41, 0])
    patch([-5.3,-4.7,-5], [0.2,0.2,-0.1], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [2.15,2.15,1.85], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [0.9,0.9,0.6], [0.96, 0.41, 0])
    patch([-1.3,-0.7,-1], [2.35,2.35,2.05], [0.96, 0.41, 0])
    patch([-1.3,-0.7,-1], [1.1,1.1,0.8], [0.96, 0.41, 0])
    patch([1.3,0.7,1], [2.15,2.15,1.85], [0.96, 0.41, 0])
    patch([1.3,0.7,1], [0.9,0.9,0.6], [0.96, 0.41, 0])
    patch([3.3,2.7,3], [1.45,1.45,1.15], [0.96, 0.41, 0])
    patch([3.3,2.7,3], [0.2,0.2,-0.1], [0.96, 0.41, 0])
    
    % axes properties
    axis([-6.5, 6, -4, 4])
    set(gca,'visible',gca_interface)
    set(gcf, 'WindowState', 'maximized');

    % labl of first subplot
    text(-7.85, 4, 'a', 'FontSize', 18, 'FontWeight', 'bold')


    % second subplot
    subplot('Position',[0.36, 0.1, 0.27, 0.8])
    fimplicit(@(a,b) b - 1/2*cos(0.6*a + 0.5), [-5.5,5.5,-3,3], 'color', [0, 0.21, 0.46], 'LineWidth', 2)
    hold on
    line([-6 -6], [-4 4], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6.5 6], [-3 -3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.1, 4.3, 'y', 'FontSize',16)
    text(6.15, -3+1*10^-2, 'x', 'FontSize',16)
    
    % arrows at the end
    patch([5.5,5.5,6], [-2.85,-3.15,-3], 'black')
    patch([-6.3,-5.7,-6], [3.65,3.65,4], 'black')

    % slow system
    text(3.8, 0, 'f(x(t),y(t)) = 0', 'FontSize', 14)
    patch([-3.98,-3.66,-3.3], [0,-0.25,0.04], [0, 0.21, 0.46]);
    patch([-5/6-0.3,-5/6-0.3,-5/6+0.3], [0.35,0.65,0.5], [0, 0.21, 0.46]);
    patch([1.8,2.12,2.48], [-0.2,0.05,-0.19], [0, 0.21, 0.46]);
    text(4, -0.75, 'slow', 'FontSize', 14)

    % axes properties
    axis([-6.5, 6, -4, 4])
    set(gca,'visible',gca_interface)
    set(gcf, 'WindowState', 'maximized');

    % labl of second subplot
    text(-7.85, 4, 'b', 'FontSize', 18, 'FontWeight', 'bold')


    % third subplot
    subplot('Position',[0.68, 0.1, 0.27, 0.8])
    fimplicit(@(a,b) b - 1/2*cos(0.6*a + 0.5), [-5.5,5.5,-3,3], 'color', [0, 0.21, 0.46], 'LineWidth', 2)
    hold on
    line([-6 -6], [-4 4], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6.5 6], [-3 -3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.1, 4.3, 'y', 'FontSize',16)
    text(6.15, -3+1*10^-2, 'x', 'FontSize',16)
    
    % arrows at the end
    patch([5.5,5.5,6], [-2.85,-3.15,-3], 'black')
    patch([-6.3,-5.7,-6], [3.65,3.65,4], 'black')
    
    % fast system
    line([-3 -3], [-2.5 3], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    patch([-3.3,-2.7,-3], [-1.85,-1.85,-1.55], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [-0.6,-0.6,-0.3], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [2.15,2.15,1.85], [0.96, 0.41, 0])
    patch([-3.3,-2.7,-3], [0.9,0.9,0.6], [0.96, 0.41, 0])
    plot(-3, 1/2*cos(0.6*(-3) + 0.5), 'color', [0.96, 0.41, 0], 'Marker', 'o', 'MarkerFaceColor', [0.96, 0.41, 0], 'LineWidth', 1)
    text(-3.5, 3.25, 'fast', 'FontSize', 14)

    % point (x^*,y^*)
    plot(-2.5, 2.5, 'color', 'black', 'Marker', 'o', 'MarkerFaceColor', 'black', 'LineWidth', 1)
    fimplicit(@(c,d) d - 2*(c + 1.5)^2 - 0.45, [-2.48, -1.55 , 0.45, 2.5], 'color', 'black', 'LineWidth', 2)
    text(-2.3, 2.7, '$(x^*,y^*)$', 'FontSize', 14, 'interpreter', 'latex')
    patch([-2.51,-1.89,-2.12], [1.47,1.52,1.22], 'black');

    % slow system
    text(3.8, 0, 'f(x(t),y(t)) = 0', 'FontSize', 14)
    patch([-3.98,-3.66,-3.3], [0,-0.25,0.04], [0, 0.21, 0.46]);
    patch([-5/6-0.3,-5/6-0.3,-5/6+0.3], [0.35,0.65,0.5], [0, 0.21, 0.46]);
    patch([1.8,2.12,2.48], [-0.2,0.05,-0.19], [0, 0.21, 0.46]);
    text(4, -0.75, 'slow', 'FontSize', 14)

    % axes properties
    axis([-6.5, 6, -4, 4])
    set(gca,'visible',gca_interface)
    set(gcf, 'WindowState', 'maximized');

    % labl of second subplot
    text(-7.85, 4, 'c', 'FontSize', 18, 'FontWeight', 'bold')

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_2_1.pdf')


%% Figure 2.2
elseif iFigure == 2
    figure
    fimplicit(@(a,b) -b^3 + 4*b - a, [-5.5,5.5,-3,3], 'color', [0, 0.21, 0.46], 'LineWidth', 2)
    hold on
    line([-6 -6], [-4 4], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6.5 6], [-3 -3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.05, 4.3, 'y', 'FontSize',16)
    text(6.15, -3+1*10^-2, 'x', 'FontSize',16)
    
    % arrows at the end
    patch([5.75,5.75,6], [-2.85,-3.15,-3], 'black')
    patch([-6.15,-5.85,-6], [3.65,3.65,4], 'black')
    
    % draw markers for intersection points
    % middle part
    patch([0.83,0.88,1.05], [0.33,0.08,0.27], [0, 0.21, 0.46]);
    patch([2.23,2.28,2.45], [0.75,0.5,0.69], [0, 0.21, 0.46]);
    patch([-0.83,-0.88,-1.05], [-0.33,-0.08,-0.27], [0, 0.21, 0.46]);
    patch([-2.23,-2.28,-2.45], [-0.75,-0.5,-0.69], [0, 0.21, 0.46]);
    % upper part
    patch([-4.56,-4.55,-4.34], [2.3,2.55,2.41], [0, 0.21, 0.46]);
    patch([-1.79,-1.78,-1.57], [2.07,2.32,2.18], [0, 0.21, 0.46]);
    patch([-0.13,-0.11,0.11], [1.88,2.13,1.99], [0, 0.21, 0.46]);
    patch([1.55,1.57,1.78], [1.62,1.87,1.73], [0, 0.21, 0.46]);
    % lower part
    patch([4.56,4.55,4.34], [-2.3,-2.55,-2.41], [0, 0.21, 0.46]);
    patch([1.79,1.78,1.57], [-2.07,-2.32,-2.18], [0, 0.21, 0.46]);
    patch([0.13,0.11,-0.11], [-1.88,-2.13,-1.99], [0, 0.21, 0.46]);
    patch([-1.55,-1.57,-1.78], [-1.62,-1.87,-1.73], [0, 0.21, 0.46]);

    % fast system
    line([-3.1 -3.1], [-1.15 2.35], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    line([3.1 3.1], [-2.35 1.15], 'color', [0.96, 0.41, 0], 'Linestyle', '--', 'LineWidth', 2)
    text(-4, 0.6, 'fast', 'FontSize', 14)
    text(3.5, -0.6, 'fast', 'FontSize', 14)
    patch([-3.2,-3,-3.1], [-0.25,-0.25,-0], [0.96, 0.41, 0])
    patch([-3.2,-3,-3.1], [1.15,1.15,1.4], [0.96, 0.41, 0])
    patch([3,3.2,3.1], [0.25,0.25,0], [0.96, 0.41, 0])
    patch([3,3.2,3.1], [-1.25,-1.25,-1.5], [0.96, 0.41, 0])

    % slow system
    plot(0, 0, 'color', [0, 0.21, 0.46], 'Marker', 'x', 'MarkerFaceColor', [0, 0.21, 0.46], 'LineWidth', 0.1)
    text(-1, 2.5, 'slow', 'FontSize', 14)
    text(0.8, -2.5, 'slow', 'FontSize', 14)
    text(-5.35, 2.7, 'ON', 'FontSize', 14)
    text(5, -2.7, 'OFF', 'FontSize', 14)
    plot(-4, 3.5, 'color', 'black', 'Marker', 'o', 'MarkerFaceColor', 'black', 'LineWidth', 1)
    fimplicit(@(c,d) d - 4.5*(c + 3.5)^2 - 2.35, [-4, -3.5 , 2.35, 3.35], 'color', 'black', 'LineWidth', 2)
    text(-3.8, 3.7, '$(x^*,y^*)$', 'FontSize', 14, 'interpreter', 'latex')
    patch([-3.98,-3.77,-3.82], [2.95,3.03,2.79], 'black');
    text(-0.5, 0.5, 'Hysteresis', 'FontSize', 16, 'Rotation',-45)

    % bistable region
    text(-0.9,-3.2,'Bistable region', 'FontSize', 16)
    line([-3.1 -3.1], [-3+1*10^-1 -3-1*10^-1], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([3.1 3.1], [-3+1*10^-1 -3-1*10^-1], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    
    % axes properties
    axis([-6.5, 6, -4, 4])
    set(gca,'visible',gca_interface)
    set(gcf, 'WindowState', 'maximized');

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_2_2.pdf')


%% Figure 3.1
elseif iFigure == 3
    figure
    subplot(1,2,1)
    x = linspace(0,10,1000);
    semilogx(x, x.^2./(x.^2 + 0.025),'black')
    hold on
    semilogx(exp(x-5), x - 0.72, '-.', 'Color', 'black')
    semilogx(exp(x-5), 0.3*x - 0.44, '--', 'Color', 'black')
    semilogx(exp(x-5), 0.2*x - 0.4, ':', 'Color', 'black')

    % coordinate system
    line([10^-2 10^-2], [-0.4 1.2], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([8*10^-3 10^1], [0 0], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(9*10^-3, 1.23,'f,g', 'FontSize',10)
    text(12, -1*10^-3,'S_{i}', 'FontSize',10)

    % arrows at the end
    patch([9,9,11], [0.02,-0.02,0], 'black')
    patch([0.009,0.011,10^-2], [1.16,1.16,1.2], 'black')

    % draw markers for intersection points
    line([3.4*10^-2 3.4*10^-2], [1*10^-2 -1*10^-2], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(3.4*10^-2,-0.05,'S_{i}^{(1)}', 'FontSize',10)
    line([1.6*10^-1 1.6*10^-1], [1*10^-2 -1*10^-2], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(1.6*10^-1,-0.05,'S_{i}^{(2)}', 'FontSize',10)
    line([7*10^-1 7*10^-1], [1*10^-2 -1*10^-2], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(7*10^-1,-0.05,'S_{i}^{(3)}', 'FontSize',10)

    % label functions
    text(11, 1, 'g', 'FontSize',10)
    text(11, 1.1, 'f(m_3)', 'FontSize',10)
    text(1.5, 1.23, 'f(m_2)', 'FontSize',10)
    text(4.3*10^-2, 1.23, 'f(m_1)', 'FontSize',10)
    
    % axes properties
    axis([7*10^-3, 11, -0.4, 1.2])
    set(gca,'visible',gca_interface)

    % labl of first subplot
    text(4*10^-3, 1.23, 'a', 'FontSize', 18, 'FontWeight', 'bold')
    
    subplot(1,2,2)
    fimplicit(@(a,b) -b^3 + 4*b - a, [-5.5,5.5,-3,3], '-k')
    hold on
    line([-6 -6], [-5 3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6.5 6], [-3 -3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.2, 3.15,'S_i', 'FontSize',10)
    text(6.2, -3-1*10^-3,'m', 'FontSize',10)

    % arrows at the end
    patch([5.7,5.7,6], [-2.9,-3.1,-3], 'black')
    patch([-6.2,-5.8,-6], [2.8,2.8,3], 'black')

    % draw markers for intersection points
    plot(0, 2, 'Color', 'black', 'Marker', 'x', 'LineWidth', 1)
    text(0.1,2.2,'S_{i}^{(3)}', 'FontSize',10)
    plot(0, 0, 'Color', 'black', 'Marker', 'x', 'LineWidth', 1)
    text(0.2,-0.2,'S_{i}^{(2)}', 'FontSize',10)
    plot(0, -2, 'Color', 'black', 'Marker', 'x', 'LineWidth', 1)
    text(0.1,-1.8,'S_{i}^{(1)}', 'FontSize',10)

    % bistable region
    text(-1.2,-3.2,'Bistable region', 'FontSize',10)
    line([-3.1 -3.1], [-3 -1.15], 'Color', 'black', 'Linestyle', '--', 'LineWidth', 1)
    line([3.1 3.1], [-3 1.15], 'Color', 'black', 'Linestyle', '--', 'LineWidth', 1)

    % axes properties
    axis([-6.5, 6, -5, 3])
    set(gca,'visible',gca_interface)

    % labl of second subplot
    text(-7.7, 3.15, 'b', 'FontSize', 18, 'FontWeight', 'bold')

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_3_1.pdf')


%% Figure 3.2
elseif iFigure == 4
    figure
    subplot(2,3,[1 4])
    x = linspace(0,30,1000);
    plot(x, (x-3).^2./((x-3).^2 + 9),'black')
    hold on
    plot(x, 0.01*x + 1, '-.', 'Color', 'black')
    plot(x, 0.01*x + 0.75, '--', 'Color', 'black')
    plot(x, 0.03*x + 0.25, ':', 'Color', 'black')
    plot(x, 0.025*x + 0.5, '--', 'Color', 'black')
    plot(x, 0.08*x - 0.2, '-.', 'Color', 'black')

    % coordinate system
    line([0 0], [-1.5 1.2], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-0.5 30], [0 0], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-0.3, 1.25, 'f,g', 'FontSize', 10)
    text(30.2, -0.005, 'S_i', 'FontSize', 10)

    % label functions
    text(30.5, 1, 'g', 'FontSize',10)
    text(13, 1.25, 'f(m_5,u_5)', 'FontSize',10)
    text(27, 1.25, 'f(m_4,u_4)', 'FontSize',10)    
    text(30.5, 1.18, 'f(m_3,u_3)', 'FontSize',10)
    text(30.5, 1.08, 'f(m_2,u_2)', 'FontSize',10)
    text(20, 1.25, 'f(m_1,u_1)', 'FontSize',10)

    % 1, e^2/(e^2+d), t*, e/c*
    line([-0.3 0.3], [1 1], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-1.5, 1, '1', 'FontSize', 12,'FontWeight', 'normal')
    line([-0.3 0.3], [0.5 0.5], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-4, 0.5, '$\frac{e^2}{e^2 + d}$', 'Interpreter','latex', 'FontSize', 12, 'FontWeight', 'bold')
    line([3 3], [-0.01 0.01], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(3,-0.05,'$\frac{e}{c}$', 'Interpreter','latex', 'FontSize', 12, 'FontWeight', 'bold')

    % arrows at the end
    patch([28.7,28.7,30], [-0.02,0.02,0], 'black')
    patch([-0.5,0.5,0], [1.15,1.15,1.2], 'black')

    % axes properties
    axis([-0.55, 30, -0.3, 1.2])
    set(gca,'visible',gca_interface)

    % labl of first subplot
    text(-5, 1.215, 'a', 'FontSize', 18, 'FontWeight', 'bold')

    subplot(2,3,2)
    fimplicit(@(a,b) -b^2 - a, [-6,6,-3,3], '-k')
    hold on
    line([-6 -6], [-6 3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6 6], [-6 -6], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.2, 3.5, 'S_i', 'FontSize', 10)
    text(3.2, -6-1*10^-3, 'm_2', 'FontSize', 10)

    % arrows at the end
    patch([2.7,2.7,3], [-5.8,-6.2,-6], 'black')
    patch([-6.2,-5.8,-6], [2.6,2.6,3], 'black')

    % axes properties
    axis([-7, 3, -6.2, 3])
    set(gca,'visible',gca_interface)

    % labl of third subplot
    text(-7.7, 3.15, 'b', 'FontSize', 18, 'FontWeight', 'bold')

    subplot(2,3,3)
    fimplicit(@(a,b) -b^2 - a, [-6,6,-3,3], '-k')
    hold on
    fimplicit(@(a,b) b + 5, [-6,2,-6,3], '-k')
    line([-6 -6], [-6 3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6 6], [-6 -6], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.2, 3.5, 'S_i', 'FontSize', 10)
    text(3.2, -6-1*10^-3, 'm_3', 'FontSize', 10)

    % arrows at the end
    patch([2.7,2.7,3], [-5.8,-6.2,-6], 'black')
    patch([-6.2,-5.8,-6], [2.6,2.6,3], 'black')

    % axes properties
    axis([-7, 3, -6.2, 3])
    set(gca,'visible',gca_interface)

    % labl of third subplot
    text(-7.7, 3.15, 'c', 'FontSize', 18, 'FontWeight', 'bold')

    subplot(2,3,5)
    fimplicit(@(a,b) -b^2 - a, [-6,6,-3,3], '-k')
    hold on
    fimplicit(@(a,b) b + 1/4*a + 9/2, [-6,2,-6,3], '-k')
    line([-6 -6], [-6 3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6 6], [-6 -6], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.2, 3.5, 'S_i', 'FontSize', 10)
    text(3.2, -6-1*10^-3, 'm_4', 'FontSize', 10)

    % arrows at the end
    patch([2.7,2.7,3], [-5.8,-6.2,-6], 'black')
    patch([-6.2,-5.8,-6], [2.6,2.6,3], 'black')

    % axes properties
    axis([-7, 3, -6.2, 3])
    set(gca,'visible',gca_interface)

    % labl of third subplot
    text(-7.7, 3.15, 'd', 'FontSize', 18, 'FontWeight', 'bold')

    subplot(2,3,6)
    fimplicit(@(a,b) 0.3*(-(b-0.5)^3 - 5*(b-0.5)^2) - a, [-6,6,-6,6], '-k')
    hold on
    line([-6 -6], [-6 3], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-6 6], [-6 -6], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    text(-6.2, 3.5, 'S_i', 'FontSize', 10)
    text(3.2, -6-1*10^-3, 'm_5', 'FontSize', 10)

    % arrows at the end
    patch([2.7,2.7,3], [-5.8,-6.2,-6], 'black')
    patch([-6.2,-5.8,-6], [2.6,2.6,3], 'black')

    % bistable region
    text(-4.25,-6.7,'Bistable region', 'FontSize',10)
    line([-5.5 -5.5], [-6 -3], 'Color', 'black', 'Linestyle', '--', 'LineWidth', 1)
    line([0 0], [-6 0.5], 'Color', 'black', 'Linestyle', '--', 'LineWidth', 1)

    % axes properties
    axis([-7, 3, -6.2, 3])
    set(gca,'visible',gca_interface)

    % labl of third subplot
    text(-7.7, 3.15, 'e', 'FontSize', 18, 'FontWeight', 'bold')

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_3_2.pdf')
    

%% Figure 4.1
elseif iFigure == 5
    %% see script 'PES_OD_Kmax.m' %%


%% Figure 4.2
elseif iFigure == 6
    load('basic_model_6ODE_PES.mat')
    load('experimental_data.mat');
    y_data = experimental_data.qslA_qteE.WT_1(:,3);
    t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1) - 600;
    n_starts = 100;

    subplot(1,2,1)
    colororder([0 0 1; 1 0 0; 0.4660 0.6740 0.1880])
    plot(1:n_starts,sort(basic_model_6ODE_PES.objective_function_value),'-sr','MarkerSize',5,'MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6])
    xlabel('Ordered optimizer run', 'FontSize', 12)
    ylabel('Objective function value', 'FontSize', 12)
    legend('parameter estimation value', 'Location', 'northwest', 'FontSize', 12)
    axis([0, n_starts + 1, 7*10^11, 7*10^12])
    set(gca, 'YScale', 'log')
    text(-15, 7*10^12, 'a', 'FontSize', 18, 'FontWeight', 'bold')
    
    subplot(1,2,2)
    time_range = linspace(0,100000,1001);
    [out1,idx] = sort(basic_model_6ODE_PES.objective_function_value);
    for iStart = 1 : n_starts
        optimal_parameters = basic_model_6ODE_PES.optimal_parameter_values(iStart,:);
        y0 = [0, 0, optimal_parameters(10)/optimal_parameters(11)*optimal_parameters(7)/optimal_parameters(9),...
              optimal_parameters(13)/optimal_parameters(12)*optimal_parameters(1)/optimal_parameters(4), 0, 0, 5100, 1*10^-5];
        [t,y] = ode15s(@(t,x)ODE_basic_model(t,x,optimal_parameters([1:length(optimal_parameters)]),0),time_range,y0);
            
        % mark the top three
        if iStart == idx(1)
            first = semilogy(t,y(:,8), 'color', [217/255,95/255,2/255,1], 'LineWidth', 2.0);
        elseif iStart == idx(2)
            second = semilogy(t,y(:,8), 'color', [27/255,158/255,119/255,1], 'LineWidth', 2.0);
        elseif iStart == idx(3)
            third = semilogy(t,y(:,8), 'color', [117/255,112/255,179/255,1], 'LineWidth', 2.0);
        else
            plot(t,y(:,8),'Color',[0,0,0,0.2])
        end
        hold on
    end

    % highlight the top three
    uistack(third,'top')
    uistack(second,'top')
    uistack(first,'top')

    % plot everything else
    semilogy(t_data,y_data,'o', 'color', [0.96, 0.41, 0, 1], 'LineWidth', 1.5)
    xlabel('Time [s]', 'FontSize', 12)
    ylabel('Concentration [\mumol/l]', 'FontSize', 12)
    axis([0, 100000, 0, 30000])
    f=get(gca,'Children');
    legend([f(2),f(3),f(4),f(1)],'best estimate','second best estimate','third best estimate','Data (GFP)',...
            'Location', [0.85 0.2 0.1 0.1], 'FontSize', 12)
    text(-1.5*10^4, 3*10^4, 'b', 'FontSize', 18, 'FontWeight', 'bold')
    
    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_2.pdf')


%% Figure 4.3
elseif iFigure == 7
    % experimental data
    sigma_data = 0.015;
    load('experimental_data.mat');
    n_starts = 1;

    global y_data
    global t_data
    global ODE_system
    global GFP_equation_number
    global y0
    
    % define parameter constraints
    A = [];
    B = [];
    Aeq = [];
    Beq = [];
    NONLCON = [];

    figure
    for iModel = 1 : 4
        % choose correct data
        if iModel == 1
            y_data = experimental_data.qslA_qteE.WT_1(:,3);
            t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1) - 600;
            ODE_system = 0;
            GFP_equation_number = 8;
            
            LB = [0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(10)/parameter_guess_matrix(11)*parameter_guess_matrix(7)/parameter_guess_matrix(9),...
                      parameter_guess_matrix(13)/parameter_guess_matrix(12)*parameter_guess_matrix(1)/parameter_guess_matrix(4), 0, 0, 5100, 1*10^-5];

        elseif iModel == 3
            y_data = experimental_data.qteE.WT_3(:,3);
            t_data = 3600*experimental_data.qteE.WT_3(:,1) - 600;
            ODE_system = 2;
            GFP_equation_number = 11;

            LB = [0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(17)/parameter_guess_matrix(18)*parameter_guess_matrix(14)/parameter_guess_matrix(16),...
                      parameter_guess_matrix(20)/parameter_guess_matrix(19)*parameter_guess_matrix(8)/parameter_guess_matrix(11), 0, 0, ...
                      sqrt(parameter_guess_matrix(3)*parameter_guess_matrix(1)/(2*parameter_guess_matrix(4)*parameter_guess_matrix(2))), 0, 0, 5100, 1*10^-5];

        elseif iModel == 2
            y_data = experimental_data.qslA.WT_3(:,3);
            t_data = 3600*experimental_data.qslA.WT_3(:,1) - 600;
            ODE_system = 3;
            GFP_equation_number = 9;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, ...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(16)/parameter_guess_matrix(17)*parameter_guess_matrix(13)/parameter_guess_matrix(15),...
                      parameter_guess_matrix(19)/parameter_guess_matrix(10)*parameter_guess_matrix(7)/parameter_guess_matrix(18), 0, 0, ...
                      parameter_guess_matrix(10)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(19)*parameter_guess_matrix(7)*...
                      parameter_guess_matrix(4))/(parameter_guess_matrix(18)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
                      5100, 1*10^-5];

        elseif iModel == 4
            y_data = experimental_data.WT.WT_1(:,3);
            t_data = 3600*experimental_data.WT.WT_1(:,1) - 600;
            ODE_system = 5;
            GFP_equation_number = 12;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3,...
                  0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf,...
                  0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4, -inf];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1,...
                  4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf,...
                  4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4, inf];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                          0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                          2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                          1*10^-4];
            y0 = [0, 0, 0.0043, 0.0146, 0, 0, 0.0012, 0.0052, 0, 0, 5100, 1*10^-5]; 
        end
        
        objective_function_values = ones(n_starts,1);
        optimized_parameter_matrix = ones(n_starts,length(parameter_guess_matrix));
        
        for iStart = 1 : n_starts
        
            % show initial objective
            Initial_Objective_Value = num2str(objective_function(parameter_guess_matrix(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value])
        
            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters, fval, exitflag, output, lambda, grad, hess] = fmincon(@objective_function,...
                parameter_guess_matrix(iStart,:),...
                A,B,Aeq,Beq,LB,UB,NONLCON,options);
        
            % show final objective
            Final_Objective_Value = num2str(objective_function(optimized_parameters));
            disp(['Final Objective: ' Final_Objective_Value])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters)])
            
            % save all optimized parameter values
            objective_function_values(iStart,:) = objective_function(optimized_parameters);
            optimized_parameter_matrix(iStart,:) = optimized_parameters;
        end
    
        % plotting stuff
        if iModel == 1
            subplot('Position',[0.1, 0.6, 0.35, 0.35])    
        elseif iModel == 2
            subplot('Position',[0.6, 0.6, 0.35, 0.35])
        elseif iModel == 3
            subplot('Position',[0.1, 0.1, 0.35, 0.35])
        elseif iModel == 4
            subplot('Position',[0.6, 0.1, 0.35, 0.35])
        end
        
        [s,x] = simulate(parameter_guess_matrix(iStart,:));
        plot(s,x(:,GFP_equation_number), 'color', [0, 0.21, 0.46], 'LineWidth', 2.0)
        [t,y] = simulate(optimized_parameter_matrix(iStart,:));
        hold on
        plot(t,y(:,GFP_equation_number), 'color', [51/255, 160/255, 44/255], 'LineWidth', 2.0)
        plot(t_data,y_data,'o', 'color', [0.96, 0.41, 0], 'LineWidth', 1.5)
        
        % process numbers for annotation object
        exponent_I = floor(log10(str2double(Initial_Objective_Value)));
        coefficient_I = str2double(Initial_Objective_Value)*10^(-exponent_I);
        exponent_F = floor(log10(str2double(Final_Objective_Value)));
        coefficient_F = str2double(Final_Objective_Value)*10^(-exponent_F);

        if iModel == 1
            text(-1.5*10^4, 3*10^4, 'a', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.63, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 30000])
        elseif iModel == 2
            text(-1.5*10^4, 4.5*10^4, 'b', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.62, 0.88, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 45000])
        elseif iModel == 3
            text(-1.5*10^4, 4*10^4, 'c', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.13, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 40000])
        elseif iModel == 4
            text(-1.5*10^4, 2.5*10^4, 'd', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.62, 0.38, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 25000])
        end
        
        legend('manual GFP(t) [\mumol/l] ', 'estimated GFP(t) [\mumol/l] ',...
            'Data (GFP)', 'Location', [0.5 0.49 0.05 0.05], 'Fontsize', 10)
        xlabel('Time [s]')
        ylabel('Concentration [\mumol/l]')            
    end

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_3.pdf')


%% Figure 4.4
elseif iFigure == 8
    % experimental data
    sigma_data = 0.015;
    load('experimental_data.mat');
    n_starts = 1;

    global y_data
    global t_data
    global ODE_system
    global ODE_system_doubleLasRd
    global GFP_equation_number
    global y0
    
    % define parameter constraints
    A = [];
    B = [];
    Aeq = [];
    Beq = [];
    NONLCON = [];

    figure
    for iModel = 1 : 4
        % choose correct data
        if iModel == 1
            y_data = experimental_data.qslA_qteE.WT_1(:,3);
            t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1) - 600;
            ODE_system = 0;
            ODE_system_doubleLasRd = 9;
            GFP_equation_number = 8;
            
            LB = [0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(10)/parameter_guess_matrix(11)*parameter_guess_matrix(7)/parameter_guess_matrix(9),...
                      parameter_guess_matrix(13)/parameter_guess_matrix(12)*parameter_guess_matrix(1)/parameter_guess_matrix(4), 0, 0, 5100, 1*10^-5];

        elseif iModel == 3
            y_data = experimental_data.qteE.WT_3(:,3);
            t_data = 3600*experimental_data.qteE.WT_3(:,1) - 600;
            ODE_system = 2;
            ODE_system_doubleLasRd = 10;
            GFP_equation_number = 11;

            LB = [0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(17)/parameter_guess_matrix(18)*parameter_guess_matrix(14)/parameter_guess_matrix(16),...
                      parameter_guess_matrix(20)/parameter_guess_matrix(19)*parameter_guess_matrix(8)/parameter_guess_matrix(11), 0, 0, ...
                      sqrt(parameter_guess_matrix(3)*parameter_guess_matrix(1)/(2*parameter_guess_matrix(4)*parameter_guess_matrix(2))), 0, 0, 5100, 1*10^-5];

        elseif iModel == 2
            y_data = experimental_data.qslA.WT_3(:,3);
            t_data = 3600*experimental_data.qslA.WT_3(:,1) - 600;
            ODE_system = 3;
            ODE_system_doubleLasRd = 11;
            GFP_equation_number = 9;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, ...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(16)/parameter_guess_matrix(17)*parameter_guess_matrix(13)/parameter_guess_matrix(15),...
                      parameter_guess_matrix(19)/parameter_guess_matrix(10)*parameter_guess_matrix(7)/parameter_guess_matrix(18), 0, 0, ...
                      parameter_guess_matrix(10)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(19)*parameter_guess_matrix(7)*...
                      parameter_guess_matrix(4))/(parameter_guess_matrix(18)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
                      5100, 1*10^-5];

        elseif iModel == 4
            y_data = experimental_data.WT.WT_1(:,3);
            t_data = 3600*experimental_data.WT.WT_1(:,1) - 600;
            ODE_system = 5;
            ODE_system_doubleLasRd = 12;
            GFP_equation_number = 12;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3,...
                  0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf,...
                  0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4, -inf];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1,...
                  4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf,...
                  4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4, inf];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                          0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                          2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                          1*10^-4];
            y0 = [0, 0, 0.0043, 0.0146, 0, 0, 0.0012, 0.0052, 0, 0, 5100, 1*10^-5]; 
        end
        
        objective_function_values_single = ones(n_starts,1);
        optimized_parameter_matrix_single = ones(n_starts,length(parameter_guess_matrix));
        objective_function_values_double = ones(n_starts,1);
        optimized_parameter_matrix_double = ones(n_starts,length(parameter_guess_matrix));

        for iStart = 1 : n_starts                      
            %% single LasRd
            % show initial objective
            Initial_Objective_Value = num2str(objective_function(parameter_guess_matrix(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value])

            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters_single, ~, ~, ~, ~, ~, ~] = fmincon(@objective_function,...
                parameter_guess_matrix(iStart,:),...
                A,B,Aeq,Beq,LB,UB,NONLCON,options);
            
            % show final objective
            Final_Objective_Value_single = num2str(objective_function(optimized_parameters_single));
            disp(['Final Objective: ' Final_Objective_Value_single])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters_single)])
            
            % save all optimized parameter values
            objective_function_values_single(iStart,:) = objective_function(optimized_parameters_single);
            optimized_parameter_matrix_single(iStart,:) = optimized_parameters_single;

            %% double LasRd
            % show initial objective
            Initial_Objective_Value_double = num2str(objective_function(parameter_guess_matrix(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value_double])
            
            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters_double, fval, exitflag, output, lambda, grad, hess] = fmincon(@objective_function_double,...
                parameter_guess_matrix(iStart,:),...
                A,B,Aeq,Beq,LB,UB,NONLCON,options);
            
            % show final objective
            Final_Objective_Value_double = num2str(objective_function_double(optimized_parameters_double));
            disp(['Final Objective: ' Final_Objective_Value_double])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters_double)])
            
            % save all optimized parameter values
            objective_function_values_double(iStart,:) = objective_function_double(optimized_parameters_double);
            optimized_parameter_matrix_double(iStart,:) = optimized_parameters_double;

        end
    
        % plotting stuff
        if iModel == 1
            subplot('Position',[0.1, 0.6, 0.35, 0.35])    
        elseif iModel == 2
            subplot('Position',[0.6, 0.6, 0.35, 0.35])
        elseif iModel == 3
            subplot('Position',[0.1, 0.1, 0.35, 0.35])
        elseif iModel == 4
            subplot('Position',[0.6, 0.1, 0.35, 0.35])
        end
        
        [s,x] = simulate(parameter_guess_matrix(iStart,:));
        semilogy(s,x(:,GFP_equation_number), 'color', [34/255, 94/255, 168/255], 'LineWidth', 2.0)
        hold on
        [t,y] = simulate(optimized_parameter_matrix_single(iStart,:));
        semilogy(t,y(:,GFP_equation_number), 'color', [116/255, 169/255, 207/255], 'LineWidth', 2.0)
        [a,b] = simulate_double(parameter_guess_matrix(iStart,:));
        semilogy(a,b(:,GFP_equation_number), 'color', [35/255, 139/255, 69/255], 'LineWidth', 2.0)
        [c,d] = simulate_double(optimized_parameter_matrix_double(iStart,:));
        semilogy(c,d(:,GFP_equation_number), 'color', [120/255, 132/255, 67/255], 'LineWidth', 2.0)
        semilogy(t_data,y_data,'o', 'color', [0.96, 0.41, 0], 'LineWidth', 1.5)
        
        % process numebrs for annotation object
        exponent_S = floor(log10(str2double(Final_Objective_Value_single)));
        coefficient_S = str2double(Final_Objective_Value_single)*10^(-exponent_S);
        exponent_D = floor(log10(str2double(Final_Objective_Value_double)));
        coefficient_D = str2double(Final_Objective_Value_double)*10^(-exponent_D);

        if iModel == 1
            text(-1.5*10^4, 3*10^4, 'a', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.63, 0.05, 0.05],'String',...
                        {['Estimated_{single}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{double}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 50000])
        elseif iModel == 2
            text(-1.5*10^4, 4.5*10^4, 'b', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.795, 0.63, 0.05, 0.05],'String',...
                        {['Estimated_{single}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{double}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 65000])
        elseif iModel == 3
            text(-1.5*10^4, 4*10^4, 'c', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.13, 0.05, 0.05],'String',...
                        {['Estimated_{single}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{double}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 60000])
        elseif iModel == 4
            text(-1.5*10^4, 2.5*10^4, 'd', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.795, 0.13, 0.05, 0.05],'String',...
                        {['Estimated_{single}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{double}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 45000])
        end
        yticks([1,10,100,1000,10000,100000])
        yticklabels({'10^{0}','10^{1}','10^{2}','10^{3}','10^{4}','10^{5}'})
        legend('manual GFP(t), single LasRd binding', 'estimated GFP(t), single LasRd binding',...
            'manual GFP(t), double LasRd binding', 'estimated GFP(t), double LasRd binding',...
            'Data (GFP)', 'Location', [0.5 0.49 0.05 0.05], 'Fontsize', 10)
        xlabel('Time [s]')
        ylabel('Concentration [\mumol/l]')  
    end

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_4.pdf')


%% Figure 4.5
elseif iFigure == 9
    % experimental data
    sigma_data = 0.015;
    load('experimental_data.mat');
    n_starts = 1;

    global y_data
    global t_data
    global ODE_system
    global ODE_system_RsaL
    global GFP_equation_number
    global y0
    global y0_RsaL
    
    % define parameter constraints
    A = [];
    B = [];
    Aeq = [];
    Beq = [];
    NONLCON = [];

    figure
    for iModel = 1 : 4
        % choose correct data
        if iModel == 1
            y_data = experimental_data.qslA_qteE.WT_1(:,3);
            t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1) - 600;
            ODE_system = 0;
            ODE_system_RsaL = 13;
            GFP_equation_number = 8;
            
            % no RsaL
            LB = [0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(10)/parameter_guess_matrix(11)*parameter_guess_matrix(7)/parameter_guess_matrix(9),...
                    parameter_guess_matrix(13)/parameter_guess_matrix(12)*parameter_guess_matrix(1)/parameter_guess_matrix(4), 0, 0, 5100, 1*10^-5];
            % with RsaL
            LB_RsaL = [0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4,...
                        2.4*10^-2, 1.73*10^-3, 0.1*10^-6, 2.4*10^-4, 1.7*10^-2, 3.61*10^-4, -inf];
            UB_RsaL = [4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4,...
                        3.2*10^-2, 7.1*10^-3, 4.6*10^-6, 4.1*10^-4, 1.8*10^0, 4.1*10^-4, inf];

            parameter_guess_matrix_RsaL = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                                        2.43*10^-2, 7*10^-3, 4.5*10^-6, 2.41*10^-4, 1.7*10^0, 4*10^-4, 1*10^0];
            y0_RsaL = [0, 0, parameter_guess_matrix_RsaL(10)/parameter_guess_matrix_RsaL(11)*parameter_guess_matrix_RsaL(7)/parameter_guess_matrix_RsaL(9),...
                    parameter_guess_matrix_RsaL(13)/parameter_guess_matrix_RsaL(12)*parameter_guess_matrix_RsaL(1)/parameter_guess_matrix_RsaL(4), 0, 0, 5100,...
                    parameter_guess_matrix_RsaL(17)/parameter_guess_matrix_RsaL(18)*parameter_guess_matrix_RsaL(19)/parameter_guess_matrix_RsaL(22),...
                    1*10^-5];

        elseif iModel == 3
            y_data = experimental_data.qteE.WT_3(:,3);
            t_data = 3600*experimental_data.qteE.WT_3(:,1) - 600;
            ODE_system = 2;
            ODE_system_RsaL = 14;
            GFP_equation_number = 11;
            
            % no RsaL
            LB = [0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(17)/parameter_guess_matrix(18)*parameter_guess_matrix(14)/parameter_guess_matrix(16),...
                      parameter_guess_matrix(20)/parameter_guess_matrix(19)*parameter_guess_matrix(8)/parameter_guess_matrix(11), 0, 0, ...
                      sqrt(parameter_guess_matrix(3)*parameter_guess_matrix(1)/(2*parameter_guess_matrix(4)*parameter_guess_matrix(2))), 0, 0, 5100, 1*10^-5];
            % with RsaL
            LB_RsaL = [0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4,...
                        2.4*10^-2, 1.73*10^-3, 0.1*10^-6, 2.4*10^-4, 1.7*10^-2, 3.61*10^-4, -inf];
            UB_RsaL = [4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4,...
                        3.2*10^-2, 7.1*10^-3, 4.6*10^-6, 4.1*10^-4, 1.8*10^0, 4.1*10^-4, inf];

            parameter_guess_matrix_RsaL = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                                        2.43*10^-2, 7*10^-3, 4.5*10^-6, 2.41*10^-4, 1.7*10^0, 4*10^-4, 1*10^0];
            y0_RsaL = [0, 0, parameter_guess_matrix_RsaL(17)/parameter_guess_matrix_RsaL(18)*parameter_guess_matrix_RsaL(14)/parameter_guess_matrix_RsaL(16),...
                      parameter_guess_matrix_RsaL(20)/parameter_guess_matrix_RsaL(19)*parameter_guess_matrix_RsaL(8)/parameter_guess_matrix_RsaL(11), 0, 0, ...
                      sqrt(parameter_guess_matrix_RsaL(3)*parameter_guess_matrix_RsaL(1)/(2*parameter_guess_matrix_RsaL(4)*parameter_guess_matrix_RsaL(2))), 0, 0, 5100,...
                      parameter_guess_matrix_RsaL(24)/parameter_guess_matrix_RsaL(25)*parameter_guess_matrix_RsaL(26)/parameter_guess_matrix_RsaL(29),...
                      1*10^-5];

        elseif iModel == 2
            y_data = experimental_data.qslA.WT_3(:,3);
            t_data = 3600*experimental_data.qslA.WT_3(:,1) - 600;
            ODE_system = 3;
            ODE_system_RsaL = 15;
            GFP_equation_number = 9;
            
            % no RsaL
            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, ...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(16)/parameter_guess_matrix(17)*parameter_guess_matrix(13)/parameter_guess_matrix(15),...
                      parameter_guess_matrix(19)/parameter_guess_matrix(10)*parameter_guess_matrix(7)/parameter_guess_matrix(18), 0, 0, ...
                      parameter_guess_matrix(10)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(19)*parameter_guess_matrix(7)*...
                      parameter_guess_matrix(4))/(parameter_guess_matrix(18)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
                      5100, 1*10^-5];
            % with RsaL
            LB_RsaL = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4,...
                        2.4*10^-2, 1.73*10^-3, 0.1*10^-6, 2.4*10^-4, 1.7*10^-2, 3.61*10^-4, -inf];
            UB_RsaL = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4,...
                        3.2*10^-2, 7.1*10^-3, 4.6*10^-6, 4.1*10^-4, 1.8*10^0, 4.1*10^-4, inf];

            parameter_guess_matrix_RsaL = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, ...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                                        2.43*10^-2, 7*10^-3, 4.5*10^-6, 2.41*10^-4, 1.7*10^0, 4*10^-4, 1*10^0];
            y0_RsaL = [0, 0, parameter_guess_matrix_RsaL(16)/parameter_guess_matrix_RsaL(17)*parameter_guess_matrix_RsaL(13)/parameter_guess_matrix_RsaL(15),...
                      parameter_guess_matrix_RsaL(19)/parameter_guess_matrix_RsaL(10)*parameter_guess_matrix_RsaL(7)/parameter_guess_matrix_RsaL(18), 0, 0, ...
                      parameter_guess_matrix_RsaL(10)/parameter_guess_matrix_RsaL(6)*1/((parameter_guess_matrix_RsaL(19)*parameter_guess_matrix_RsaL(7)*...
                      parameter_guess_matrix_RsaL(4))/(parameter_guess_matrix_RsaL(18)*parameter_guess_matrix_RsaL(5)*parameter_guess_matrix_RsaL(1)) - 1), 5100,...
                      parameter_guess_matrix_RsaL(23)/parameter_guess_matrix_RsaL(24)*parameter_guess_matrix_RsaL(25)/parameter_guess_matrix_RsaL(28),...
                      1*10^-5];

        elseif iModel == 4
            y_data = experimental_data.WT.WT_1(:,3);
            t_data = 3600*experimental_data.WT.WT_1(:,1) - 600;
            ODE_system = 5;
            ODE_system_RsaL = 16;
            GFP_equation_number = 12;
            
            % no RsaL
            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3,...
                  0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf,...
                  0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4, -inf];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1,...
                  4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf,...
                  4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4, inf];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                          0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                          2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                          1*10^-4];
            y0 = [0, 0, 0.0043, 0.0146, 0, 0, 0.0012, 0.0052, 0, 0, 5100, 1*10^-5];
            % with RsaL
            LB_RsaL = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3,...
                  0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf,...
                  0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  10000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4, -inf,...
                  2.4*10^-2, 1.73*10^-3, 0.1*10^-6, 2.4*10^-4, 1.7*10^-2, 3.61*10^-4, -inf];
            UB_RsaL = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1,...
                  4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf,...
                  4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 35000,  3*10^-9, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4, inf,...
                  3.2*10^-2, 7.1*10^-3, 4.6*10^-6, 4.1*10^-4, 1.8*10^0, 4.1*10^-4, inf];

            parameter_guess_matrix_RsaL = [5*10^-6, 1*10^-5, 1.7*10^0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                          0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                          2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4, 1*10^-4,...
                          2.43*10^-2, 7*10^-3, 4.5*10^-6, 2.41*10^-4, 1.7*10^0, 4*10^-4, 1*10^0];
            y0_RsaL = [0, 0, 0.0043, 0.0146, 0, 0, 0.0012, 0.0052, 0, 0, 5100, 0.0391, 1*10^-5];
        end
        
        objective_function_values_single = ones(n_starts,1);
        optimized_parameter_matrix_single = ones(n_starts,length(parameter_guess_matrix));
        objective_function_values_RsaL = ones(n_starts,1);
        optimized_parameter_matrix_RsaL = ones(n_starts,length(parameter_guess_matrix_RsaL));


        for iStart = 1 : n_starts                   
            %% no RsaL
            % show initial objective
            Initial_Objective_Value = num2str(objective_function(parameter_guess_matrix(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value])

            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters_single, ~, ~, ~, ~, ~, ~] = fmincon(@objective_function,...
                parameter_guess_matrix(iStart,:),...
                A,B,Aeq,Beq,LB,UB,NONLCON,options);
            
            % show final objective
            Final_Objective_Value_single = num2str(objective_function(optimized_parameters_single));
            disp(['Final Objective: ' Final_Objective_Value_single])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters_single)])
            
            % save all optimized parameter values
            objective_function_values_single(iStart,:) = objective_function(optimized_parameters_single);
            optimized_parameter_matrix_single(iStart,:) = optimized_parameters_single;

            %% with RasL
            % show initial objective
            Initial_Objective_Value_RsaL = num2str(objective_function_RsaL(parameter_guess_matrix_RsaL(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value_RsaL])
            
            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters_RsaL, fval, exitflag, output, lambda, grad, hess] = fmincon(@objective_function_RsaL,...
                parameter_guess_matrix_RsaL(iStart,:),...
                A,B,Aeq,Beq,LB_RsaL,UB_RsaL,NONLCON,options);
            
            % show final objective
            Final_Objective_Value_RsaL = num2str(objective_function_RsaL(optimized_parameters_RsaL));
            disp(['Final Objective: ' Final_Objective_Value_RsaL])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters_RsaL)])
            
            % save all optimized parameter values
            objective_function_values_RsaL(iStart,:) = objective_function_RsaL(optimized_parameters_RsaL);
            optimized_parameter_matrix_RsaL(iStart,:) = optimized_parameters_RsaL;

        end
    
        % plotting stuff
%         subplot(2,2,iModel)
        if iModel == 1
            subplot('Position',[0.1, 0.6, 0.35, 0.35])    
        elseif iModel == 2
            subplot('Position',[0.6, 0.6, 0.35, 0.35])
        elseif iModel == 3
            subplot('Position',[0.1, 0.1, 0.35, 0.35])
        elseif iModel == 4
            subplot('Position',[0.6, 0.1, 0.35, 0.35])
        end
        
        [s,x] = simulate(parameter_guess_matrix(iStart,:));
        semilogy(s,x(:,GFP_equation_number), 'color', [34/255, 94/255, 168/255], 'LineWidth', 2.0)
        hold on
        [t,y] = simulate(optimized_parameter_matrix_single(iStart,:));
        semilogy(t,y(:,GFP_equation_number), 'color', [116/255, 169/255, 207/255], 'LineWidth', 2.0)
        [a,b] = simulate_RsaL(parameter_guess_matrix_RsaL(iStart,:));
        semilogy(a,b(:,GFP_equation_number + 1), 'color', [35/255, 139/255, 69/255], 'LineWidth', 2.0)
        [c,d] = simulate_RsaL(optimized_parameter_matrix_RsaL(iStart,:));
        semilogy(c,d(:,GFP_equation_number + 1), 'color', [120/255, 132/255, 67/255], 'LineWidth', 2.0)
        semilogy(t_data,y_data,'o', 'color', [0.96, 0.41, 0], 'LineWidth', 1.5)
        
        % process numebrs for annotation object
        exponent_S = floor(log10(str2double(Final_Objective_Value_single)));
        coefficient_S = str2double(Final_Objective_Value_single)*10^(-exponent_S);
        exponent_D = floor(log10(str2double(Final_Objective_Value_RsaL)));
        coefficient_D = str2double(Final_Objective_Value_RsaL)*10^(-exponent_D);

        if iModel == 1
            text(-1.5*10^4, 3*10^4, 'a', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.28, 0.65, 0.05, 0.05],'String',...
                        {['Estimated_{no RsaL}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{RsaL}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 50000])
        elseif iModel == 2
            text(-1.5*10^4, 4.5*10^4, 'b', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.78, 0.65, 0.05, 0.05],'String',...
                        {['Estimated_{no RsaL}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{RsaL}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 65000])
        elseif iModel == 3
            text(-1.5*10^4, 4*10^4, 'c', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.28, 0.15, 0.05, 0.05],'String',...
                        {['Estimated_{no RsaL}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{RsaL}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 60000])
        elseif iModel == 4
            text(-1.5*10^4, 2.5*10^4, 'd', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.78, 0.15, 0.05, 0.05],'String',...
                        {['Estimated_{no RsaL}: ', strcat(num2str(round(coefficient_S,1)), '*10^{', num2str(round(exponent_S,1)), '}')],...
                        ['Estimated_{RsaL}: ', strcat(num2str(round(coefficient_D,1)), '*10^{', num2str(round(exponent_D,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 1, 45000])
        end
        yticks([1,10,100,1000,10000,100000])
        yticklabels({'10^{0}','10^{1}','10^{2}','10^{3}','10^{4}','10^{5}'})
        legend('manual GFP(t), no RsaL', 'estimated GFP(t), no RsaL',...
            'manual GFP(t), RsaL', 'estimated GFP(t), RsaL',...
            'Data (GFP)', 'Location', [0.5 0.49 0.05 0.05], 'Fontsize', 10)
        xlabel('Time [s]')
        ylabel('Concentration [\mumol/l]')
    end

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_5.pdf')


%% Figure 4.6
elseif iFigure == 10
    %% see script 'Goryachev.m' %%


%% Figure 4.7
elseif iFigure == 11
    % experimental data
    sigma_data = 0.015;
    load('experimental_data.mat');
    n_starts = 1;

    global y_data
    global t_data
    global ODE_system
    global GFP_equation_number
    global y0
    
    % define parameter constraints
    A = [];
    B = [];
    Aeq = [];
    Beq = [];
    NONLCON = [];

    figure
    for iModel = 1 : 4
        % choose correct data
        if iModel == 1
            % delete outlier
            experimental_data.qslA_qteE.WT_1(6,:) = [];

            y_data = experimental_data.qslA_qteE.WT_1(:,3);
            t_data = 3600*experimental_data.qslA_qteE.WT_1(:,1) - 600;
            ODE_system = 0;
            GFP_equation_number = 8;
            
            LB = [0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  7000, 3*10^-10, 2*10^-6, 2.41*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(10)/parameter_guess_matrix(11)*parameter_guess_matrix(7)/parameter_guess_matrix(9),...
                      parameter_guess_matrix(13)/parameter_guess_matrix(12)*parameter_guess_matrix(1)/parameter_guess_matrix(4), 0, 0, 5100, 1*10^-5];

        elseif iModel == 3
            y_data = experimental_data.qteE.WT_3(:,3);
            t_data = 3600*experimental_data.qteE.WT_3(:,1) - 600;
            ODE_system = 2;
            GFP_equation_number = 11;

            LB = [0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];
            optimized_parameters_2 = optimized_parameters;
            parameter_guess_matrix = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  7000, 3*10^-10, 2*10^-6, 2.41*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(17)/parameter_guess_matrix(18)*parameter_guess_matrix(14)/parameter_guess_matrix(16),...
                      parameter_guess_matrix(20)/parameter_guess_matrix(19)*parameter_guess_matrix(8)/parameter_guess_matrix(11), 0, 0, ...
                      sqrt(parameter_guess_matrix(3)*parameter_guess_matrix(1)/(2*parameter_guess_matrix(4)*parameter_guess_matrix(2))), 0, 0, 5100, 1*10^-5];

        elseif iModel == 2
            y_data = experimental_data.qslA.WT_3(:,3);
            t_data = 3600*experimental_data.qslA.WT_3(:,1) - 600;
            ODE_system = 3;
            GFP_equation_number = 9;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3, 0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1, 4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  7000, 3*10^-10, 2*10^-6, 2.41*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];
            y0 = [0, 0, parameter_guess_matrix(16)/parameter_guess_matrix(17)*parameter_guess_matrix(13)/parameter_guess_matrix(15),...
                      1/parameter_guess_matrix(10)*(parameter_guess_matrix(19)*parameter_guess_matrix(7)/parameter_guess_matrix(18) - parameter_guess_matrix(1)*parameter_guess_matrix(5)/parameter_guess_matrix(4)), 0, 0, ...
                      parameter_guess_matrix(10)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(19)*parameter_guess_matrix(7)*...
                      parameter_guess_matrix(4))/(parameter_guess_matrix(18)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
                      5100, 1*10^-5];

        elseif iModel == 4
            y_data = experimental_data.WT.WT_1(:,3);
            t_data = 3600*experimental_data.WT.WT_1(:,1) - 600;
            ODE_system = 5;
            GFP_equation_number = 12;

            LB = [0.9*10^-7, 0.9*10^-5, 1.7*10^-2, 1.4*10^-4, 0.8*10^-3, 7*10^-3,...
                  0.8*10^-7, 1.4*10^-4, 0.8*10^-3, 0.4*10^-2, 0.5*10^-5, 7*10^-3, -inf,...
                  0.9*10^-7, 2*10^-5, 0.1*10^-7, 0.2*10^-5,  1000, 1*10^-11, 0.1*10^-6, 1*10^-4, 1.4*10^-3, 0.8*10^-2, 0.2*10^-4, 1.4*10^-3, 0.8*10^-2, 0.1*10^-3, 0.5*10^-1,  0.5*10^-4];
            UB = [4.5*10^-5, 4*10^-3,  1.8*10^0,   7*10^-2, 3.2*10^-1, 7.1*10^-1,...
                  4.5*10^-5,   7*10^-2, 3.2*10^-1,   5*10^0,    5*10^-3, 7.1*10^-1, inf,...
                  4.5*10^-5, 2*10^-3,   5*10^-5,   4.1*10^-3, 40000,  1*10^-8, 4.5*10^-6, 4.1*10^-4,   7*10^-3, 3.3*10^-2,   4*10^-4,   7.1*10^-3, 3.2*10^-2,   5.1*10^-3,   5.1*10^-1,    5*10^-4];

            parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                                        0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^1,...
                                        2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  7000, 3*10^-10, 2*10^-6, 2.41*10^-4,...
                                        4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];

            y0 = [0, 0, parameter_guess_matrix(23)/parameter_guess_matrix(24)*parameter_guess_matrix(20)/parameter_guess_matrix(22),...
                  1/parameter_guess_matrix(17)*(parameter_guess_matrix(26)*parameter_guess_matrix(14)/parameter_guess_matrix(25) - parameter_guess_matrix(1)*parameter_guess_matrix(5)/parameter_guess_matrix(4)),...
                  0, 0, ...
                  parameter_guess_matrix(17)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(26)*parameter_guess_matrix(14)*...
                  parameter_guess_matrix(4))/(parameter_guess_matrix(25)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
                  sqrt(parameter_guess_matrix(9)*parameter_guess_matrix(7)/(2*parameter_guess_matrix(10)*parameter_guess_matrix(8))), ...
                  0, 0,...
                  5100, 1*10^-5];
        end
        
        objective_function_values = ones(n_starts,1);
        optimized_parameter_matrix = ones(n_starts,length(parameter_guess_matrix));
        
        for iStart = 1 : n_starts
        
            % show initial objective
            Initial_Objective_Value = num2str(objective_function(parameter_guess_matrix(iStart,:)));
            disp(['Initial Objective: ' Initial_Objective_Value])
        
            % optimize with fmincon
            options = optimoptions('fmincon','Algorithm','interior-point','Display','iter');
            [optimized_parameters, fval, exitflag, output, lambda, grad, hess] = fmincon(@objective_function,...
                parameter_guess_matrix(iStart,:),...
                A,B,Aeq,Beq,LB,UB,NONLCON,options);
        
            % show final objective
            Final_Objective_Value = num2str(objective_function(optimized_parameters));
            disp(['Final Objective: ' Final_Objective_Value])
            disp(['guessed_parameters: ' num2str(parameter_guess_matrix(iStart,:))])
            disp(['optimized_parameters: ' num2str(optimized_parameters)])
            
            % save all optimized parameter values
            objective_function_values(iStart,:) = objective_function(optimized_parameters);
            optimized_parameter_matrix(iStart,:) = optimized_parameters;
        end
    
        % plotting stuff
        if iModel == 1
            subplot('Position',[0.1, 0.6, 0.35, 0.35])    
        elseif iModel == 2
            subplot('Position',[0.6, 0.6, 0.35, 0.35])
        elseif iModel == 3
            subplot('Position',[0.1, 0.1, 0.35, 0.35])
        elseif iModel == 4
            subplot('Position',[0.6, 0.1, 0.35, 0.35])
        end
        
        [s,x] = simulate(parameter_guess_matrix(iStart,:));
        plot(s,x(:,GFP_equation_number), 'color', [0, 0.21, 0.46], 'LineWidth', 2.0)
        [t,y] = simulate(optimized_parameter_matrix(iStart,:));
        hold on
        plot(t,y(:,GFP_equation_number), 'color', [51/255, 160/255, 44/255], 'LineWidth', 2.0)
        plot(t_data,y_data,'o', 'color', [0.96, 0.41, 0], 'LineWidth', 1.5)
        
        % process numebrs for annotation object
        exponent_I = floor(log10(str2double(Initial_Objective_Value)));
        coefficient_I = str2double(Initial_Objective_Value)*10^(-exponent_I);
        exponent_F = floor(log10(str2double(Final_Objective_Value)));
        coefficient_F = str2double(Final_Objective_Value)*10^(-exponent_F);

        if iModel == 1
            text(-1.5*10^4, 3*10^4, 'a', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.63, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 30000])
        elseif iModel == 2
            text(-1.5*10^4, 4.5*10^4, 'b', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.62, 0.88, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 45000])
        elseif iModel == 3
            text(-1.5*10^4, 4*10^4, 'c', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.295, 0.13, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 40000])
        elseif iModel == 4
            text(-1.5*10^4, 2.5*10^4, 'd', 'FontSize', 18, 'FontWeight', 'bold')
            annotation('textbox',[0.62, 0.38, 0.05, 0.05],'String',...
                        {['Initial_{OFV}: ', strcat(num2str(round(coefficient_I,1)), '*10^{', num2str(round(exponent_I,1)), '}')],...
                        ['Estimated_{OFV}: ', strcat(num2str(round(coefficient_F,1)), '*10^{', num2str(round(exponent_F,1)), '}')]},...
                        'FitBoxToText','on', 'FontSize', 10)
            axis([0, 100000, 0, 25000])
        end
        
        legend('manual GFP(t) [\mumol/l] ', 'estimated GFP(t) [\mumol/l] ',...
            'Data (GFP)', 'Location', [0.5 0.49 0.05 0.05], 'Fontsize', 10)
        xlabel('Time [s]')
        ylabel('Concentration [\mumol/l]')            
    end

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_7.pdf')    


%% Figure 4.8
elseif iFigure == 12
    
    figure
    % trajectories basic submodel
    parameter_guess_matrix = [2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                              4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];

    subplot('Position',[0.1, 0.6, 0.35, 0.35])
    y0 = [0, 0, parameter_guess_matrix(10)/parameter_guess_matrix(11)*parameter_guess_matrix(7)/parameter_guess_matrix(9),...
          parameter_guess_matrix(13)/parameter_guess_matrix(12)*parameter_guess_matrix(1)/parameter_guess_matrix(4), 0, 0, 5100, 1*10^-5];
    [t,y] = simulate_trajectories(parameter_guess_matrix,y0,0);
    semilogy(t,y(:,1:length(y0)-2), 'LineWidth', 2.0)
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    axis([0, 100000, 10^-13, 10^2])
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    text(-1.5*10^4, 1*10^2, 'a', 'FontSize', 18, 'FontWeight', 'bold')

    % trajectories qteE submodel
    parameter_guess_matrix = [0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                              2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4,...
                              4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4];

    subplot('Position',[0.1, 0.1, 0.35, 0.35])
    y0 = [0, 0, parameter_guess_matrix(17)/parameter_guess_matrix(18)*parameter_guess_matrix(14)/parameter_guess_matrix(16),...
              parameter_guess_matrix(20)/parameter_guess_matrix(19)*parameter_guess_matrix(8)/parameter_guess_matrix(11), 0, 0, ...
              sqrt(parameter_guess_matrix(3)*parameter_guess_matrix(1)/(2*parameter_guess_matrix(4)*parameter_guess_matrix(2))), 0, 0, 5100, 1*10^-5];
    [t,y] = simulate_trajectories(parameter_guess_matrix,y0,2);
    semilogy(t,y(:,1:6), 'LineWidth', 2.0)
    hold on
    semilogy(t,y(:,7), 'black', 'LineWidth', 2.0)
    semilogy(t,y(:,8), 'magenta', 'LineWidth', 2.0)
    semilogy(t,y(:,9), 'green', 'LineWidth', 2.0)
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    axis([0, 100000, 10^-13, 10^2])
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    text(-1.5*10^4, 1*10^2, 'c', 'FontSize', 18, 'FontWeight', 'bold')

    % trajectories qslA submodel
    parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^-0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                              2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9,...
                              0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1, 1.18*10^-4];

    subplot('Position',[0.6, 0.6, 0.35, 0.35])
    y0 = [0, 0, parameter_guess_matrix(16)/parameter_guess_matrix(17)*parameter_guess_matrix(13)/parameter_guess_matrix(15),...
              1/parameter_guess_matrix(10)*(parameter_guess_matrix(19)*parameter_guess_matrix(7)/parameter_guess_matrix(18) - parameter_guess_matrix(1)*parameter_guess_matrix(5)/parameter_guess_matrix(4)), 0, 0, ...
              parameter_guess_matrix(10)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(19)*parameter_guess_matrix(7)*...
              parameter_guess_matrix(4))/(parameter_guess_matrix(18)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
              5100, 1*10^-5];
    [t,y] = simulate_trajectories(parameter_guess_matrix,y0,3);
    semilogy(t,y(:,1:length(y0)-2), 'LineWidth', 2.0)
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    axis([0, 100000, 10^-13, 10^2])
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    text(-1.5*10^4, 1*10^2, 'b', 'FontSize', 18, 'FontWeight', 'bold')

    % trajectories full model
    parameter_guess_matrix = [5*10^-6, 1*10^-5, 1.7*10^0, 0.5*10^-2, 1*10^-2, 7*10^-1,...
                              0.9*10^-7, 1*10^-3, 0.3*10^-2, 0.5*10^-2, 2.2*10^-4, 7*10^-1, 1*10^-1,...
                              2*10^-5, 7.67*10^-5, 2.2*10^-5, 4*10^-3,  31000, 2.2*10^-9, 0.2*10^-6, 4*10^-4, 4*10^-3, 3.2*10^-2, 3.61*10^-4, 7*10^-3, 2.05*10^-2, 5*10^-3, 5*10^-1,  1.18*10^-4,...
                              1*10^-4];

    subplot('Position',[0.6, 0.1, 0.35, 0.35])
    y0 = [0, 0, parameter_guess_matrix(23)/parameter_guess_matrix(24)*parameter_guess_matrix(20)/parameter_guess_matrix(22),...
              1/parameter_guess_matrix(17)*(parameter_guess_matrix(26)*parameter_guess_matrix(14)/parameter_guess_matrix(25) - parameter_guess_matrix(1)*parameter_guess_matrix(5)/parameter_guess_matrix(4)),...
              0, 0, ...
              parameter_guess_matrix(17)/parameter_guess_matrix(6)*1/((parameter_guess_matrix(26)*parameter_guess_matrix(14)*...
              parameter_guess_matrix(4))/(parameter_guess_matrix(25)*parameter_guess_matrix(5)*parameter_guess_matrix(1)) - 1),...
              sqrt(parameter_guess_matrix(9)*parameter_guess_matrix(7)/(2*parameter_guess_matrix(10)*parameter_guess_matrix(8))), ...
              0, 0,...
              5100, 1*10^-5];
    [t,y] = simulate_trajectories(parameter_guess_matrix,y0,5);
    semilogy(t,y(:,1:7), 'LineWidth', 2.0)
    hold on
    plot(t,y(:,8), 'black', 'LineWidth', 2.0)
    plot(t,y(:,9), 'magenta', 'LineWidth', 2.0)
    plot(t,y(:,10), 'green', 'LineWidth', 2.0)
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    axis([0, 100000, 10^-13, 10^2])
    xlabel('Time [s]')
    ylabel('Concentration [\mumol/l]')
    text(-1.5*10^4, 1*10^2, 'd', 'FontSize', 18, 'FontWeight', 'bold')
    legend('S_e(t)', 'S_i(t)', 'X(t)', 'R(t)',...
       'R_2(t)', 'R_4(t)', 'Q_e(t)', 'Q_a(t)',...
       'Q_2(t)', 'C_{R2Q2}(t)',...
       'Location', [0.45 0.4675 0.1 0.1], 'Fontsize', 10)

    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_4_8.pdf') 

end

%% for Figure 4.3 & Figure 4.7
function obj = objective_function(guess_parameters)
    global y_data
    global t_data
    global GFP_equation_number

    [t,y] = simulate(guess_parameters);

    sigma_data = 0.015;
    t_index = ismember(t,t_data);
    obj = 1/2*sum(sum(((y_data(:,:) - y(t_index,GFP_equation_number))./sigma_data).^2));
end

function [t,y] = simulate(guess_parameters)
    global ODE_system    
    global y0

    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)ODE_basic_model(t,x,guess_parameters([1:length(guess_parameters)]),ODE_system),time_range,y0);
end

%% for Figure 4.4 
function obj = objective_function_double(guess_parameters)
    global y_data
    global t_data
    global GFP_equation_number

    [t,y] = simulate_double(guess_parameters);

    sigma_data = 0.015;
    t_index = ismember(t,t_data);
    obj = 1/2*sum(sum(((y_data(:,:) - y(t_index,GFP_equation_number))./sigma_data).^2));
end

function [t,y] = simulate_double(guess_parameters)
    global ODE_system_doubleLasRd    
    global y0

    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)ODE_basic_model(t,x,guess_parameters([1:length(guess_parameters)]),ODE_system_doubleLasRd),time_range,y0);
end

%% for Figure 4.5 
function obj = objective_function_RsaL(guess_parameters_RsaL)
    global y_data
    global t_data
    global GFP_equation_number

    [t,y] = simulate_RsaL(guess_parameters_RsaL);

    sigma_data = 0.015;
    t_index = ismember(t,t_data);
    obj = 1/2*sum(sum(((y_data(:,:) - y(t_index,GFP_equation_number + 1))./sigma_data).^2));
end

function [t,y] = simulate_RsaL(guess_parameters_RsaL)
    global ODE_system_RsaL    
    global y0_RsaL

    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)ODE_basic_model(t,x,guess_parameters_RsaL([1:length(guess_parameters_RsaL)]),ODE_system_RsaL),time_range,y0_RsaL);
end

%% for Figure 4.8
function [t,y] = simulate_trajectories(guess_parameters,y0,submodel)

    time_range = linspace(0,100000,1001);
    [t,y] = ode15s(@(t,x)ODE_basic_model(t,x,guess_parameters,submodel),time_range,y0);
end