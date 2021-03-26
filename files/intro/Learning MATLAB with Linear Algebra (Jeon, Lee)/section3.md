Matrices and Matrix Algebra
===========================

Operations on Matrices
----------------------

No MATLAB problems in this section.

Inverses; Algebraic Properties of Matrices
------------------------------------------

In this problem, we compute $A^{5} - 3A^{3} + 7A - 4I$ for the matrix
$A$, where
$$A = \left[\begin{array}{rrrr} 1&\hspace{3mm} 2&\hspace{1mm} -3&\hspace{2mm} 0\\ 1 & 1 & -2 & 1 \\ 2 & 1 & 3 & 4 \\ -3 & 2 & 2 & -8 \end{array} \right].$$

1.  Using the syntax $A$$\hat{}$$k$ which produces the $k$-th power of a
    square matrix and the command *eye* for the identity matrix, compute
    the above matrix polynomial.

2.  Using the command *polyvalm*, compute the above matrix polynomial.

3.  Tell what happens if you type the syntax $A.$$\hat{}$$k$.

<!-- -->


    % Construct the matrix A.
    A = [1 2 -3 0; 1 1 -2 1; 2 1 3 4; -3 2 2 -8]; 

    % (a)
    result_a = A^5 + (-3)*A^3 + 7*A + (-4)*eye(4);

    % Display the matrix polynomial.
    disp('The result of the matrix polynomial is');
    disp(result_a) 

    % (b)
    % Coefficient of the matrix polynomial.
    coeff_poly = [1 0 -3 0 7 -4]; 

    % Evaluate the matrix polynomial of coefficient
    % with coeff_poly vector with the input matrix A.
    result_b = polyvalm(coeff_poly, A);

    % Display the matrix polynomial.
    disp('The result of the matrix polynomial is');
    disp(result_b);

    % (c)
    disp('The result of A.^2 is'); disp(A.^2);
    disp('The result of A.^3 is'); disp(A.^3);
    disp('The result of A.^4 is'); disp(A.^4);


    The result of the matrix polynomial is
             874       -1272         -39        3021
            2580       -2306        -723        7536
            5191       -4121       -2444       14563
          -16852       12539        5649      -46917

    The result of the matrix polynomial is
             874       -1272         -39        3021
            2580       -2306        -723        7536
            5191       -4121       -2444       14563
          -16852       12539        5649      -46917

    The result of A.^2 is
         1     4     9     0
         1     1     4     1
         4     1     9    16
         9     4     4    64

    The result of A.^3 is
         1     8   -27     0
         1     1    -8     1
         8     1    27    64
       -27     8     8  -512

    The result of A.^4 is
               1          16          81           0
               1           1          16           1
              16           1          81         256
              81          16          16        4096

From the results, we can see that the syntax $A.$$\hat{}$$k$ produces
the entrywise $k$-th powers of the matrix $A$.

Elementary Matrices; A Method for Finding $A^{-1}$
--------------------------------------------------

In this problem, we solve the linear system $A \mathbf{x} = \mathbf{b}$
by using matrix inversion, where
$$A = \left[\begin{array}{rrrr} 3 &\hspace{2.5mm} 3 & -4 & -3 \\ 0 & 6 & 1 & 1\\ 5 & 4 & 2 & 1 \\ 2 & 3 & 3 & 2 \end{array} \right] \hspace{2mm} \mathrm{and} \hspace{3mm} \textbf{b} = \left[\begin{array}{r} -2 \\ 3 \\ 5 \\ 1 \end{array} \right].$$

1.  Use the MATLAB command *inv* or the syntax $A$$\hat{}$$(-1)$ to find
    the inverse of $A$.

2.  Display the output matrix as a rational form, NOT decimally. You may
    use the command *format*.

3.  Using the result of (a), compute the solution of the linear system
    $A \mathbf{x} = \mathbf{b}$ by taking
    $\mathbf{x} = A^{-1} \mathbf{b}$.

<!-- -->


    % Construct the matrix A and the right-hand-side vector b.
    A = [3 3 -4 -3; 0 6 1 1; 5 4 2 1; 2 3 3 2]; 
    b = [-2 3 5 1]'; 

    % (a)
    % Use the command inv.
    Inv_A1 = inv(A); 

    % Use the syntax A^(-1).
    Inv_A2 = A^(-1); 

    % (b)
    format rat; 
    disp('The result of the command inv is'); disp(Inv_A1);
    disp('The result of the syntax A^(-1) is'); disp(Inv_A2);

    % (c)
    % Since A is invertible, the solution to Ax=b is x=A^(-1)*b.
    x = Inv_A1 * b;
    disp('The solution to Ax=b is x = A^(-1)*b'); disp(x');


    The result of the command inv is
     -7    5   12  -19
      3   -2   -5    8
     41  -30  -69  111
    -59   43   99 -159

    The result of the syntax A^(-1) is
     -7    5   12  -19
      3   -2   -5    8
     41  -30  -69  111
    -59   43   99 -159

    The solution to Ax=b is x = A^(-1)*b
        70      -29     -406      583

Subspaces and Linear Independence
---------------------------------

(*Sigma notation*)\
Compute the linear combination
$$\mathbf{v}=\Sigma_{j=1}^{25} c_{j}\mathbf{v}_{j}$$ for $c_{j}=1/j$ and
$\mathbf{v}_{j}=(\sin j, \cos j).$


    v=zeros(1,2);
    for i=1:25
        v=v+(1/i)*[sin(i), cos(i)];
    end
    disp(v);


    1.0322    0.0553

Let $\mathbf{v_{1}}=(4, 3, 2, 1)$, $\mathbf{v_{2}}=(5, 1, 2, 4)$,
$\mathbf{v_{3}}=(7, 1, 5, 3)$, $\mathbf{x}=(16, 5, 9, 8)$, and
$\mathbf{y}=(3, 1, 2, 7)$. Determine whether $\mathbf{x}$ and
$\mathbf{y}$ lie in
$\textrm{span}\{\mathbf{v_{1}}, \mathbf{v_{2}}, \mathbf{v_{3}}\}$.


    % Construct v1, v2, v3, x, y
    v1=[4 3 2 1]'; v2=[5 1 2 4]'; v3=[7 1 5 3]';
    x=[16 5 9 8]'; y=[3 1 2 7]';

    % Augmented matrices [v1|v2|v3|x] and [v1|v2|v3|y]
    X=[v1 v2 v3 x];
    Y=[v1 v2 v3 y];

    disp('Reduced row echelon form of [v1 v2 v3 x] is');
    disp(rref(X));
    disp('Reduced row echelon form of [v1 v2 v3 y] is');
    disp(rref(Y));


    Reduced row echelon form of [v1 v2 v3 x] is
           1              0              0              1       
           0              1              0              1       
           0              0              1              1       
           0              0              0              0       

    Reduced row echelon form of [v1 v2 v3 y] is
           1              0              0              0       
           0              1              0              0       
           0              0              1              0       
           0              0              0              1      

Therefore, $\mathbf{x}$ lies in
$\textrm{span}\{\mathbf{v_{1}}, \mathbf{v_{2}}, \mathbf{v_{3}}\}$ and
$\mathbf{y}$ does not lie in
$\textrm{span}\{\mathbf{v_{1}}, \mathbf{v_{2}}, \mathbf{v_{3}}\}$.

The Geometry of Linear Systems
------------------------------

No MATLAB problems in this section.

Matrices with Special Forms
---------------------------

(*Inverting $(I-A)$*)

1.  (*Inverting $(I-A)$ when $A$ is nilpotent*) Using MATLAB, show that
    the matrix
    $$A = \left[\begin{array}{rrr} 2&\quad 11&\quad 3\\ -2 & -11 & -3\\ 8 & 35 & 9 \end{array} \right]$$
    is nilpotent, and then use Theorem 3.6.6 in the text book to compute
    $(I-A)^{-1}$. Check your answer by computing the inverse directly in
    MATLAB.

2.  (*Approximating $(I-A)^{-1}$ by a power series*) Using MATLAB,
    confirm that the matrix
    $$A = \left[\displaystyle\begin{array}{rrr} 0&\quad \displaystyle\frac{1}{4}&\quad \displaystyle\frac{1}{8}\\ \displaystyle\frac{1}{4} & \displaystyle\frac{1}{8} & \displaystyle\frac{1}{10}\\ \displaystyle\frac{1}{8} & \displaystyle\frac{1}{10} & \displaystyle\frac{1}{10} \end{array} \right]$$
    satisfies the condition in Theorem 3.6.7 of the text book. You may
    use the command *sum*. Since $A$ satisfies that condition, $(I-A)$
    is invertible and can be expressed by the series in Formula (18) in
    Section 3.6 of the text book. Compute the approximation
    $$(I-A)^{-1}\approx I+A+A^2+A^3+\cdots+A^{10},$$ and compare it with
    the inverse of $I-A$ produced directly by MATLAB. To how many
    decimal places do the results agree? You may use the command
    *format* to display the output with long digits.

``

1.  % (a)-i
        A = [ 2 11 3 ; -2 -11 -3; 8 35 9];  % Construct the matrix A.
        % Compute the A^2, A^3, ... , and display.
        disp('A^2 is'); disp(A^2);
        disp('A^3 is'); disp(A^3);

        % (a)-ii Comparing two result

        % By Theorem 3.6.6, (I-A)^(-1)=I+A+A^2.
        result1=eye(3)+A+A^2;  

        % Compute the inverse of (I-A) directly.
        result2=inv(eye(3)-A);
        disp('I+A+A^2 is'); disp(result1);
        disp('(I-A)^(-1) is'); disp(result2);

        % Display as a rational form.
        format rat; 
        disp('Rational form of (I-A)^(-1) is');disp(result2);


        A^2 is
             6     6     0
            -6    -6     0
            18    18     0

        A^3 is
             0     0     0
             0     0     0
             0     0     0

        I+A+A^2 is
             9    17     3
            -8   -16    -3
            26    53    10

        (I-A)^(-1) is
            9.0000   17.0000    3.0000
           -8.0000  -16.0000   -3.0000
           26.0000   53.0000   10.0000

        Rational form of (I-A)^(-1) is
               9             17              3       
              -8            -16             -3       
              26             53             10       

    Since $A^{3} = \mathbf{0}$, $A$ is nilpotent. By the Theorem
    $3.6.6$, since $A^{3} = \mathbf{0}$, $I-A$ is invertible and
    $(I-A)^{-1} = I + A + A^{2}.$ To check answer by computing the
    inverse directly in MATLAB, we implement as in the next page.

2.  % Construct the matrix A.
        A=[0 1/4 1/8; 1/4 1/8 1/10; 1/8 1/10 1/10]; 

        % Check that the condition in Theorem 3.6.7 
        % of the text book is satisfied for matrix A.
        column_sum=sum(abs(A),1);   % column-wise sum 
        row_sum=sum(abs(A),2);  % row-wise sum
        disp('The sum of the absolute values of the entries in each column is');
        disp(column_sum);
        disp('The sum of the absolute values of the entries in each row is');
        disp(row_sum);

        result3=eye(size(A))+A+A^2+A^3+A^4+A^5+A^6+A^7+A^8+A^9+A^10;
        result4=inv(eye(3)-A);

        format long;    % Display the result with long digits
        disp('With format long');
        disp('Approximated inv(I-A) is'); disp(result3);
        disp('Exact inv(I-A) is'); disp(result4);


        The sum of the absolute values of the entries in each column is
               3/8           19/40          13/40    

        The sum of the absolute values of the entries in each row is
               3/8     
              19/40    
              13/40    

        With format long
        Approximated inv(I-A) is
           1.108587459181130   0.338615080927493   0.191581699462210
           0.338615080927493   1.260966638806045   0.187122081247432
           0.191581699462210   0.187122081247432   1.158500720998029

        Exact inv(I-A) is
           1.108610894508188   0.338643199287067   0.191600757491367
           0.338643199287067   1.261000334187368   0.187144925921800
           0.191600757491367   0.187144925921800   1.158516208087334

    The approximation result agrees with the exact result to 2 decimal
    places.

Matrix Factorizations; $LU$-Decomposition
-----------------------------------------

(*LU-decompositions*) In this problem, we find an $LU$-decomposition of
$A$, where $A$ is given in the of the Section $3.7$.

1.  Find an $LU$-decomposition of $A$ by following the procedure given
    in the Example $2$.

2.  Solve the linear system $A \mathbf{x} = \mathbf{b}$ by using the
    $LU$-decomposition of $A$ obtained in (a), where
    $\textbf{b} = \left[\begin{array}{r} 0 \\ -2 \\ 1 \end{array} \right].$

3.  Tell what happens if you use the MATLAB command *lu* of $A$. Explain
    why this result differs from the result in (a).

<!-- -->


    %(a)
    A = [6 -2 0; 9 -1 1; 3 7 5]; % Set the matrix A.

    format rat; % Display results as a rational form.

    % Initialization of U and L.
    U = A; L = eye(3); 

    % Multiply the first row by 1/6.
    U(1,:)=(1/6)*U(1,:); 
    % L(1,1) is the inverse of 1/6.
    L(1,1)=(1/6)^(-1); 

    % Add (-9) times the first to the second.
    U(2,:)=((-9)*U(1,:))+U(2,:);
    % L(2,1) is the negative of (-9).
    L(2,1)=-(-9); 

    % Add (-3) times the first to the third.
    U(3,:)=((-3)*U(1,:))+U(3,:); 
    % L(3,1) is the negative of (-3).
    L(3,1)=-(-3); 

    % Multiply the second row by 1/2.
    U(2,:)=(1/2)*U(2,:);
    % L(2,2) is the inverse of 1/2.
    L(2,2)=(1/2)^(-1); 

    % Add (-8) times the second to the third.
    U(3,:)=((-8)*U(2,:))+U(3,:); 
    % L(3,2) is the negative of (-8).
    L(3,2)=-(-8); 

    disp('A is'); disp(A);
    disp('The Lower Triangular part L is'); disp(L);
    disp('The Upper Triangular part U is'); disp(U);
    disp('The product L*U is'); disp(L*U);

    %(b)
    % Solve the linear system Ax=b 
    % by using the LU-decomposition obtained in (a).

    % First, let us solve L*y = b by forward substitution.
     % Set the right-hand-side vector b.
    b = [0 -2 1]';

     % Initialization of the solution vector y.
    y = zeros(3, 1);
    y(1) = b(1) / L(1, 1);
    y(2) = (b(2) - (L(2, 1)*y(1))) / L(2, 2);
    y(3) = (b(3) - (L(3, 1)*y(1)) - (L(3, 2)*y(2))) / L(3, 3);

    % Next, let us solve U*x = y by backward substitution.
    x = zeros(3, 1); % Initialization of the solution vector x.
    x(3) = y(3) / U(3, 3);
    x(2) = (y(2) - (U(2, 3)*x(3))) / U(2, 2);
    x(1) = (y(1) - (U(1, 3)*x(3)) - (U(1, 2)*x(2))) / U(1, 1);

    disp('The solution to Ax=b by the LU-decomposition is'); disp(x');

    % (c)
    fprintf('Using MATLAB command lu\n');
    % LU decomposition of A with a permutation matrix.
    [L U P] = lu(A);

    disp('Lower triangular part L is'); disp(L);
    disp('Upper triangular part U is'); disp(U);
    disp('The permutation matrix P is'); disp(P);
    disp('PA='); disp(P*A); disp('LU='); disp(L*U);


    A is
           6             -2              0
           9             -1              1
           3              7              5

    The Lower Triangular part L is
           6              0              0
           9              2              0
           3              8              1

    The Upper Triangular part U is
           1             -1/3            0
           0              1              1/2
           0              0              1

    The product L*U is
           6             -2              0
           9             -1              1
           3              7              5

    The solution to Ax=b by the LU-decomposition is
         -11/6          -11/2            9

    Using MATLAB command lu

    Lower triangular part L is
           1              0              0
           1/3            1              0
           2/3           -2/11           1
    Upper triangular part U is
           9             -1              1
           0             22/3           14/3
           0              0              2/11
    The permutation matrix P is
           0              1              0
           0              0              1
           1              0              0
    PA=
           9             -1              1
           3              7              5
           6             -2              0
    LU=
           9             -1              1
           3              7              5
           6             -2              0

Since the permutation matrix $P$ is not the identity matrix, the MATLAB
command *lu* gave us an $LU$-decomposition after multiplying $A$ by the
permutation matrix $P$, hence, this decomposition is a
$PLU$-decomposition of $A$ because $PA=LU$. Since at least one row
interchange of $A$ occurred in the process of $LU$-decomposition, this
result is different from the previous decomposition obtained in $(a)$.

(*LU-decomposition*)

1.  The MATLAB command *lu* is used to find the $LU$-decomposition of a
    matrix $A$. Tell what happens if you use the command $lu$ for $A$,
    where $A$ is given in the Example 2 of the Section 3.7. Explain why
    this result differs from the result in the textbook.

2.  Using MATLAB, observe what happens when you try to find an
    $LU$-decomposition of a singular matrix.

<!-- -->


    % (a)
    % Construct the matrix A.
    A=[6 -2 0; 9 -1 1; 3 7 5]; 

    % LU decomposition of A.
    [L U P]=lu(A); 
    disp('[L U P]=lu(A)');
    disp('L'); disp(L); disp('U'); disp(U); disp('P'); disp(P);

    % (b)
    % Construct the some singular matrices.
    A1=[1 0 0; -2 0 0; 4 6 1]; 
    A2=[1 -2 7; -4 8 5; 2 -4 3];
    A3=[1 0 0; -2 0 0; 4 6 1]; 

    % LU decompositions of them.
    [L1 U1 P1]=lu(A1); [L2 U2 P2]=lu(A2); [L3 U3 P3]=lu(A3); 
    disp('[L1 U1 P1]=lu(A1)'); disp('L1');disp(L1);disp('U1');disp(U1);
    disp('[L2 U2 P2]=lu(A2)'); disp('L2');disp(L2); disp('U2');disp(U2);
    disp('[L3 U3 P3]=lu(A3)'); disp('L3');disp(L3); disp('U3');disp(U3);


    [L U P]=lu(A)
    L
        1.0000         0         0
        0.3333    1.0000         0
        0.6667   -0.1818    1.0000

    U
        9.0000   -1.0000    1.0000
             0    7.3333    4.6667
             0         0    0.1818

    P
         0     1     0
         0     0     1
         1     0     0


    [L1 U1 P1]=lu(A1)
    L1
        1.0000         0         0
       -0.5000    1.0000         0
        0.2500   -0.5000    1.0000
    U1
        4.0000    6.0000    1.0000
             0    3.0000    0.5000
             0         0         0
             
    [L2 U2 P2]=lu(A2)
    L2
        1.0000         0         0
       -0.2500    1.0000         0
       -0.5000         0    1.0000
    U2
       -4.0000    8.0000    5.0000
             0         0    8.2500
             0         0    5.5000
             
    [L3 U3 P3]=lu(A3)
    L3
        1.0000         0         0
       -0.5000    1.0000         0
        0.2500   -0.5000    1.0000
    U3
        4.0000    6.0000    1.0000
             0    3.0000    0.5000
             0         0         0
             

*Remark on (a).* Since the permutation matrix $P$ is not the identity
matrix, the MATLAB command *lu* gave us an $LU$-decomposition after
multiplying $A$ by the permutation matrix $P$, hence, this decomposition
is a $PLU$-decomposition of $A$ because $PA=LU$. Since at least one row
interchange of $A$ occurred in the process of $LU$-decomposition, this
result is different from the decomposition result in the textbook.

*Remark on (b).* When we try $LU$-decomposition of the sigular matrices
using the MATLAB command *lu*, the resulting upper triangular matrices
are singular.
