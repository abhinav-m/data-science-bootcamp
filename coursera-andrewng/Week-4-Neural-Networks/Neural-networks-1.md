# Neural networks (Non linear hypothesis)

> Suppose we have a classification problem eg, predicting whether a house will sell with a large number of features (n > =100). Obtaining a quadratic fit to this data or a cubic fit is an expensive operaton O(n<sup>2</sup>) or O(n<sup>3</sup>).

This is also prone to **overfitting** .

Possible solutions:

- Use a subset of features eg(only the first x<sub>1</sub><sup>2</sup> , x<sub>2</sub><sup>2</sup> ,x<sub>3</sub><sup>2</sup> ) terms. But this also leads to simpler curves, which might not suit our prediction.
- If we use cubic function for features, feature set tends to grow larger quickly

> Typically, n is large for large learning sets, and the above solutions are not suitable.

## Example problem - computer vision

Computers can see an image in the form of a pixel representation matrices of pixels.

Even if we take a small picture of 50 X 50 ,feature size n = 2500, where each pixel can take 0-255 values ( based on greyscale intensity) the number of quadratic features would be close to 3 million ( applying [permutations](https://www.mathsisfun.com/combinatorics/combinations-permutations.html))

If 10,000 features, close to 50 million

To solve this problem, neural networks come into the picture.
