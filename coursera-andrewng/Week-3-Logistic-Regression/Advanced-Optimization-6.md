# ADVANCED OPTIMIZATION

There are better optimized algorithms for calculating minimized values of theta other than gradient descent.

Some of them are:

- Conjugate Gradient
- BFGS
- L-BFGS

> These are seperate topics in themselves , and should not be implemented without a good knowledge in numerical computing. ( can be unoptimized if done so)
> Advanced topics ,need a lot of time to learn these.

## ADVANTAGES OF THESE FUNCTIONS

- Automatically get the learning rate alpha
- faster than gradient descent

## DISADVANTAGES

- Complex
- Manual implementation requires a lot more knowledge, hard to implement.

## Calculating them in matlab:

We first need to provide a function that evaluates the following two functions for a given input value θ:

- J(θ)
- ∂/∂(θ)<sub>j</sub>J(θ)

We can write a single function that returns both of these:

```matlab
function [jVal, gradient] = costFunction(theta)
  % Calculates cost function
  jVal = [...code to compute J(theta)...];
  % Calculates derivative values for each theta
  gradient = [...code to compute derivative of J(theta)...];
end

```

Then we can use matlabs's "fminunc()" optimization algorithm along with the "optimset()" function that creates an object containing the options we want to send to "fminunc()"

```matlab
options = optimset('GradObj', 'on', 'MaxIter', 100);
  initialTheta = zeros(2,1);
 % Here @costFunction is pointer to function above ( which    % returns calculated gradient and cost function values)       % initialTheta is initialised as 2 * 1 vector with 0,0
 % exitFlag indicates when function is done converging
   [optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);


```

[Further reading on Advanced optimization](coursera.org/learn/machine-learning/supplement/cmjIc/advanced-optimization)
