close all;
figure;
## Boxplot
pkg load statistics;

odom = 4;  ## 'odom'; 'realsense'; 'zed'; 'orb'

# Trans error
trans_data = [];
trans_group = [];
for run = 1:8
  for test = 1:3  
    trans_data = [trans_data; M.(fn{(run-1)*3+test})(:,17+2*odom)];
    trans_group = [trans_group; (9*odom-9+run)*ones(length(M.(fn{(run-1)*3+test})(:,17+2*odom)), 1)];
  endfor
endfor
all_trans = [all_trans; trans_data];
all_trans_group = [all_trans_group; trans_group];
boxplot(trans_data, trans_group);
ylim([0, 10]);
set(gca, "xtick", [(9*odom-8):(9*odom-1)], 'xticklabel',x_names);
ylabel('Translation Error (m)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',8);
pbaspect([0.5 1]);
saveas(gcf,strcat('../Plots/stat_by_odom/orb_trans.emf'));


# Rot error
rot_data = [];
rot_group = [];
for run = 1:8
  for test = 1:3  
    rot_data = [rot_data; M.(fn{(run-1)*3+test})(:,18+2*odom)];
    rot_group = [rot_group; (9*odom-9+run)*ones(length(M.(fn{(run-1)*3+test})(:,18+2*odom)), 1)];
  endfor
endfor
all_rot = [all_rot; rot_data];
all_rot_group = [all_rot_group; rot_group];
boxplot(rot_data, rot_group);
ylim([0, 3.2]);
set(gca, "xtick", [(9*odom-8):(9*odom-1)], 'xticklabel',x_names);
ylabel('Rotation Error (rad)');
set(gca, 'FontName', 'arial');
set(gca,'FontSize',8);
pbaspect([0.5 1]);
saveas(gcf,strcat('../Plots/stat_by_odom/orb_rot.emf'));

## save('all_data.mat','all_rot','all_rot_group','all_trans','all_trans_group');