# Evaluating an anomaly detection system

> Similar to other learning algorithm examples, the question arises, how do you come up with a real number evaluation metric for Anomaly detection systems? This requires the assumption that we have some **labelled** data, for eg, the number of defective aircraft engines produced and their respective features.

For the evaluation of an anomaly detection system, we assume we have some labelled data and assume our training set doesn't have anomalies or VERY FEW number of anomalies, which are present in it by mistake.(y=0)

CV , TEST set has anomalous examples. (y =1 )

## Evaluation steps / algorithm:
> Divide the data into 60% 20% 20% for the dataset ,training CV and test sets respectively. The CV and test sets should have 50% of the anomalous examples each with the training set having none of them ( unless some slip in by mistake). An alternative seen in the field which is not recommended is 60 - 40 split, which reuses the CV and test sets along with the anomalous examples in both. This isn't a recommended approach.
  

**Algorithm evaluation**:
* Fit model p(x) on training  set  {X1....XM}
* On CV  / test example x ,PREDICT y = 1 if P(x) < EPSILON or y = 0 if P(x) >= EPSILON . 
* Since the anomalies are very less , typically in the range of 20-50 anomalies for 10,000 data set, the data set is skewed and classifier accuracy will be a poor metric to judge the outcome of the algorithm. To address this use evaluation  metrics such as:
    * Fraction of true pos  / False pos , False Neg / True Neg
    * Precision / Recall
    * F1 score
* CV test can be used to maximise one of the above metrics, for a given value of EPSILON, to choose the best value of EPSILON.
* The final evaluation with chosen EPSILON can be done on the test set.

[Lecture on evaluating anomaly detection systems](https://www.coursera.org/learn/machine-learning/lecture/Mwrni/developing-and-evaluating-an-anomaly-detection-system)