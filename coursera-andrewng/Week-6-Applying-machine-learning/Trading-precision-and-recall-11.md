# Trading precision and recall

> Precision and recall can be traded off ( higher value of precision vs higher value of recall) by changing the value of threshholds of our predictions.

Let us examine the following two cases:

1. Suppose we want to predict y = 1 ( cancer example) ONLY when we are confident, we choose a higher threshhold to predict 1 for our hypothesis say 0.7, 0.9. Now classifier has a higher prediction as a larger fraction of our predictions actually have cancer ie, precision is higher ( as false positives in denominator are lower ~~0). This situaton can arise if we want our patients to not undergo treatment unless its quite sure that they have cancer.

2. Suppose we want to AVOID missing too many cancer cases ( avoid false negatives ) , we set a lower threshhold for our predictions of hypothesis say 0.3 , 0.4 (avoid FALSE NEGATIVES). Now classifier predicts more cases of cancer, but has a lower precision and HIGHER recall.(False negatives in denominator are lower)

> If we plot the curve of precision, recall and threshhold , we can see with high threshhold we get high precision and with low threshhold we get high recall.

## F1 / F score ( single number evaluation for PRECISION and RECALL):

> It would be much more useful to get a single number evaluation for precision and recall for our classifier on the basis of which we can decide if our classifier works well or not.

- One method can be to take the average of precision and recall ie, (P + R) / 2 However, with an algorithm with either of precision or recall very high , this would give a high average , and the classifier would be classifying most of the values as 0s and 1s respectively (which can be wrong), so this cannot be a useful metric.

> One method to solve this is to calculate the F1 score on the basis of precision and recall (there are many other formulas, this is just one of them)

F score = 2 * (P*R) / (P + R)

- As P ->0 and R -> 0 F score -> 0
- As P ->1 and R -> 1 F score -> 1

Other values of P and R would give values of F score somewhere in between.

## How to apply :

> Try running different values of threshhold on CV set, to get a high F score, then run the same on test set.
