function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
    
    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the F1 score of choosing epsilon as the
    %               threshold and place the value in F1. The code at the
    %               end of the loop will compare the F1 score for this
    %               choice of epsilon and set it to be the best epsilon if
    %               it is better than the current choice of epsilon.
    %               
    % Note: You can use predictions = (pval < epsilon) to get a binary vector
    %       of 0's and 1's of the outlier predictions
    
    % For current epsilon, makes a vector with all values as anomalies /
    % non anomalies as 0 and 1
    predictions = pval < epsilon;
    % The positive predictions
    pred_pos = predictions == 1;
    % Actual positives
    act_pos = yval == 1;
    % The negative predictions
    pred_neg = predictions == 0;
    % Actual negatives
    act_neg = yval == 0;
    % True positive values predicted is number of values predicted positive
    % and actually positive and operator gives a matrix of values where
    % similar values are 1, else 0
    true_pos = sum(pred_pos & act_pos);
   
    %  False negatives is where we predicted negatives, but actually
    %  positive
    false_neg = sum(pred_neg & act_pos);
    
    % False positives where we predicted positive, but they were negative
    false_pos = sum(pred_pos &  act_neg);
    
    % Precision fraction of true positives over all positives predicted
    precision = true_pos / (false_pos + true_pos);
    
    % Recall is true positive over true positive + false negative
    recall = true_pos / (true_pos + false_neg);
    F1 = (2 * precision * recall )/ (precision + recall);











    % =============================================================

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
