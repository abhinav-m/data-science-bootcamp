# Collaborative filtering Algorithm:

> As understood in the previous lectures, we can either estimate the preference of the users Theta for movies, given their features Xi, or given the preference of users Theta, find out the features of the movies Xi. If we randomly initialize Theta values and infer some Xi as discusssed earlier, we may reach to a valid Xi and Theta value, but the process would be very inefficient. Theta -> X -> Theta -> X and so on

Instead, we combine both optimization objectives together, it can be noted that in both the cases, we are combining the movies and the users who have rated movies, ( Only the order of the two changes in both objectives)

## Algorithm:
* Initialize Theta1...ThetaNu, X1....XNm to random values.
* Minimize the combined objective function with gradient descent / other advanced algorithm. Note since we can assume Theta / X as constant , we effectively get both Theta and X values minimized from this combined objective function. It also has both regularization terms in the function.
* For a user with parameters Theta and **LEARNED** parameter vector Xi , We predict rating as Theta' * Xi


> Note: Since we are learning the features now, Bias term X0 is no longer needed ( Algorithm will learn X1 = 1 if needed)
> Partial derivatives of optimization function wrt Xi and Theta are both calculated with the combined objective function
> Instead of minimizaing sequentially, both are minimized simultaneously now, and updated as in earlier Gradient descent algorithms (Xi and Thetaj)


[Lecture on Collaborative Filtering algorithm](https://www.coursera.org/learn/machine-learning/lecture/f26nH/collaborative-filtering-algorithm)