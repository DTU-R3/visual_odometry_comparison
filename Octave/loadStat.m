clc; close all; clear all;
## Read CSV files
M = struct;
M.many_slow_static = csvread("../Octave/many_slow_static_fill.csv",1,0);
M.many_slow_static_2 = csvread("../Octave/many_slow_static_2_fill.csv",1,0);
M.many_slow_static_3 = csvread("../Octave/many_slow_static_3_fill.csv",1,0);
M.many_slow_dynamic = csvread("../Octave/many_slow_dynamic_fill.csv",1,0);
M.many_slow_dynamic_2 = csvread("../Octave/many_slow_dynamic_fill.csv",1,0);
M.many_slow_dynamic_3 = csvread("../Octave/many_slow_dynamic_3_fill.csv",1,0);
M.few_slow_static = csvread("../Octave/many_slow_static_fill.csv",1,0);
M.few_slow_static_2 = csvread("../Octave/few_slow_static_2_fill.csv",1,0);
M.few_slow_static_3 = csvread("../Octave/few_slow_static_3_fill.csv",1,0);
M.few_slow_dynamic = csvread("../Octave/few_slow_dynamic_fill.csv",1,0);
M.few_slow_dynamic_2 = csvread("../Octave/few_slow_dynamic_fill.csv",1,0);
M.few_slow_dynamic_3 = csvread("../Octave/few_slow_dynamic_3_fill.csv",1,0);
M.many_fast_static = csvread("../Octave/many_fast_static_fill.csv",1,0);
M.many_fast_static_2 = csvread("../Octave/many_fast_static_2_fill.csv",1,0);
M.many_fast_static_3 = csvread("../Octave/many_fast_static_3_fill.csv",1,0);
M.many_fast_dynamic = csvread("../Octave/many_fast_dynamic_fill.csv",1,0);
M.many_fast_dynamic_2 = csvread("../Octave/many_fast_dynamic_fill.csv",1,0);
M.many_fast_dynamic_3 = csvread("../Octave/many_fast_dynamic_3_fill.csv",1,0);
M.few_fast_static = csvread("../Octave/few_fast_static_fill.csv",1,0);
M.few_fast_static_2 = csvread("../Octave/few_fast_static_2_fill.csv",1,0);
M.few_fast_static_3 = csvread("../Octave/few_fast_static_3_fill.csv",1,0);
M.few_fast_dynamic = csvread("../Octave/few_fast_dynamic_fill.csv",1,0);
M.few_fast_dynamic_2 = csvread("../Octave/few_fast_dynamic_fill.csv",1,0);
M.few_fast_dynamic_3 = csvread("../Octave/few_fast_dynamic_3_fill.csv",1,0);

x_names = {'mss'; 'msd';
          'fss'; 'fsd';
          'mfs'; 'mfd';
          'ffs'; 'ffd'};
     
fn = fieldnames(M);

all_trans = [];
all_trans_group = [];
all_rot = [];
all_rot_group = [];

## save('data.mat','M');