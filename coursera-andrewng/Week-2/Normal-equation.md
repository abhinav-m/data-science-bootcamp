# Normal equation
> Non iterative method to calculate analytically the minimum

Formula:
 (X<sup>*T*</sup> * X)<sup>-1</sup>* X<sup>*T*</sup> *Y

 ## Advantages over gradient descent
 * No need to choose learning rate alpha
 * Dont need to iterate.
 * No need to do feature scaling

## Disadvantages
* Need to calculate (X<sup>*T*</sup> * X)<sup>-1</sup> which is costly and doesn't scale well. O(n<sup>^3</sup>)

> Should consider gradient descent after n >= 10000

[Normal equation summary](https://www.coursera.org/learn/machine-learning/supplement/bjjZW/normal-equation)
