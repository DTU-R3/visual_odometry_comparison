## X-Y plot
plot(data(:,4), data(:,5), 'r');
l = legend('Encoder', 'Location','northeast');
xlabel('X position');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/odom"), '.png']);

plot(data(:,7), data(:,8), 'g');
l = legend('Realsense', 'Location','northeast');
xlabel('X position');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/realsense"), '.png']);

plot(data(:,10), data(:,11), 'b');
l = legend('ORB', 'Location','northeast');
xlabel('X position');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/orb"), '.png']);

plot(data(:,13), data(:,14), 'c');
l = legend('Zed', 'Location','northeast');
xlabel('X position');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/zed"), '.png']);

plot(data(:,16), data(:,17), 'm');
l = legend('OptiTrack', 'Location','northeast');
xlabel('X position');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/optiTrack"), '.png']);

## X-time plots
plot(data(:,1), data(:,4), 'rx');
hold on;
plot(data(:,1), data(:,7), 'gx');
plot(data(:,1), data(:,10), 'bx');
plot(data(:,1), data(:,13), 'cx');
plot(data(:,1), data(:,16), 'mx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('X position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/x"), '.png']);


## Y-time plots
plot(data(:,1), data(:,5), 'rx');
hold on;
plot(data(:,1), data(:,8), 'gx');
plot(data(:,1), data(:,11), 'bx');
plot(data(:,1), data(:,14), 'cx');
plot(data(:,1), data(:,17), 'mx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Y position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/y"), '.png']);

## Theta-time plots
plot(data(:,1), data(:,6), 'rx');
hold on;
plot(data(:,1), data(:,9), 'gx');
plot(data(:,1), data(:,12), 'bx');
plot(data(:,1), data(:,15), 'cx');
plot(data(:,1), data(:,18), 'mx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'OptiTrack', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Theta position');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/theta"), '.png']);

## Trans_err-time plots
plot(data(:,1), data(:,19), 'rx');
hold on;
plot(data(:,1), data(:,21), 'gx');
plot(data(:,1), data(:,25), 'bx');
plot(data(:,1), data(:,23), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Translation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/trans"), '.png']);

## Rot_err-time plots
plot(data(:,1), data(:,20), 'rx');
hold on;
plot(data(:,1), data(:,22), 'gx');
plot(data(:,1), data(:,26), 'bx');
plot(data(:,1), data(:,24), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Rotation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/rot"), '.png']);

## Smooth Trans error
wndw = 200; ## sliding window size
for i = 19:26
  data(:,i) = filter(ones(wndw,1)/wndw, 1, data(:,i));
endfor

## Trans_err-time plots
plot(data(:,1), data(:,19), 'rx');
hold on;
plot(data(:,1), data(:,21), 'gx');
plot(data(:,1), data(:,25), 'bx');
plot(data(:,1), data(:,23), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Translation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/trans_smooth"), '.png']);

## Rot_err-time plots
plot(data(:,1), data(:,20), 'rx');
hold on;
plot(data(:,1), data(:,22), 'gx');
plot(data(:,1), data(:,26), 'bx');
plot(data(:,1), data(:,24), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Rotation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/rot_smooth"), '.png']);

## Incremental error
data_num = size(data,1);
incre_error = zeros(data_num, 8);
for i = 1:8
  incre_error(:,i) = gradient(data(:, i+18));
endfor

## Incre trans error plots
plot(data(:,1), incre_error(:,1), 'rx');
hold on;
plot(data(:,1), incre_error(:,3), 'gx');
plot(data(:,1), incre_error(:,7), 'bx');
plot(data(:,1), incre_error(:,5), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Incremental translation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/incre_trans"), '.png']);

## Incre rot error plots
plot(data(:,1), incre_error(:,2), 'rx');
hold on;
plot(data(:,1), incre_error(:,4), 'gx');
plot(data(:,1), incre_error(:,8), 'bx');
plot(data(:,1), incre_error(:,5), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Incremental rotation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/incre_rot"), '.png']);

## Smooth Incre error
wndw = 50; ## sliding window size
for i = 1:8
  incre_error(:,i) = filter(ones(wndw,1)/wndw, 1, incre_error(:,i));
endfor

## Filter value
med = median(incre_error);
for i = 1:8
  incre_error(abs(incre_error(:,i))>abs(10000*med(i)),i) = 0;
endfor

## Incre trans error plots
plot(data(:,1), incre_error(:,1), 'rx');
hold on;
plot(data(:,1), incre_error(:,3), 'gx');
plot(data(:,1), incre_error(:,7), 'bx');
plot(data(:,1), incre_error(:,5), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Incremental translation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/incre_trans_filter"), '.png']);

## Incre rot error plots
plot(data(:,1), incre_error(:,2), 'rx');
hold on;
plot(data(:,1), incre_error(:,4), 'gx');
plot(data(:,1), incre_error(:,8), 'bx');
plot(data(:,1), incre_error(:,5), 'cx');
l = legend('Encoder', 'Realsense', 'ORB', 'Zed', 'Location','northeastoutside');
xlim([min(data(:,1)) max(data(:,1))]);
xlabel('timestamp');
ylabel('Incremental rotation error');
set(gca,'FontSize',40)
set(l,'FontSize',30)
hold off
img = getframe(gcf);
imwrite(img.cdata, [strcat('../Plots/', filename, "/incre_rot_filter"), '.png']);