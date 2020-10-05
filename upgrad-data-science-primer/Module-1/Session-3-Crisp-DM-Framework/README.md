# CRISP-DM 

> CRISP DM stands for Cross Industry Standard Process for Data Mining (CRISP-DM) 

It involves the following steps:
1. **Business understanding** : Eg, where the profit comes from, what are the costs involved, highest contributor to profit, highest contributors to cost etc. Eg In an IPL team revenue earned through sponsors and ads is much greater than revenue from winning.
2. **Data understanding** - What all is available in the data for analysing / forecasting. What does the data mean, what are the most relevant figures/ columns in data
3. **Data preparation**: Pre processing of data to be analysed Eg, getting rid of irrelavant values, rounding, replacing any values not available.
4. **Data Modelling**: Model data as per the insight that needs to be drawn or hypothesis. A better understanding of data and correction gives a much better model.
5. **Model Evaluation**: Metrics if the model is working / giving actionable and valuable insight.
6. **Model Deployment** : If model has good metrics, it can be deployed and used on further.

> For a data analyst, understanding the business and its specific problems is of utmost importance. You ought to understand the problem clearly to convert it into a well-defined analytics problem. Only then you can lay out a brilliant strategy to solve it, else you'll be super efficient in solving the wrong problem!

## Business Understanding
> A stakeholder in the domain can give a much better understanding of the same.

* Understanding costs, revenue, risks, etc

## Data understanding
* Collect relevant data
* Describe contents -> Sectors Company names, summarize data
* Explore data, and business implication -> Graphs and spreads
* Data Quality -> Completeness, correctness , errors and how much of these exist

## Data preparation

> Across projects, data analysts spend around 50-80% of the time on data cleaning and preparation, and therefore data preparation becomes one of the most crucial steps. If the data set is erroneous, the solution to the problem we get after building a model would be erroneous too-no matter how the model is being created.

Data discrepancies and errors have been identified in previous steps, here we correct them.

> If not corrected, model will be **inaccurate**

1. Select relevant data -> costs etc
2. Integrate all datasets into one -> if at different location
3. Clean errors
4. Construct data -> Extracting years , rounding decimals, adding missing values.
5. Format data Male/ Female to 1/0 etc

## Data Modelling

> "If you torture the data long enough, it will confess."
 

`Modelling is the heart of data analytics`
. One can think of a model as a black box which takes relevant data as input and gives an output you are interested in.


1. Understand problem domain , select family of problem
2. Create model / algorithm from given family of models Eg identifying regression / clustering / classification problem

## Model Evaluation and deployment

> "True genius resides in the capacity for evaluation of uncertain, hazardous and conflicting information."

 

In data analytics, evaluation is when you put everything you have done to litmus tests. If the results obtained from model evaluation are not satisfactory, you reiterate the whole process. If the model performs well and gives you accurate results, congratulations. You can move on to implementation of the model. 

> Models are tweaked till satisfactory results are obtained, until then it is tweaked.
> Once ready, model is fed business data and strategy is used for making business decisions (eg displaying ads with highest CTR)

Model -> Evaluate -> Deployment 

> Keep monitoring and upgrade solution as needed

One interesting insight is that the whole process is iterative in nature. The intelligence of a model has to evolve continuously.

 