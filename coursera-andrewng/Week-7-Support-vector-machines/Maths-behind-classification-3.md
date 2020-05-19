# Maths behind large margin classification

Key takeaways from SVM derivations:

- When we use Theta' X for our example, we are basically taking the projection of our vector X onto theta say, p and multiplying with the norm of the Theta vector ie, p \* Thetanorm
- By pythogaras theorem , theta norm is just sqrt(Theta1^2 + Theta2^2).
- Mathematically, the angle between theta and decision boundary is 90 degrees.
- To maximise the decision boundaries, we try to increase the projection vector value p, for both positive and negative examples. This leads to larger margins in classification for SVMS, and minimises theta values.

[SVM explanation](https://www.coursera.org/learn/machine-learning/lecture/3eNnh/mathematics-behind-large-margin-classification)
