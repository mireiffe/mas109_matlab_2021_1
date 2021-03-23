syms a b c d;
v1=[a b c d];
v2=[-b a d -c];
v3=[-c -d a b];
v4=[-d c -b a];

V=[v1; v2; v3; v4];
disp('det(V) is'); disp(simplify(det(V)));