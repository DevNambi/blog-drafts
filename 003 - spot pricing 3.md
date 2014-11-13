---
author: DevNambi
date: 2014-11-12
layout: post
slug: spot-predictions
title: Predicting AWS Spot Pricing
meta-description: 
- pass summit
- machine learning
- prediction
- feature extraction
- sqlpass
---



## Part 3: Predictions

* Show the results, not the algo
* Algos to look at: logistic regression, others. Depends on pricing strategy
* When do price spikes happen? Can they be predicted?
	* Do price spikes happen across AZs? Regions? Instance types?
	* 'Spike' defined as above some threshold, IQR, absolute value.
* For a given price, X, how many hours will it last for each instance type?
	* Split per AZ, per region
	* Split by biz hour, weekday
* how much does the price vary per instance? Inter-quartile range? 
* Are prices normally distributed? If not, why not?
* What are the gaps in the analysis
	* Not clear how many instances exist of each type, especially for the specialized ones.

### Prediction Notes

* Number of hours before the price goes to X
* Trying to do either regression (hours until price goes above X) or classification (odds that price will go away )
* Do an independent prediction for each instance type