clc; close all; clear all;
## Read CSV files
filename = "../Octave/many_slow_static";
data = csvread(strcat(filename, "_fill.csv"),1,0);
close all;
figure;
% mkdir(strcat('../Plots/', filename));