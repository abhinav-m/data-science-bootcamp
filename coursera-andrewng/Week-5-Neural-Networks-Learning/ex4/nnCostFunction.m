function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network

% Basically using Theta size property Sj+1 X (Sj + 1) to get back matrices
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%


% Add bias unit  X0 in feature matrice
X = [ones(m,1),X];

% Hypothesis for first layer values of all Theta1 
% size is 25 X 5000 , each column represents hidden unit value
% for one training example
h_layer1 = sigmoid(Theta1 * X');

%Bias unit of size 1 X 5000 to add to the hidden layer
bias = ones(1,size(h_layer1,2));


% Add bias unit to Hidden layer to get sie 26 X 5000
h_layer1 = [bias;h_layer1];

% Gives output of size 10 X 5000 ( values of output for each class K 1 -> 1
% 10 for 5000 examples.
o_layer = sigmoid(Theta2 * h_layer1);

% Calculate 1 -> number of labels, store in a vector these represent our
% different digits
class_vector = (1:num_labels);

% Applies operation of == on every row of our output, and returns 1 where
% it is true in the class vector, 5000 X 10 output
y_matrix = class_vector == y;


% Vectorized calculation of each output node k and m training examples
% returns 5000 X 10 
J = -y_matrix .* log(o_layer') -  (1-y_matrix) .* log(1 - o_layer');

% Summing over all values in a row corresponding to output units  K giving
% 5000 X 1 ( as in formula)
first_sum = sum(J,2);

% Summing over all values in the training example m , as in the formula
second_sum = sum(first_sum);

% Dividing by m to get the value of the cost function
J = second_sum / m;

theta_one_sum = sum(sum((Theta1(:,2:end) .^ 2),2));

theta_two_sum = sum(sum((Theta2(:,2:end) .^ 2),2));

reg_param = lambda/(2* m) * (theta_one_sum + theta_two_sum);

% Adding regularization
J = J + reg_param;


% Loop to forward and backward propogate through m training examples of the
% neural network

for i = 1:m
    
    % Input layer with units transposed size -> 401 X 1
    a_one = X(i,:)'; 
    
    % calculating z value of 2nd layer, which will be passed to sigmoid
    % function later (vectorized) 25 X 1
    z_two = Theta1 * a_one;
    
    % Gives vector in form of  26 X 1 ( num of units in 2nd layer) with one
    % in front as a bias unit
    a_two = [1;sigmoid(z_two)];
    
    % output unit in the form of vector 10 X 1
    z_three = Theta2 * a_two;
    a_three = sigmoid(z_three);
    
    
    % Comparing class vector with current y and transposing to get 10 X 1
    % vector of current y output
    y_vec = (1:num_labels)' == y(i);
    
    % Gives delta for last layer ( predicted - actual) 10 X 1
    delta_three = a_three - y_vec;
    
    % delta_two 26 X 1 .* 26 X 1 , only need to calculate upto here because
    % network has 3 layers
    delta_two = (Theta2' * delta_three) .* [1;sigmoidGradient(z_two)];
    
    % Ignoring bias unit for delta_two since its not in original theeta
    delta_two = delta_two(2:end);
    
    % Calculating Theta1_grad first  25 X 1 * 1 X 401 = 25 X 401 and adding to initial
    % matrix of Theta1_grad which is 0 
    Theta1_grad = Theta1_grad + (delta_two * (a_one)');
    
    % Calculating Theta2_grad 10 X 1 * 1 X 26 = 10 X 26
    Theta2_grad = Theta2_grad + (delta_three * (a_two)');
    
end

% Divide by m to complete gradient calculation, and return them unrolled in
% the last step
    Theta1_grad = Theta1_grad/m; % 25 X 401
    Theta2_grad = Theta2_grad/m; % 10 X 26
 
% To get regularized value, we add the 2nd term here, and ignore 1st
% column (bias values in both the cases)
Theta1_grad(:,2:end) = Theta1_grad(:,2:end) + (lambda/m) * Theta1(:,2:end);
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + (lambda/m) * Theta2(:,2:end);
% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
