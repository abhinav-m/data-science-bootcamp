## Deciding learning rate of gradient descent

How to debug if gradient descent is working well with learning rate?

* Make a plot of gradient descent with a learning rate with number of iterations
* Learning rate can be increased decreased by a factor say 10x ie  0.001,0.01,0.1 , 1 etc till a range is found where it is too slow / too fast. then optimize by decreasing/ increasing factor ie 3x 0.03,0.3 etc.
* If plot increases instead of decreasing or oscillates, most likely that alpha is not set correctly.

## Automatic convergence test
> Declare convergence if J(θ) decreases by less than E in one iteration, where E is some small value such as 10−3. However in practice it's difficult to choose this threshold value.


[Additional reading on gradient descent](https://www.coursera.org/learn/machine-learning/supplement/TnHvV/gradient-descent-in-practice-ii-learning-rate)