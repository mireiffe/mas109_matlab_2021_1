format short;

% given data
x = [19.880 20.919 21.735 23.375 24.361 25.375 25.979];
y = [68.874 67.676 66.692 64.385 62.908 61.292 60.277];

% number of data points.
[m, n]=size(x);

% construct the system matrix
A = [2*x' 2*y' ones(n,1)]; b = x.^2+y.^2;

% solve the normal equation
hks = inv(A'*A)*A'*b'
h = hks(1); k = hks(2); s = hks(3);

% compute the radius
r = sqrt(s+h^2+k^2);

figure;
theta = 0:0.01:2*pi;
xx = h+r*cos(theta);
yy = k+r*sin(theta);

% plot the obtained circle
plot(xx,yy);
hold on;

% plot the data points
plot(x, y, 'o');