function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;




% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% Gets the indices of positive and negative examples
pos = find(y == 1); 
neg = find(y == 0);

% Draw scatterplot for the positive and negative examples
% Since the index at pos contains the feature x for which example is
% positive, plot 1st feature on X axis, 2nd on Y axis
% Rest of the parameters are the plotting options
plot(X(pos,1),X(pos,2),"k+","LineWidth",2.2,"MarkerSize",7);

% Repeat the same for the negative features, but with different markers
plot(X(neg,1),X(neg,2),"ko","MarkerFaceColor","y","MarkerSize",7);





% =========================================================================



hold off;

end
