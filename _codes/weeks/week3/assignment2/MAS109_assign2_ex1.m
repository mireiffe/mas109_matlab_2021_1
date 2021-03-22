function MAS109_assign2_ex1(idn)
% MAS109 MATLAB assignment 2
% Input: Student ID number (an 8 digits number)
% Output: a message box
%
% Author: Seongeun Kim
%         mireiffe@kaist.ac.kr

rng(idn);
c1 = randi([0, 10], 3, 1);
rng(idn);
c2 = randi([30, 50], 2, 1);

stc1 = sort(c1);
stc2 = sort(c2);

eqx_ = sprintf("x = %dsin^3(t)", stc2(2));
eqy_ = sprintf("y = %dcos(t) - %dcos(2t) - %dcos(3t) - %dcos(4t)", ...
    stc2(1), stc1(3), stc1(2), stc1(1));

eqx = sprintf("\\fontsize{15} %s", eqx_);
eqy = sprintf("\\fontsize{15} %s", eqy_);

try
    CreateStruct.Interpreter = 'tex';
    CreateStruct.WindowStyle = 'non-modal';
    msgbox({eqx; eqy},'Assignment2, Exercise1', CreateStruct);
catch
    fprintf("%s\n%s\n", eqx_, eqy_);
end
end