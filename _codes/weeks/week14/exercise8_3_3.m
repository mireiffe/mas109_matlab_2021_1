[V, D]=eig(A);
sum_A=0;
for i=1:size(A,1)
    % spectral decomposition
    sum_A=sum_A+D(i,i)*V(:,i)*V(:,i)';
    
    fprintf('lambda_%d is %f \n', i, D(i,i));
    fprintf('corresponding u_%d is \n', i);
    disp(V(:,i));
end

disp('spectral decomposition of A is'); disp(sum_A);
disp('A is'); disp(A);