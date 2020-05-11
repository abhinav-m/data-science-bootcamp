# Advice for applying machine learning

> If after applying a machine learning algorithm on data, we get an unexplicable margin of error, it is worthwhile running diagnostics on our algorithm before doing other things which can prove to be really time consuming and fiscally expensive.

Things which can be done to improve algorithm:

- Add more data / training examples ( doesn't always help, can be avoided with a technique discussed later)
- Add more features (prone to overfitting , and getting new features say in the housing problem can be a project on its own which would involve land and phone surveys, and take up a lot of time)
- Try smaller set of features to prevent overfitting
- Add polynomail features
- Increase / decrease lambda (regularization parameter)

Almost all of the above is chosen randomly and should be given thought to before applying.
