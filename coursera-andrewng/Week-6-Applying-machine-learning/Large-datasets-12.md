# Large datasets

On a research conducted in large datasets vs accuracy of prediction in 3 algorithms, the conclusion drawn was that often, for most algorithms, more data -> higher performance. ie, most algorithms performed at a similar rate if given a good set of features and a lot of training data.

(Study was done on completing a sentence with a correct word on being given a set of similar words)

## When is getting more data = more accuracy true?

- If we have a set of features that has sufficient information to predict y accurately, we could say that adding more data would help us in our predictions ( predicting y accurately ) For example, For breakfast i ate \_\_\_\_ eggs (two,too,to). The surrounding sentence is enough to predict the actual value.
- However, say in the case of linear regression, we have only the house size to predict the price of the house and not the location, bedrooms , or any other features that this might need. This is the case where adding more data won't help for the problem as the data wil be underfit.

> A very good intuition to discovering this is to see if given a human expert in the said field, would the human expert be able to classify the examples correctly given the set of features available? This is true for case 1, but not for case 2.

If we assume we have a rich feature set, with a lot of useful information for the example, we wll have a low bias, and thus having many training example will lead to the training examples having low variance, giving more accuracy to our algorithm.

Also true for learning algorithm with many parmeters and features or NN with many hidden units. Jtrain(theta) will be small , and due to the huge training set, this would result in low test set error, giving higher accuracy.
