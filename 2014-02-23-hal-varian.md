---
author: DevNambi
date: 2014-04-29
layout: post
slug: econometrics
title: Machine Learning and Econometrics
meta-description: Hal Varian spoke to a room full of data geeks at the University of Washington about machine learning and econometrics. 
- statistics
- causal inference
- data
- machine learning
- economics
- society
---

Last week I had the privilege of listening to [Hal Varian](http://www.gv.com/team/hal-varian) talk about [machine learning and econometrics](http://data.uw.edu/seminar/2014/varian/). It was a great talk.


### Specialties, Specialties Everywhere

First, some context. 

*"Machine learning is mostly concerned about prediction, while econometrics is mostly concerned about causal inference for economic behavior. Although the gold standard for causality is randomized experiments, there are practical techniques for analysing observational data that can yield some insight about causal effects. In this talk I discuss how these techniques may be useful in a machine learning context."* - abstract (LINKME)

The amount of data in the world is increasing quickly. Machine learning ('ML') is one of the tools used to make use of it.

However, the problem with increasing amounts of data is increasing numbers of variables, and **huge** numbers of correlations. You also need exponentially increasing data *on top of* the additional variables in order to make sense of them (the Curse of Dimensionality).

**Machine Learning in 1 Sentence**: Predict some variable as a function of other variables.

*The goal*: insight, importance, patterns. Correlation is often enough.

**Econometrics in 1 Sentence**: Use statistical methods to predict, infer, and ideally find *causal* relationships among variables.

*The goal*: causal inference (cause and effect). What is the effect of X (cause) on Y (effect) when *everything else is the same*?



### What Econometrics can learn from ML:

* Avoid overfitting problems using training/test sets, cross-validation
* Nonlinear estimation using ML techniques (trees, forests, neural nets, SVMs)
* Computational Bayesian methods (MCMC)
* Build more robust models using model averaging (ensembling)
* Better tools for data manipulation
* Text analysis

I was appalled that econometrics, which is widely used to influence policy decisions, doesn't use standard techniques (LINK TO CROSS-VALIDATION) to prevent overfitting.

**What someone with ML can do now**: use ML techniques to test and potentially disprove economic theories. Be a professional skeptic. Find *Excel errors* (LINK TO GALBRAITH). 


### What Machine Learning can learn from Econometrics

Now we get to the real focus of the talk. 

Econometrics' primary focus is causal modeling involving *human choices*. This is relevant to economics, politics, sociology, marketing, health, technology...basic every field you can think of.

It's the study of *choice behavior* (LINKME). The goal is to understand something about causation when human choice is involved. 

I suspect my readers are either thrilled or wincing right now. Understanding people using data and stats? That either sounds like a new tool in their arsenal, or so complicated that it's laughable.

**It's both**

(ADD FUNNY IMAGE)

non-IID data (not independelty distributed)
	time series
	panel data (tables)
* causal inference - response to a treatment
	* confounding variables
	* natural experiments
	* explicit experiments
	* regression discontinuity designs
	* difference in diffrences
	* intrumental variables

Good theory available from Judea Pearl (probabilistic model and ML), but not widely used in ML. There are practical techniques that can be used.

Try to estimate the response to some treatment. 


### Time Series


* trends and seasonal is important
* cross-validation doesn't work directly.
* analog is one-step-ahead forecasting. Spurious correlation is an issue.
	* auto sales is highly correlated w/ Indian restaurants (ADD IMAGE)
	* hangover (Sunday) and vodka (Saturday) (ADD IMAGE)
* De-seasonalize it. (Whiten)
	* Look out the predictable (seasonal) part.
	* Then look at the deviations from expected behavior.

**Panel Data**

* Time effects and individual effects
* Example, anomaly detection
* Average over time for each person. Then subtract that to get "within estimator" and look for deviations from typical behavior.
* This is helpful for causal inference as well

### Causality

"More policy in precincts with higher crime: does that mean that police cause crime?" Policy decision: should we add more police to a given district.

People die in hospitals. Are hospitals bad for your health?

Advertise more in December, sell more in December. 

#### Counterfactuals


Counterfactuals: hypothetical statements

For causality, make a comparison to the counterfactual

* Reduce crime over what *would have been*
* Healthier going to a hospital than what *would have been*
* Sales be higher than what it *would have been*

#### Confounding Variables

Confounding variables. Unobserved variable that correlates with both x and y. 

sales = f(advertising) + other stuff
xmas is a confounding variable. But there are many others. One workaround: add confounding variables as an additional predictor...if you can identify them.

Confounding variables 2:

* Commonly arises when human choice is involved
* Marketing: advertising choice, price choice
* ROI of education: IQ, parents' income, etc affects both choice of amount of schooling and adult earnings
* Health: compliance with prescription directions is correlated w/ both medication dosage and health outcome
	* People who take the medication every day are healthier in the first place. Placebo proved this as well.

Omitted variables that are not correlated with x just add noise, but confounders *bias* estimates.

#### What do you want to estimate?



**Estimating a demand function**

* Model: sales ~ price + consumer income + other stuff
* Policy: if I manipulate price, what happens to sales?
* The result: high prices ~ high sales, but that's because income is a confounding factor.

One solution: find other vairables that affect price independent of confounding variables

price ~ markup x cost (markup is chosen, cost is exogenous)
price ~ pre-tax price + sales tax (price is chosen, sales tax is exogenous)

Instrumental variables: manipulates demand function independent of 


### Policy


**Practical techniques**

Gold-standard: randomized treatment-control experiment.
Natural experiments which may or may not be randomized (draft lottery, Oregon healthcare lottery)

May need to model: who gets treated (a prediction problem)
	Random, volunteers, chosen, invited
	Question to ask: how does proposed policy relate to experiment?
Definitely need to mdoel counterfactual (prediction problem)
	What would have happened to the treated if they weren't treated?
	Simple: they would look like the control on average
	Complex; a more elaborate prediction model


**Role of counterfactual**

Should I recuperate at home or at hospital:

health(went at hospital) - health(if they *would have stayed home*)

Fundamental equation of causal analysis:

observed difference in outcome = average effect of treatment on treated + selection bias

Randomization solves selection bias, so oberseved difference is average effect of treatment on (a random sample of) the population. So oberseved difference in controlled experiment gives you effect of treatment on population.

But you may be interested in impact of treatment on subjects' chosen for treatment in some other way (volunteers, selected, etc).

Better prediction gives you better causal inference. Helps w/ predicting w/ the counterfactual and prediction for selection bias.


ME: add Google Trends data to each class and curriculum to measure societal impat over time.


Prediction: train -> test
Causal inference: train -> test -> treat -> test
Ideally: treatment is randomly assigned





**Regression Discontinuity**

Lots of cases where whether or not you get some treatment depends on whether you cross some threshold

Israel, when there are more than 40 students in a class, they have to split the class.

Position effect of ads
	selection bias: placement
	ad rank: bid x ad quality
	examine subjects for near the discontinuity
	Use it in tree models?

Write code so that you can experiment

if (x > y then do something)
if (x + tweak_param > y then do something)
Then fine tune the tweak_param

Sticking randomization in your code lets you 


### Going Further

"Anytime you're at Google you're in 12-15 experiments. We run 10K experiments a year."

I'd strongly recommend reading more of [Hal Varian's papers](http://people.ischool.berkeley.edu/~hal/people/hal/papers.html) if you're interested in the intersection of machine learning, data, business, and society. 

Book: an introduction to statistical learning., 2013


**Existing natural experiments**

* Impact of police on crime (Klick-Tabarrok)
* Impact of veteran status on future income (Angrist)
* Impact of education on income (Angrist-Krueger)
* Impact of medical care on health outcomes (Finkelstein)
* Impact of ad impressions on purchases (Stephens-Davidowitz, Smith, Varian)