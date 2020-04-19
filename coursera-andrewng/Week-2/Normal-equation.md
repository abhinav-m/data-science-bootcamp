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


## Non invertibility and normal equations

* What if Formula:
 (X<sup>*T*</sup> * X)<sup>-1</sup>* X<sup>*T*</sup> *Y
 X<sup>*T*</sup>  is non-invertible (singular/degenerate)

 > Note: Octave calculates inverse correctly even if matrix is non invertible / singular/ degenerate through pinv() which is pseudo inverse

 Why would X<sup>*T*</sup> * X)<sup>-1</sup> be non invertible ?
 * Redundant , linear independant features Eg , x<sub></sub>=size in feet<sup>2</sup>, x<sub>2</sub> = size in m<sup>2</sup> . Here x<sub>1</sub> = (3.28)<sup>2</sup>X<sub>2</sub> . This causes matrix invertibility to not be possible.
 * Too many features, ie training examples m <= n (features)
    * Delete some features or use regularization
  
[Normal equation non invertibility](https://www.coursera.org/learn/machine-learning/supplement/66bi5/normal-equation-noninvertibility)