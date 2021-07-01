%--- The following is the function file 'reflect_pt.m'. ---%
function [x, y]=reflect_pt(a, b, ang)
theta=ang*(pi/180);
T = [cos(2*theta) sin(2*theta); sin(2*theta) -cos(2*theta)];
   
result=T*[a b]';
x=result(1); y=result(2);
end