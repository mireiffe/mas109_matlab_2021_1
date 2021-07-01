%% summing odd numbers  (section 1)
s = 0;
%% for-loop             (section 2)
for i = 1:2:50
    s = s + i;
end
%% print results        (section 3)
fprintf('s = %d\n', s);