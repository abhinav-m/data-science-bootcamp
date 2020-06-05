# Choosing between supervised learning algorithms and anomaly detection

Since we used a labelled dataset for anomaly detection, the question arises when do we use a supervised learning algorithm like NN, logistic/linear regression etc vs an anomaly detection system.

## Anomaly detection
* Very small number of positive  ( rare examples ) ie y = 1 usually in the range of 0 - 20 in a data set of 1000s.
* Large number of negative examples ( eg normal aircraft engines ) This can be used to fit p(x)
* Since there are different *types* of anomalies, it is difficult to predict what future anomalous examples might look like, and they might not be similar to the present anomaly dataset.
* **APPLICATIONS**:
    * Fraud detection: For cases where huge negative dataset is present, and positive examples are low. If for a use case, the positive dataset is suitably large ( for eg a large ecommerce vendor, this can be shifted to supervised learning)
    * Manufacturing
    * Monitoring data centers

## Supervised learning
* Large number of positive and negative examples y=0,and y=1 
* Since the number of positive examples are large, the sense of what positive examples are like can be seen from the dataset, and can be used for future examples. Eg spam emails can be thought of as an anomaly detection algorithm, but since the dataset for spam emails with positive examples is huge, It is considered as a supervised learning problem.
* **APPLICATIONS**:
  * Email spam classification
  * Weather prediction ( Sunny / rain / cloudy)
  * Cancer classification ( doubt )


[Lecture on choosing between anomaly detection and supervised learning](https://www.coursera.org/learn/machine-learning/lecture/Rkc5x/anomaly-detection-vs-supervised-learning)