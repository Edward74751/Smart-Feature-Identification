%function data_preprocess=()
p = [];
for j = 1:25

       S1 = 'D:\学习资料\北京理工大学\任务\5-23国家电网招标\1国家电网后续\公开数据集合\数据\CS2_35\CS2_35_.xlsx';
       S2 = '.csv';

    q = readmatrix([S1,  num2str(j), S2],2);
    [m, n] = size(q);
    p = [p; q];
end
