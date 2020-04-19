# Moving data around


* Size of matrix = size(A) 
* size(A) = 1 X 2 matrix
* size(A,1) = rows, size(A,2) = columns
* length(A) = length of larger dimension , usually used to get vectors dimension
* pwd to get directory  , cd to change directory, ls to list
* load ex1Data1.txt -> load file in current scope can also be used like load('exData1.txt')
* who -> get variables in current scope
* whos -> Variables with size currently in scope , size in bytes and type
* clear -> To remove variable
* save abc_test v (filename , variable name) saves file in compressed binary format ( non readable) load abc_test to load back into memory
* save hello_txt v --ascii (human readable format)
* A(3,2) element at 3,2
* A(2,:) % every element in 2nd row of A
* A(:,2) % every element in 2nd column of A
* A([1,3],:) -> Every element of 1'st row, 3rd row and all columns
* A(:,2) = [10;11;12] Assigning the value of A 2nd column as the vector [10;11;12] 
* A = [A, [100;101;102]] Assign a column vector to A to the right
* A = A(:) Put all elements of a matrix into a single column vector
* C = [A,B] -> Concatenate 2 matrices horizontally same as `[A B]`
* C = [A;B] -> Concatenate 2 matrices vertically `;` means go to next line