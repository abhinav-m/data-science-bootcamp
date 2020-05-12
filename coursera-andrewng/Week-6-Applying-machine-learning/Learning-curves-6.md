# Learning curves

> To test out an algorithm, we sample the training set m , with different values. Initially this gives low error in both the cases of high bias and high variance but once the training size increases the following observations can be noted:

## High bias

For high bias, since data is underfit:

- For low training set sizes, J training will be low , but when tested on CV, Jcv will be high
- For high training set sizes, J Trraining will be approximately near J CV ( gap between two will be low)

Thus, For **HIGH BIAS** , getting more training data by itself will **NOT HELP** by itself.

Following image demonstrates the same.

![High bias example](images/high-bias.png)

## High variance

- For low training set sizes J train will be low, J CV will be high ( as overfitted for particular examples)
- For large training sets, J train decreases and J CV curve continues to decrease with more training examples. Also, a **GAP** between J train and J Cv can be observed where J train < J CV

Thus, For **HIGH VARIANCE** more data for training is likely to help.

Following image summarises the same:
![High variance example](images/high-variance.png)

[Further reading](https://www.coursera.org/learn/machine-learning/supplement/79woL/learning-curves)
