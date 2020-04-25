# COST FUNCTION

If the same cost function as linear regression is used for Logistic regression , we will end up with a non convex function without a global optimum ( or many local optimum).

> We need a cost function that works for the discrete values of `y=0` and `y=1`

Instead, our cost function for logistic regression looks like:

> J(θ)=1m∑i=1mCost(hθ(x(i)),y(i))

- Cost(hθ(x),y)=−log(hθ(x)) if y = 1
- Cost(hθ(x),y)=−log(1−hθ(x)) if y = 0

This is because the graphs of these two functions are more suited to our plots and give a global optimum

With the above cost functions , we get the following plots of cost function J with hypothesis function H

## Y = 1

![When y = 1](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Q9sX8nnxEeamDApmnD43Fw_1cb67ecfac77b134606532f5caf98ee4_Logistic_regression_cost_function_positive_class.png?expiry=1587945600000&hmac=wAXl9FQsGrcy2nwOQEjGpokG7FgdrGcySVx8su6Y2vI)

> When y = 1, Hypothesis function approaches 1 , giving the cost function J the value of 0. When hypothesis function approaches 0, cost function Approaches Infinity
> This ensures that when Hypothesis funtion H = 0, we can predict P(Y=1|x;theta) = 0 ( Probability of feature x is 0)

## Y = 0

![When y = 0](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Ut7vvXnxEead-BJkoDOYOw_f719f2858d78dd66d80c5ec0d8e6b3fa_Logistic_regression_cost_function_negative_class.png?expiry=1587945600000&hmac=pgbiN7p_tlFkA3oq-rhHsDf_8qSJV9iB-e1tR4_Ppw4)

> Here cost function approaches infinity as Hypothesis approaches 1 since Y = 0, Cost function is maximum when hypothesis approaches 1.

[Logistic regression cost function further reading](https://www.coursera.org/learn/machine-learning/supplement/bgEt4/cost-function)
