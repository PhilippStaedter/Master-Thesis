% Flow Chart
clc;

iSubFigure = 2;
gca_interface = 'off';


%% SubFigure 2.3 - Visualization of an examplary experimental data time course
if iSubFigure == 1

    t = linspace(0,4,1000);
    t_data = linspace(0.25,3.75,15);
    
    figure
    line([0 0], [-0.5 10], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-0.5 5], [0 0], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    patch([4.65,4.65,5], [-0.35,0.35,-0], 'black')
    patch([-0.15,0.15,0], [9.35,9.35,10], 'black')
    
    hold on
    plot(t_data, (t_data-1).*(t_data-2).*(t_data-3) + 6, 's', 'MarkerFaceColor', [0.96, 0.41, 0], 'MarkerSize', 15, 'color', [0.96, 0.41, 0], 'LineWidth', 4)
    
    text(2.25, -0.5, 'Time', 'FontSize', 20, 'FontWeight', 'bold')
    text(-0.25, 3.25, 'Concentration', 'Rotation', 90, 'FontSize', 20, 'FontWeight', 'bold')
        
    % axes properties
    axis([-0.5, 5, -0.5, 10])
    set(gca,'visible',gca_interface)
    
    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_FlowChart_1.pdf')


%% SubFigure 2.3 - Visualization of examplary trajectories that try to fit the previous experimental data time course
elseif iSubFigure == 2

    t = linspace(0,4,1000);
    t_data = linspace(0.25,3.75,15);
    
    figure
    line([0 0], [-0.5 10], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    line([-0.5 5], [0 0], 'Color', 'black', 'Linestyle', '-', 'LineWidth', 1)
    patch([4.65,4.65,5], [-0.35,0.35,-0], 'black')
    patch([-0.15,0.15,0], [9.35,9.35,10], 'black')
    
    hold on
    plot(t_data, (t_data-1).*(t_data-2).*(t_data-3) + 6, 's', 'MarkerFaceColor', [0.96, 0.41, 0], 'MarkerSize', 15, 'color', [0.96, 0.41, 0], 'LineWidth', 4)
    plot(t,sqrt(t), 'Color', 'red', 'LineWidth', 2)
    plot(t,-1.5*(t-2.25).^2 + 7.5938, 'Color', '#FF00FF', 'LineWidth', 2)
    plot(t,0.4*(t-1).*(t-3).*(t-5) + 6, 'Color', '#00FFFF', 'LineWidth', 2)
    plot(t,(t-1).*(t-2).*(t-3) + 6, 'Color', 'blue', 'LineWidth', 2)
    
    text(2.25, -0.5, 'Time', 'FontSize', 20, 'FontWeight', 'bold')
    text(-0.25, 3.25, 'Concentration', 'Rotation', 90, 'FontSize', 20, 'FontWeight', 'bold')
        
    % axes properties
    axis([-0.5, 5, -0.5, 10])
    set(gca,'visible',gca_interface)
    
    % save figure as pdf
    h=gcf;
    set(h,'PaperOrientation','landscape');
    set(h,'PaperUnits','normalized');
    set(h,'PaperPosition', [0 0 1 1]);
    print(gcf, '-dpdf', 'Figure_FlowChart_3.pdf')

end
