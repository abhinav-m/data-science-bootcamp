# Large margin intuition

> SVMs are often ,also known as large margin classifiers,as they give more robust decision booundaries ( with large seperation between y=1 and y =0 cases
> In case regularization parameters are increased for SVMS, the boundaries distance decreases, but this can fit more outliers and mixed cases better

For the cost function associated with SVMs, we give the value of 1 when associated cost function Theta' \* X gives value >= 1 and 0 when Theta'X <= -1 ( I think in practice, we classify as 1 When Theta'X >=0 and 0 when <0 )
