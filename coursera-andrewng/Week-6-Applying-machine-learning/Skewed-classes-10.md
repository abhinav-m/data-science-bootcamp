# Skewed classes

> Suppose we take a look at the cancer classification problem, and train our logistic regression model to predict our hypothesis as y =1 , when cancer 0 otherwise. We get a prediction of 1% error on test set, and 99% correct. This is not a useful metric for classification, if suppose, say only 0.50% of patients have cancer

These sort of scenarios where their is a very huge margin between the classes eg 99.5% false, 0.5% true , are known as skewed classes, ie, we have MANY more examples of one class than of the other.

Say suppose our actual classifer gives an accuracy of 99.2%

We could have a function as below:

```
function y = predictCancer(x):
    y=0
    return

```

and since, the classes are skewed this would give a high accuracy to classify the problem, where in reality, it just predicts 0 for every case (which is true for 99.5% cases)

> The actual accuracy hasn't increased, so this isn't really a useful metric (error and accuracy percentage) in the case of skewed classes. Here it becomes very difficult to judge if our ML algorithm is working correctly.

To solve this problem we have 2 metrics to judge our algorithm on ie, **Precision and recall**

## Precision and recall

- Precision = True positives / Predicted positives (fraction)
- Recall = True positives / Actual positives ( fraction )

Precision = True positives / true positives + false positives ( total positives by our prediction)
Recall = True positives / true positives + false negatives ( actual total positves , false negatives are the ones mislabeld by our prediction)

Now, if our classifier labels all values as 0, we get a much better metric than earlier.

> Note, by convention we use y = 1 in the case of the more _"rare"_ class ie, in this case, the patients having cancer.
