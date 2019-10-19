function M = MatrixProduct(A,B)

% The function takes two matrices as input and returns their product if it
% exists.

dimA = size(A); %Returns an m x n row vector with the dimensions of matrix A
dimB = size(B); %Returns an p x q row vector with the dimensions of matrix B
if dimA(1,2) ~= dimB(1,1) %Evaluates the inner dimensions of A and B, and if the do not match it gives an error
    error('Inner dimensions do not match');
else
    M = zeros(dimA(1,1),dimB(1,2)); %Creates a matrix M of zeroes, the dimensions of which match the outer dimensions of A and B
    [r,c] = size(M); %Returns the number of rows (r) and columns (c) of matrix M
    for i = 1:r %Indexes the elements of the first column of M
        for j = 1:c %Indexes the elements of the first row of M
            for k = 1:dimA(1,2) %dimA(1,2) indexes the number that corresponds to the columns of matrix A (could also be written to index the rows of B)
                M(i,j) = M(i,j)+sum(A(i,k)*B(k,j));
            end
        end
    end
end
end