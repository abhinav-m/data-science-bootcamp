# Ceiling analysis

> Ceiling analysis can be understood as estimating errors introduced due to components in the pipelines, and spending most efforts on the components which are prone to producing more errors / decreasing performance in pipeline.

As always, we must have single evaluation metric to judge our ML algorithm. Once we have this, we can divide our pipeline such as the OCR example and evaluate each step.

We can MANAUALLY plu in the correct values at each step in the pipeline, for example text detection, character segmentation etc. Whichever gives the highest inrease in the accuracy, can be chosen to work on first. By doing this, a lot of time and effort can be saved before hand in increasing performance of the classifier, by understanding where the accuracy increases the most.

> Pipelines in ML systems are pervasive and time as a developer is critical. Ceiling analysis helps overall performance and GUT feeling can be incredibly wrong in ML algorithms.

[Lecture on ceiling analysis](https://www.coursera.org/learn/machine-learning/lecture/LrJbq/ceiling-analysis-what-part-of-the-pipeline-to-work-on-next)