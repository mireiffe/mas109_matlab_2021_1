 %--- This is a function file myQR.m ---%

 function [Q, R]=myQR(A)
     Q = GramSchmidt(A);
     R = Q'*A;
 end