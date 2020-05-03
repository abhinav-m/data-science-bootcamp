function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
% Prediction initialisation for all the m training examples thus, p is now
% M X 1
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
% Add one column of 1s so that the matrix is m X n+1 with the first feature
% as all 1s M X N+1
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your examples 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
%       

% gives the value of each prediction for c classes for m examples, thus an
%  m X c matrix 
prob_mat = sigmoid(X * all_theta');

% M = max(A,[],dim) returns the maximum element along dimension dim. 
% For example, if A is a matrix, then max(A,[],2) is a column vector
%  containing the maximum value of each row.
% the second argument p will give the index of each row(starting from 1), 
% which in this case also corresponds to our classes.
[prob, p] = max(prob_mat,[],2);





% =========================================================================


end
