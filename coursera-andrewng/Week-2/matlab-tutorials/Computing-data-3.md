# Computing data

> `.` represents element wise operations

- A . \*B = Multiply elements of A by B
- A . ^2 = Element wise squaring of A
- 1 ./ v = Element wise reciprocal of V
- log(V) element wise log, abs(v) element wise absolute value
- -V = -1 \* v (Negates matrix)
- v + ones(length(v) ,1) -> Add one to each element of vector v or simply v + 1 ( add one to each element of v)
- A' = A transpose
- val = max(a) -> gives max value of a [val,ind] = max(a) -> gives max value and index of matrix ( colummn wise max)
- A < 3 element wise comparison of matrix (returns 0 / 1 ) matrix according to element
- find(a <3 ) returns values < 3 in same matrix
- magic(3) -> Magic matrix rows diagnol and columns add up to same number
- [r,c] = find(A >= 7) Rows and columns of every element >= 7
- sum(a) , prod(a) , floor(a) , ceil(a) -> operates on all elements of a
- max(rand(3),rand(3)) -> element wise max of 2 matrices
- max (A , [] , 1) Column wise max of matrix. 1 -> Max of first dimension of A
- max (A , [] , 2) Row wise max of matrix. 2 -> Max of first dimension of A Column wise max by default.
- sum(A,1) sum (A,2) -> Row and column wise sum
- A .A * eye(3) (to get diagnols) sum(sum(A*eye(3))) to get diagnol sum
- flipud -> flips matrix vertically
- pinv(A) -> inverse of A
