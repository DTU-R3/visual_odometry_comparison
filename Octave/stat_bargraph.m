clc; close all; clear all;
## Read CSV files
data = csvread("../stat.csv", 1, 3);
x_names = ['odom'; 'realsense'; 'zed'; 'orb'];
figure;

## Bar graph for all
error_sum = zeros(4,6);
for row = 1:4
  for col = 1:6
    error_sum(row, col) = mean(data(row:(row+4):(92+row), col));
  end
end
# bar(error_sum);
boxplot(error_sum);
l = legend('mean\_trans\_error', 'mean\_rot\_error', 'last\_trans\_error', 'last\_rot\_error', 'max\_trans\_error', 'max\_rot\_error', 'Location','northeastoutside');
legend boxoff;
set(gca,'xticklabel',x_names);
ylabel('Error');
set(gca, 'FontName', 'arial');
set(l, 'FontName', 'arial');
set(gca,'FontSize',20);
set(l,'FontSize',10);
saveas(gcf,'../Plots/stat_bargraph/error.emf');

## Bar graph for each run
run_names = ["mss"; "msd"; "mfs"; "mfd"; "fss"; "fsd"; "ffs"; "ffd"];
for run = 1:24
  error = data((run*4-3):(run*4), :);
  bar(error);
  l = legend('mean\_trans\_error', 'mean\_rot\_error', 'last\_trans\_error', 'last\_rot\_error', 'max\_trans\_error', 'max\_rot\_error', 'Location','northeastoutside');
  legend boxoff;
  set(gca,'xticklabel',x_names);
  ylabel('Error');
  set(gca, 'FontName', 'arial');
  set(l, 'FontName', 'arial');
  set(gca,'FontSize',20);
  set(l,'FontSize',10);
  saveas(gcf,strcat('../Plots/stat_bargraph/', run_names(floor((run-1)/3)+1, :), '_', num2str(rem((run-1),3)+1), '.emf'));
end
