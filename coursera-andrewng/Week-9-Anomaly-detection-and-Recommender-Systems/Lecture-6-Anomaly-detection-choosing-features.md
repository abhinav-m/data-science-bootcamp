# Anomaly detection - Choosing features 

While running anomaly detection algorithms , features should be chosen such that they give a gaussian histogram when plotted. (Although algorithm still runs fine with non gaussian features MOST of the time)

If a feature is plotted, and turns out to be non gaussian, it can be transformed using some functions to give it a more gaussian histogram eg, log(x+c) where c is some constant or x^(1/2) where 1/2 is a constant that can be changed to 1/3 etc

Plotting histogram in matlab:

```matlab
hist(x)
% Comparing with log x
hist(log(x))
```

## Choosing new features (Errog analysis on anomaly detection)
Similar to error analysis for supervised learning, features which are anomalous but flagged as normal can be manually examined, and new features can be choosen from the respective dataset, which can help flag these as anomalies. 

This is a manual examination and depends on the problem being addressed.

Data center example:
Choose features that take on extreme values in case of anomalies ( really large /small ), for eg:
* Memory use of computers
* Disk access / sec
* CPU load
* N/W traffic.

Now if we suspect an usual anomaly say CPU getting stuck in an infinite loop in some job a new feature can be chosen as CPU Load / NW traffic. This will be high when N/W traffic is low in comparison to CPU load

This is one example of catching an unusual anomaly.

[Anomaly detection choosing features lecture](https://www.coursera.org/learn/machine-learning/lecture/LSpXm/choosing-what-features-to-use)