%% PreProgess
clear;
close;
clc;
for i = 1:1
    p = [];
    for j = 1:5

        S1 = '04QCB76718400JB630001092-0.5C-100%DOD-';
        S2 = '.csv';

        q = readmatrix([S1, num2str(j), S2]);
        [m, n] = size(q);
        if n == 26 
            k = 6;
            for k = 6:-1:1
                a = [10, 12, 14, 16, 18, 20];
                q(:, a(k)) = [];
            end
            q(:, 21) = 0;
        end
        if n == 27 
            k = 6;
            for k = 6:-1:1
                a = [10, 12, 14, 16, 18, 20];
                q(:, a(k)) = [];
            end
        end
        [m, n] = size(q);
        if n == 21 
            for k = 4:-1:1
                a = [17, 18, 19, 20];
                q(:, a(k)) = [];
            end

        end
        p = [p; q];
    end
    mark1 = [];
    for k = 1:length(p) - 1
        if p(k, 3) + 1 == p(k+1, 3)
            mark1 = [mark1, k];
        end
    end
    p([mark1 + 1], :) = [];

    mark = [];
    for k = 1:length(p) - 1
        if p(k, 2) + 1 == p(k+1, 2)
            mark = [mark, k];
        end
    end
    p([mark + 1], :) = [];
    mark = [];
    for k = 1:length(p) - 1
        if p(k, 2) + 1 == p(k+1, 2)
            mark = [mark, k];
        end
    end
    mark = [0, mark, length(p)];
    mark = diff(mark);
    q = mat2cell(p, mark);
    LIB1092 = q;
    length(q);
    %     save(strcat('LIB0129', num2str(i)), 'LIB0129');
    save('LIB1092', 'LIB1092');
end
