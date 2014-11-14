---
author: DevNambi
date: 2014-11-15
layout: post
slug: spot-predictions
title: Predicting AWS Spot Pricing
meta-description: 
- aws
- amazon web services
- ec2
- vm
- cloud computing
- race to zero
- cost of computing
- machine learning
- prediction
---

In the last two blog posts we covered the basics of AWS spot instances and looked at the landscape of cloud computing competitors.

Now let's see if we can predict prices. Our goal is a better understand of how spot prics behave, so we can optimize our computing costs over time.

#### Prices By Time

Prices differ by time of day

* Per biz hour / weekday.
* Per time of day. 
* What days and times of day matter? What patterns exist?
* Which times have the most price 'bursts'?
* Which instance types have the most price 'bursts?'


---- 

**Part 3: Predictions**

* Show the results, not the algo
* Which regions have the most price 'bursts'?
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
* Number of hours before the price goes to X
* Trying to do either regression (hours until price goes above X) or classification (odds that price will go away )
* Do an independent prediction for each instance type