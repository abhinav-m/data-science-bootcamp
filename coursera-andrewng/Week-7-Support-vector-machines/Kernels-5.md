# Kernels

**Key takeaways:**
The question arises how do we choose landmarks given a training set with features X, to calculate the similarity ( kernel functions ).

The following is a method to compute and choose the landmarks and kernels:

* Given m training examples (X1,Y1) (X2,Y2) (X3,Y3) upto (XM,YM)we need to calculate similarity  F ( a feature vector)
* We do this by initialising the landmarks to the same values as the value of X , then for each feature X(i) we calculate the similarity with every landmark l(1) , l(2),l(3)..l(m) Note that for the case X(i) = l(i) our similarity function will be 1.
* We end up with new feature vector from our calculations N+1 X 1
* Given Theta , we calculate Theta' F for our new features( note that number of theta = m = number of features) and we predict y = 1 if Theta'F >= 0
* The cost function is the same as discussed earlier, only Cost0 and Cost1 are replaced with Theta'F now instead of Theta'X

>Implementation detail: Internally, the second term is modified by most modern cost computing algorithms to make the training more efficient as computing Theta^2 is not computationally efficient. ie, multiplied by Theta'MTheta instead of Theta'Theta where M makes it more efficient. 

> Kernel functions are more suited to SVMS because of computational tricks like above, and when applied to logical regression can slow down calculations, though they can be applied.


## SVM PARAMETERS

### C

> C ~~ 1/lambda

* Large C = **LOW** lambda therefore **HIGH** variance **LOW** bias
* Small C = **HIGH** Lambda therefore **LOW**  variance, **HIGH** bias
  
### SIGMA^2
* For **high** value of SIGMA ^2, features vary smoothly, and fall off slowly ( as they approach close to X and landmark) thus **HIGH** bias **LOW** variance
* For **low** value of SIGMA^2 features fall off sharply as approaching X from landmark , thus **HIGH** variance, **LOW** bias

[More on Kernels](https://www.coursera.org/learn/machine-learning/lecture/hxdcH/kernels-ii)



