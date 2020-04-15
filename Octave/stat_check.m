close all; clear all; clc;
load('data.mat');
figure;
## Boxplot
pkg load statistics;

# Trans error
trans_data = [];
trans_group = [];

trans_data = [trans_data; M.few_fast_dynamic(:,21)];
trans_group = [trans_group; ones(length(M.few_fast_dynamic(:,21)), 1)];
trans_data = [trans_data; M.few_fast_dynamic_2(:,21)];
trans_group = [trans_group; 2*ones(length(M.few_fast_dynamic_2(:,21)), 1)];
trans_data = [trans_data; M.few_fast_dynamic_3(:,21)];
trans_group = [trans_group; 3*ones(length(M.few_fast_dynamic_3(:,21)), 1)];
boxplot(trans_data, trans_group);
ylim([0, 10]);
set(gca, "xtick", [1:6], 'xticklabel',['ffd';'ffd2';'ffd3']);
ylabel('Translation Error (m)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',8);
saveas(gcf,strcat('../Plots/stat_check/realsense_ffd_trans.emf'));


# Rot error
rot_data = [];
rot_group = [];

rot_data = [rot_data; M.many_fast_dynamic(:,20)];
rot_group = [rot_group; ones(length(M.many_fast_dynamic(:,20)), 1)];
rot_data = [rot_data; M.many_fast_dynamic_2(:,20)];
rot_group = [rot_group; 2*ones(length(M.many_fast_dynamic_2(:,20)), 1)];
rot_data = [rot_data; M.many_fast_dynamic_3(:,20)];
rot_group = [rot_group; 3*ones(length(M.many_fast_dynamic_3(:,20)), 1)];
boxplot(rot_data, rot_group);
ylim([0, 3.2]);
set(gca, "xtick", [1:6], 'xticklabel',['mfd';'mfd2';'mfd3']);
ylabel('rotlation Error (rad)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',8);
saveas(gcf,strcat('../Plots/stat_check/odom_mfd_rot.emf'));