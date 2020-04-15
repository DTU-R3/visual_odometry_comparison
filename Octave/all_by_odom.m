close all; clear all; clc;
load('all_data.mat');
## Boxplot
pkg load statistics;
# Trans error
boxplot(all_trans, all_trans_group);
ylim([0, 10]);
set(gca, "xtick", [0 10 20 30], 'xticklabel', ['wheel'; 'realsense'; 'zed'; 'orb']);
ylabel('Translation Error (m)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',10);
pbaspect([4 3]);
saveas(gcf,strcat('../Plots/stat_by_odom/all_trans.emf'));
saveas(gcf,strcat('../Plots/stat_by_odom/all_trans.png'));

# Rot error
boxplot(all_rot, all_rot_group);
ylim([0, 3.2]);
set(gca, "xtick", [0 10 20 30], 'xticklabel', ['wheel'; 'realsense'; 'zed'; 'orb']);
ylabel('Rotation Error (r)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',10);
pbaspect([4 3]);
saveas(gcf,strcat('../Plots/stat_by_odom/all_rot.emf'));
saveas(gcf,strcat('../Plots/stat_by_odom/all_rot.png'));