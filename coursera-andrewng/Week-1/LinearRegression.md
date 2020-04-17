Dataset = training set.

> Notation used:
> m  = number of training examples.
> x  = input variables / features
> y = output variables / trying to predict
> (x,y) = single training example.
> (x^i , y^i) = specific training example  ,ith row


## How it works

Training Set -> Learning Algorithm -> h ( hypothesis )

Eg, predicting  housing prices 

Size of house -> hypothesis -> Estimated price
x -> h  -> y


So basically, given a training set we try to derive a hypothesis function **h** , which when applied on **x**, gives us the value **y**. This function is called hypothesis function.

> When the target variable trying to be predicted is continuous such as stock market quotes or housing market prices, it is said to be a regression problem, else it is said to be a classification problem.

[https://www.coursera.org/learn/machine-learning/supplement/cRa2m/model-representation](Link to more reading)

## Cost function
How to fit the best possible straight line to data

In linear regression  ,we want to find a cost function h(x) =c + mx which somehow fits are data well enough to draw new inferences.

[Understanding cost function associated with linear regression and its minimization](https://www.coursera.org/learn/machine-learning/supplement/u3qF5/cost-function-intuition-i)

[Minimizing cost function - Using contour plots](https://www.coursera.org/learn/machine-learning/supplement/9SEeJ/cost-function-intuition-ii)

[Gradient Descent variations with changes in alpha](https://www.coursera.org/learn/machine-learning/supplement/QKEdR/gradient-descent-intuition)


