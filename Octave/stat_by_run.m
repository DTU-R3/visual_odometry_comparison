clc; close all; clear all;
## Read CSV files
fname = "few_fast_dynamic_3";
data = csvread(strcat("../Octave/", fname, "_fill.csv"), 1, 0);
x_names = {'odom'; 'realsense'; 'zed'; 'orb'};
figure;

## Boxplot
pkg load statistics;

## Trans
error = data(:,19:2:25);
boxplot(error);
ylim([0, 10]);
set(gca, "xtick", [1 2 3 4], 'xticklabel',x_names);
ylabel('Translation Error (m)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',20);
saveas(gcf,strcat('../Plots/stat_by_run/', fname, "_trans.emf"));

## Rot
error = data(:,20:2:26);
boxplot(error);
ylim([0, 3.2]);
set(gca, "xtick", [1 2 3 4], 'xticklabel',x_names);
ylabel('Rotation Error (m)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',20);
saveas(gcf,strcat('../Plots/stat_by_run/', fname, "_rot.emf"));
