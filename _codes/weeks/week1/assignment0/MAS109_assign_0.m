function MAS109_assign_0(idn)
% MAS109 MATLAB assignment 0
% Input: Student ID number (an 8 digits number)
% Output: 6 digits hex number
%
% Author: Seongeun Kim
%         mireiffe@kaist.ac.kr

rng(idn);
res = randi([16^4, 16^6 - 1], 1, 1);
fprintf('%06X\n', res);
end