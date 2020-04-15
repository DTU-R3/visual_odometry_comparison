close all;
time = floor(data(:,1) / 10^9);
time_index = zeros(max(time)-min(time), 1);
data_agg = zeros(max(time)-min(time), 15);
for t = 1:size(data_agg,1)
  time_index(t) = min(time)+t-1;
  data_agg(t,:) = mean(data(time==(min(time)+t-1),4:18));
endfor


msize = 2;

f = figure;
subplot(2,1,1);
## X-time plots
plot(time_index, data_agg(:,1), '+', 'MarkerSize', msize);
hold on;
plot(time_index, data_agg(:,4), 'o', 'MarkerSize', msize);
plot(time_index, data_agg(:,7), '*', 'MarkerSize', msize);
plot(time_index, data_agg(:,10), 'x', 'MarkerSize', msize);
plot(time_index, data_agg(:,13), 's', 'MarkerSize', msize);
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(time_index) max(time_index)]);
xlabel('timestamp (second)');
ylabel('X position (m)');
##set(gca,'FontSize',40)
set(l,'FontSize',5)
hold off
##saveas(gcf,strcat('../Plots/stat_by_odom/x.emf'));
##saveas(gcf,strcat('../Plots/stat_by_odom/x.png'));

subplot(2,1,2);
## Y-time plots
plot(time_index, data_agg(:,2), '+', 'MarkerSize', msize);
hold on;
plot(time_index, data_agg(:,5), 'o', 'MarkerSize', msize);
plot(time_index, data_agg(:,8), '*', 'MarkerSize', msize);
plot(time_index, data_agg(:,11), 'x', 'MarkerSize', msize);
plot(time_index, data_agg(:,14), 's', 'MarkerSize', msize);
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(time_index) max(time_index)]);
xlabel('timestamp (second)');
ylabel('Y position (m)');
##set(gca,'FontSize',40)
set(l,'FontSize',5)
hold off
saveas(gcf,strcat('../Plots/stat_by_odom/x-y.emf'));
saveas(gcf,strcat('../Plots/stat_by_odom/x-y.png'));

f = figure;
subplot(2,1,1);
## Theta-time plots
plot(time_index, data_agg(:,3), '+', 'MarkerSize', msize);
hold on;
plot(time_index, data_agg(:,6), 'o', 'MarkerSize', msize);
plot(time_index, data_agg(:,9), '*', 'MarkerSize', msize);
plot(time_index, data_agg(:,12), 'x', 'MarkerSize', msize);
plot(time_index, data_agg(:,15), 's', 'MarkerSize', msize);
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(time_index) max(time_index)]);
xlabel('timestamp (second)');
ylabel('Theta position (rad)');
##set(gca,'FontSize',40)
set(l,'FontSize',5)
hold off
saveas(gcf,strcat('../Plots/stat_by_odom/theta.emf'));
saveas(gcf,strcat('../Plots/stat_by_odom/theta.png'));
