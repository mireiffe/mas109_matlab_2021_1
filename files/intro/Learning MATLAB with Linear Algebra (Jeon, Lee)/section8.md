Diagonalization
===============

Matrix Representations of Linear Transformations
------------------------------------------------

Let $T : \mathbb{R}^{5} \rightarrow \mathbb{R}^{3}$ be the linear
operator given by the formula
$$T(x_{1}, x_{2}, x_{3}, \hspace{1mm} x_{4}, x_{5}) = (7x_{1}+12x_{2}-5x_{3}, \hspace{1mm} 3x_{1}+10x_{2}+13x_{4}+x_{5}, \hspace{1mm} -9x_{1}-x_{3}-3x_{5})$$
and let
$B = \{\mathbf{v}_{1}, \hspace{1mm} \mathbf{v}_{2}, \hspace{1mm} \mathbf{v}_{3}, \hspace{1mm} \mathbf{v}_{4}, \hspace{1mm} \mathbf{v}_{5}\}$
and
$B' = \{\mathbf{v}'_{1}, \hspace{1mm} \mathbf{v}'_{2}, \hspace{1mm} \mathbf{v}'_{3}\}$
be the bases for $\mathbb{R}^{5}$ and $\mathbb{R}^{3}$, respectively, in
which
$\mathbf{v}_{1} = (1, \hspace{1mm} 1, \hspace{1mm} 0, \hspace{1mm} 0, \hspace{1mm} 0)$,
$\mathbf{v}_{2} = (0, \hspace{1mm} 1, \hspace{1mm} 1, \hspace{1mm} 0, \hspace{1mm} 0)$,
$\mathbf{v}_{3} = (0, \hspace{1mm} 0, \hspace{1mm} 1, \hspace{1mm} 1, \hspace{1mm} 0)$,
$\mathbf{v}_{4} = (0, \hspace{1mm} 0, \hspace{1mm} 0, \hspace{1mm} 1, \hspace{1mm} 1)$,
$\mathbf{v}_{5} = (1, \hspace{1mm} 0, \hspace{1mm} 0, \hspace{1mm} 0, \hspace{1mm} 1)$,
$\mathbf{v}'_{1} = (1, \hspace{1mm} 2, \hspace{1mm} -1)$,
$\mathbf{v}'_{2} = (2, \hspace{1mm} 1, \hspace{1mm} 3)$, and
$\mathbf{v}'_{3} = (1, \hspace{1mm} 1, \hspace{1mm} 1)$.

1.  Find the matrix $[T]_{\tiny{B}', \tiny{B}}$.

2.  For the vector
    $\mathbf{x} = (3, \hspace{1mm} 7, \hspace{1mm} -4, \hspace{1mm} 5, \hspace{1mm} 1)$,
    find $[\mathbf{x}]_{\tiny{B}}$ and use the matrix obtained in
    part (a) to compute $[T(\mathbf{x})]_{\tiny{B}'}$.

3.  Find the factorization of \[$T$\] which is the standard matrix for
    the linear transformation $T$ using Formula (28) in Section 8.1.

<!-- -->

1.  v1 = [1 1 0 0 0]'; v2 = [0 1 1 0 0]'; v3 = [0 0 1 1 0]';
        v4 = [0 0 0 1 1]'; v5 = [1 0 0 0 1]';
        nv1 = [1 2 -1]'; nv2 = [2 1 3]'; nv3 = [1 1 1]';

        T = [7 12 -5 0 0; 3 10 0 13 1; -9 0 -1 0 -3];
        B1 = [v1 v2 v3 v4 v5]; B2 = [nv1 nv2 nv3];
        format short;

        % Find the matrix representation with respect to the bases B1 and B2.
        TB = T*B1;
        TB1B2 = B2\TB;

        disp('The matrix representation of T with respect to the basis B1 and B2 is');
        disp(TB1B2);


        The matrix representation of T with respect to the basis B1 and B2 is
           34.0000    5.0000  -22.0000  -11.0000   22.0000
           40.0000    2.0000  -40.0000  -25.0000   25.0000
          -95.0000   -2.0000   97.0000   61.0000  -65.0000

2.  % Find the coordinate vector of x with respect to the basis B1.
        x = [3 7 -4 5 1]';  x_B1 = B1\x; 
        disp('The coordinate vector of x with respect to the basis B is');
        disp(x_B1');

        % Find the coordinate vector of T(x) with respect to the basis B2.
        Tx_B2 = TB1B2 * x_B1;
        disp('The coordinate vector of T(x) with respect to the basis B'' is');
        disp(Tx_B2');


        The coordinate vector of x with respect to the basis B is
             9    -2    -2     7    -6

        The coordinate vector of T(x) with respect to the basis B' is
          131.0000  111.0000 -228.0000

3.  % Transition matrix from B to the standard basis for R^n.
        U=B1;

        % Transition matrix from B' to the standard basis for R^m.
        V=B2; 

        T=[7 12 -5 0 0 ; 3 10 0 13 1; -9 0 -1 0 -3];

        disp('V'); disp(V);
        disp('TB1B2'); disp(TB1B2);
        disp('inv(U)'); disp(inv(U));
        disp('V*TB1B2*inv(U)');disp(V*TB1B2*inv(U));
        disp('T'); disp(T);


        V
             1     2     1
             2     1     1
            -1     3     1

        TB1B2
           34.0000    5.0000  -22.0000  -11.0000   22.0000
           40.0000    2.0000  -40.0000  -25.0000   25.0000
          -95.0000   -2.0000   97.0000   61.0000  -65.0000

        inv(U)
            0.5000    0.5000   -0.5000    0.5000   -0.5000
           -0.5000    0.5000    0.5000   -0.5000    0.5000
            0.5000   -0.5000    0.5000    0.5000   -0.5000
           -0.5000    0.5000   -0.5000    0.5000    0.5000
            0.5000   -0.5000    0.5000   -0.5000    0.5000

        V*TB1B2*inv(U)
            7.0000   12.0000   -5.0000         0         0
            3.0000   10.0000         0   13.0000    1.0000
           -9.0000   -0.0000   -1.0000   -0.0000   -3.0000

        T
             7    12    -5     0     0
             3    10     0    13     1
            -9     0    -1     0    -3

Similarity and Diagonalizability
--------------------------------

1.  Show that the matrix
    $$A = \begin{bmatrix}-13&\hspace{1mm} -60&\hspace{1mm} -60\\ 10 & 42 & 40\\ -5 & -20 & -18 \end{bmatrix}$$
    is diagonalizable by finding the nullity of $\lambda I - A$ for each
    eigenvalue $\lambda$ with the use of Theorem 8.2.11 in the Section
    8.2.

2.  Find a basis for $\mathbb{R}^{3}$ consisting of eigenvectors of $A$.

``

1.  % For the exact computation of the eigenvalues, 
        % we use symbolic computation. 

        % Set A as a symbolic matrix.
        A = sym([-13 -60 -60; 10 42 40; -5 -20 -18]); 

        n = length(A);

        % Find the eigenvalues of A by using the command eig.
        eigenvalues = eig(A); 

        for j = 1 : n
            fprintf('The eigenvalue lambda is '); disp(eigenvalues(j));
            
            % nullity(lambda*I - A) = n - rank(lambda*I - A);
            nullity = n - rank((eigenvalues(j) * eye(n)) - A);
            
            fprintf('The nullity of (lambda*I - A) is '); disp(nullity);
        end

        % Since the geometric multiplicity of each eigenvalue of A 
        % is the same as the algebraic multiplicity,
        % by the Theorem 8.2.11, A is diagonalizable.


        The eigenvalue lambda is 2
        The nullity of (lambda*I - A) is      2
        The eigenvalue lambda is 2
        The nullity of (lambda*I - A) is      2
        The eigenvalue lambda is 7
        The nullity of (lambda*I - A) is      1

2.  % Since the eigenvalue = 2 of A has the multiplicity = 2, 
        % find two linearly independent eigenvectors of A corresponding to lambda = 2.

        %Find a basis for the null space of (2*I-A).
        eigvec12=null((2 * eye(n)) - A);

        % Since the eigenvalue = 7 of A has the multiplicity = 1, 
        % find an eigenvector of A corresponding to lambda = 7.

        %Find a basis for the null space of (7*I-A).
        eigvec3=null((7 * eye(n)) - A);

        p1 = eigvec12(:, 1); p2 = eigvec12(:, 2); p3 = eigvec3(:, 1); 

        % By the Theorem 8.2.7, since the eigenvectors corresponding to 
        % distinct eigenvalues are linearly independent,
        % the three obtained eigenvectors {p1, p2, p3} form a basis for R^{3}.

        disp('A basis {p1, p2, p3} for R^{3} consisting of the eigenvectors of A is');
        fprintf('p1 ='); disp(p1'); 
        fprintf('p2 ='); disp(p2'); 
        fprintf('p3 ='); disp(p3');


        A basis {p1, p2, p3} for R^{3} consisting of the eigenvectors of A is
        p1 =[ -4, 1, 0]
        p2 =[ -4, 0, 1]
        p3 =[ 3, -2, 1]

Orthogonal Diagonalizability; Functions of a Matrix
---------------------------------------------------

Let
$$A=\begin{bmatrix}\frac{1}{2} & 0 & \frac{3}{2} & 0 \\ 0 & \frac{1}{2} & 0 & \frac{3}{2} \\ \frac{3}{2} & 0 & \frac{1}{2} & 0 \\ 0 & \frac{3}{2} & 0 & \frac{1}{2}\end{bmatrix}.$$

1.  Find a matrix $P$ that orthogonally diagonalizes the matrix $A$. You
    may use the MATLAB command *eig* and perform the Gram-Schmidt
    process. Use your result to find a diagonal matrix $D$ satisfying
    $A=PDP^{T}$.

2.  Confirm that the matrix $A$ satisfies its characteristic equation,
    in accordance with the Cayley-Hamilton theorem. You may use the
    symbolic object to find the characteristic polynomial and use the
    MATLAB command *coeffs* to find the coefficient of obtained
    characteristic polynomial.

3.  Find the spectral decomposition of $A$.

``

1.  A=[1/2 0 3/2 0; 0 1/2 0 3/2; 3/2 0 1/2 0; 0 3/2 0 1/2];

        % V: eigen vector, D: eigen value
        [V D]=eig(A);

        % Gram-Schmidt process
        P=GS_process(V);    
        disp('P is'); disp(P);
        disp('D is'); disp(D);
        disp('P_transpose is'); disp(P');
        disp('P*D*P_transpose is'); disp(P*D*P');
        disp('A is'); disp(A);


        P is
           -0.7071         0         0   -0.7071
                 0    0.7071    0.7071         0
            0.7071         0         0   -0.7071
                 0   -0.7071    0.7071         0

        D is
            -1     0     0     0
             0    -1     0     0
             0     0     2     0
             0     0     0     2

        P_transpose is
           -0.7071         0    0.7071         0
                 0    0.7071         0   -0.7071
                 0    0.7071         0    0.7071
           -0.7071         0   -0.7071         0

        P*D*P_transpose is
            0.5000         0    1.5000         0
                 0    0.5000         0    1.5000
            1.5000         0    0.5000         0
                 0    1.5000         0    0.5000

        A is
            0.5000         0    1.5000         0
                 0    0.5000         0    1.5000
            1.5000         0    0.5000         0
                 0    1.5000         0    0.5000

2.  % Symbolic variable lambda
        syms lambda;    

        % Characteristic polynomial
        char_poly=det(lambda*eye(size(A))-A); 

        % Expand the characteristic polynomial cf. simplify
        polynomial=expand(char_poly);   

        % Coefficients extraction
        coeff=coeffs(polynomial); 

        % According to the descending order of lambda degree
        coefficient=coeff(end:-1:1); 

         % Compute the matrix polynomial
        poly_A=polyvalm(double(coefficient), A);

        disp('Coefficients of the matrix characteristic polynomial is');
        disp(double(coefficient));
        disp('Matrix characteristic polynomial is'); disp(poly_A);


        Coefficients of the matrix characteristic polynomial is
             1    -2    -3     4     4

        Matrix characteristic polynomial is
             0     0     0     0
             0     0     0     0
             0     0     0     0
             0     0     0     0

3.  [V D]=eig(A);
        sum_A=0;
        for i=1:size(A,1);
          % spectral decomposition
          sum_A=sum_A+D(i,i)*V(:,i)*V(:,i)'; 

          fprintf('lambda_%d is %f \n', i, D(i,i));
          fprintf('corresponding u_%d is \n', i);
          disp(V(:,i));
        end

        disp('spectral decomposition of A is'); disp(sum_A);
        disp('A is'); disp(A);

        lambda_1 is -1.000000
        corresponding u_1 is
           -0.7071
                 0
            0.7071
                 0

        lambda_2 is -1.000000
        corresponding u_2 is
                 0
            0.7071
                 0
           -0.7071

        lambda_3 is 2.000000
        corresponding u_3 is
                 0
            0.7071
                 0
            0.7071

        lambda_4 is 2.000000
        corresponding u_4 is
           -0.7071
                 0
           -0.7071
                 0

        spectral decomposition of A is
            0.5000         0    1.5000         0
                 0    0.5000         0    1.5000
            1.5000         0    0.5000         0
                 0    1.5000         0    0.5000

        A is
            0.5000         0    1.5000         0
                 0    0.5000         0    1.5000
            1.5000         0    0.5000         0
                 0    1.5000         0    0.5000

Quadratic Forms
---------------

(*Cholesky Factorization*)\
In this problem, we find a Cholesky factorization of the Hilbert matrix
$$A=\begin{bmatrix}1 & 1/2 & 1/3 & 1/4\\ 1/2 & 1/3 & 1/4 & 1/5 \\ 1/3 & 1/4 & 1/5 & 1/6 \\ 1/4 & 1/5 & 1/6 & 1/7\end{bmatrix}.$$
To generate the Hilbert matrix, you may use the MATLAB command *hilb*.

1.  Show that $A$ is positive definite symmetric matrix by finding its
    eigenvalues and the MATLAB command *issymmetric*.

2.  Make a function file `ludecomp.m` to find the $LU$-decomposition of
    an invertible $n \times n$ matrix $A$ such that $A$ can be reduced
    to row echelon form by Gaussian elimination without row
    interchanges. You may refer to the four steps given in Page 157.
    Check your result by applying this function for the matrix given in
    the Example 2 of the Section 3.7.

3.  Referring to the Section 3.7, find the $LDU$-factorization of $A$
    from an $LU$-factorization of $A$ by `ludecomp.m`.

4.  From the $LDU$-factorization of $A$ obtained in (c), find a Cholesky
    factorization $A=R^{T}R$, where $R$ is upper triangular.

5.  Use the MATLAB command *chol* to find a Cholesky factorization of
    $A$. Compare it with the result obtained in (d).

``

1.  format rat;
        A=hilb(4);

        eig_val=eig(A);
        if all(eig_val>0) && issymmetric(A)==1
            disp('Given matrix A is'); disp(A);
            disp('A is symmetric and positive definite matrix.');
            fprintf('eigen value of A is '); disp(eig_val');
        end

        Given matrix A is
               1              1/2            1/3            1/4
               1/2            1/3            1/4            1/5
               1/3            1/4            1/5            1/6
               1/4            1/5            1/6            1/7

        A is symmetric and positive definite matrix.
        eigen value of A is    66/682507   101/14989   262/1549   3500/2333

2.  %--- This is a function file 'ludecomp.m' ---%
        function [L, U] = ludecomp(A)

        % The number of rows and columns of the matrix A.
        [nrow, ncol] = size(A); 

        % Initialization of U and L.
        U = A; L = eye(ncol); 

        % Forward Elimination %
        for i=1:nrow
            % Find the first nonzero entry of the ith row.
            for k=i:ncol
                if U(i,k) ~= 0
                    break % Terminates the execution of the loop.
                end
            end
            temp1 = U(i,k); % Save U(i,k) in temp.
            U(i,:) = (1/temp1) * U(i,:);
            % Normalize the pivot (i,k)-entry by 1 to the ith row.
            L(i,i) = (1/temp1)^(-1);
            % Place the reciprocal of the multiplier in that position in U.
                if i ~= nrow
                for j=(i+1):nrow
                    temp2 = U(j,k); % Save U(j,k) in temp2.
                    U(j,:) = ((-temp2) * U(i,:)) + U(j,:);
                    % Add minus (j,k)-entry times the ith row to the jth row
                    L(j,i) = -(-temp2);
                    % Place the negative of the multiplier in that position in U.
                end
            end
        end

3.  % LU-factorization of A without row interchanges
        [L, U] = ludecomp(A); 

        % From an LU-factorization of A, we can find the LDU-factorization of A,
        % by appropriate normalization of L.
        D = diag(diag(L));

        for i = 1:4
            L(:, i) = L(:, i)./L(i, i);
        end

        disp('The LDU-factorization of A is');
        disp('L = '); disp(L); disp('D = '); disp(D); disp('U = '); disp(U);


        The LDU-factorization of A is
        L =
               1              0              0              0
               1/2            1              0              0
               1/3            1              1              0
               1/4            9/10           3/2            1

        D =
               1              0              0              0
               0              1/12           0              0
               0              0              1/180          0
               0              0              0              1/2800

        U =
               1              1/2            1/3            1/4
               0              1              1              9/10
               0              0              1              3/2
               0              0              0              1

4.  % From the LDU-factorization of A, find the Cholesky factor.
        R1 = (L*sqrt(D))';
        disp('The Cholesky factor R1 from the LDU-factorization of A is'); 
        disp(R1);


        The Cholesky factor R1 from the LDU-factorization of A is
               1              1/2            1/3            1/4
               0            390/1351       390/1351       351/1351
               0              0            317/4253       323/2889
               0              0              0            153/8096

5.  % Find a Cholesky factorization of A by using the MATLAB command.
        R2 = chol(A);
        disp('The Cholesky factor R2 from the MATLAB command chol is'); 
        disp(R2);


        The Cholesky factor R2 from the MATLAB command chol is
               1              1/2            1/3            1/4
               0            390/1351       390/1351       351/1351
               0              0            317/4253       323/2889
               0              0              0            153/8096
