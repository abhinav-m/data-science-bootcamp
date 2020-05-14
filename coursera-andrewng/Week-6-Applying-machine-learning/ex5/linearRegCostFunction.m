function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
hyp = X * theta; % 12 X 2 * 2 X 1
error = hyp-y ;% Error on prediction

J = (1 / (2 * m)) * sum(error .^ 2) + (lambda/ (2 *m)) * (sum(theta(2:end) .^ 2));

grad(1) = (X(:,1)' * error) / m; % Each error term  has to be mutlipled 
% by the first column of x (corresponding to bias unit) , since its grad(1)
% and summed up  1 X 12 * 12 X 1 = 1 X 1

% Similarly, 1 X 12 ( valid for all J values)
grad(2:end) = (X(:,2:end)' * error) / m + (lambda / m) * theta(2:end);






% =========================================================================

grad = grad(:);

end
