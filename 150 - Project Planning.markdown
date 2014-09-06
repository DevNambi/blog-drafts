---
title: Project Planning and Prioritization
layout: post
slug: project-planning
---

**Phases**

1. Assume customers of equal size, with equal request sizes. Assume all work is the same size. No contravening work. PMs of 1, 2, 3, up to 10 layers away. Add margins of error. 
	- To add a feature that isn't requested, how much clearer of vision do you need to have?
	- What are the implications?
	- What are the assumptions of guessing. How to reduce that risk. Sampling.
	- Since risk is roughly proportional to guesstimate size, assume random risk up to 2X the size of the estimate. See what happens.
	- Punish misses 5X more than early successes. Human psychology for underpromising and overdelivering.

## Project Planning and Prioritization

No business *ever* has enough skilled people or resources. Engineering teams should build things that are important. Prioritizing work is important.

Let's use data to make project planning more accurate.


#### It's About the Customer

Any engineering team has customers who want *more* and *better* things. They inevitably ask for features and add-ons. This is a good thing.

The goal: give customers what they want.

* It's good to build features that are wanted by more customers.
* It's good to built features that are more important to many customers.
* It's good to build features that customers *will* want but haven't asked for yet.

It's not possible to do these 3 things simultaneously. We have to *prioritize*. You can see where confusion creeps in.

(IMAGE: crying baby. Bah humbug. Well, darn, chagrin).

#### Acquiring Data

Before we prioritize anything, let's ask:

1. What is the value of this piece of work?
2. What is the size/cost of each piece of work?
3. What is the opportunity cost for doing this piece of work first, and waiting for the rest?

Let's assume that all software projects are the same size/cost/risk (eliminate #2). We *still* run into confusion...

1. The 'value' attached to work is a guess, affected by bias and competing agendas.
2. A given piece of work has different value to different people. The [principal-agent problem](http://devnambi.com/2013/principal-agent-problem/), CHECKLINK comes into play. 
3. The value of work that *customers don't ask for* is either 0 or incredibly high. Some times it's high (iPhones); other times it's not (Windows RT, 3D TVs, New Coke). Ego and hubris come into play: "we know what customers want better than they know themselves". 

We need data for this problem. Let's pretend we have a software team with 75 customers of equal size, and each customer asks for 30 different features of equal importance. There's a lot of overlap between customer requests. We can answer 80% of the requests by building only 20% of the features [the famous 80/20 rule](http://betterexplained.com/articles/understanding-the-pareto-principle-the-8020-rule/).


**Distinct Requests**
75 customers X 30 features = 2250 requests total
450 requests are actually 20% of the requests that can satisfy 80% of the work.

We can satisfy 80% of the requests 
For each number from 1 through 2250
	Find the cumulative percent (1 / request number).
	Find the pareto cumulative distribution.

> make a Pareto distribution of 2250 requests

http://stackoverflow.com/questions/14497349/draw-random-numbers-from-restricted-pareto-distribution

Let's start by figuring out how many *distinct* requests we have. We'll do that using one of my favorite tools: **R** (ADD LINK).

NOTE: this can be computed because all of the requests are of equal size. So we're looking at incremental size vs. gain-to-that-point.

It turns out that we have (INSERT) requests. We also see that we can't satisfy all customers equally using this method.


**MONTE CARLO #1**: how many distinct features do we have for this scenario? 

* Generate the data set. Customers get numbers, requests get numbers.
* Get the 80/20 rule working
* Graph the results
* Save the data set as a CSV. Rank projects by alphabetical order.


This also gives us priority. Features that are asked for my more customers are more important.

### Measuring Success and Failure

Let's define how to measure success and failure. We want to know how well different strategies work. 

We can use a simple metric: Days to Completion.

The first measure of error is simple: delay times priority.

*Simplistic*

> TotalError = SUM_ForEachFeature(Days Before Delivered * Customers Who Want It)

*Opportunity Costs*

However, we really should measure opportunity costs (LINK).

> TotalError = SUM_ForEachFeature(Days Before Delivered * Customers Who Want It) + SUM_ForeachFeature(Higher Priority Features That Aren't Done * Customers Who Wanted That Feature)

*Uncertainty*

(ADD IMAGE: 1-900-CALL-PM)

Since we're not psychics, we should add a margin of error to our estimates. Let's assume projects can be between 20% faster and 100% slower.

> TotalError = SUM_ForEachFeature(Days Before Delivered * Margin of Error * Customers Who Want It) + SUM_ForeachFeature(Higher Priority Features That Aren't Done * Margin of Error * Customers Who Wanted That Feature)


### Ideal Scenario

Let's go for our ideal scenario. Given 2250 requests by customers for X features, what is the ideal order to do work?

If we do the highest-demand work first, in order, how well do we do?

If we generate 1 million different scenarios, how many of them do better than that?

(INSERT ANSWER).

> MOCK UP IDEAL SCENARIO

We can see here that our minimum days to completion is X. That's not bad at all for 2250 requests.

If any engineering can do half this well, they'll take over the world.


### The Fly in the Ointment

This is hopelessly naive (ADD ACCENT). Companies are notoriously bad at this, for a few key reasons:

http://danielwertheim.se/2013/10/24/how-i-think-sprint-backlog-prioritization-can-be-a-hinder/


* What customers value isn't what PMs or managers value.
* What customers ask for isn't what they really want
* Customers ask for different but overlapping things.
* What customers value is too small to become a project
* What customers value is too large to become a project
* PMs/Managers listen to one voice, a 'representative' or 'stakeholder', who misunderstands or misrepresents what is customers think is important.

To add insult to injury, there are often multiple layers of management or stakeholders between the real customers and the developers. It's a game of telephone (LINK) with ridiculously high stakes.


1. Assume customers of equal size, with equal request sizes. Assume all work is the same size. No contravening work. PMs of 1, 2, 3, up to 10 layers away. Add margins of error. 
	- To add a feature that isn't requested, how much clearer of vision do you need to have?
	- What are the implications?
	- What are the assumptions of guessing. How to reduce that risk. Sampling.
	- Since risk is roughly proportional to guesstimate size, assume random risk up to 2X the size of the estimate. See what happens.
	- Punish misses 5X more than early successes. Human psychology for underpromising and overdelivering.



[INSERT FAMOUS BUILD-A-SWING IMAGE HERE]

Project managers and leadership often try to find a 'middle ground' in project size for two simple reasons:

1. Small tasks are seen as too small to be valuable. Or, they can just be 'squeezed in'. Imagine tuning a car engine without changing the oil first. 
2. Large projects are seen as too risky to be done. Or, they must be broken down into pre-defined phases/milestones, and only some of them are completed. Imagine building 2/3 of a car and declaring victory before the transmission works.

#### In a Perfect World:

Ideally, high-priority work would be defined as the most value for the most customers, weighted by their importance and their preferences. 

You know what this looks like? *Voting*. The difference is that runners-up matter, the number of voters (customers) is smaller, and votes have different importance (one customer is not the same as another). It also avoids the [voting paradox](http://en.wikipedia.org/wiki/Voting_paradox)

Since this is the same problem, we can use some of the research into voting. It turns out one of the best methods is (instant runoff voting](http://en.wikipedia.org/wiki/Instant-runoff_voting)

To do this we need data. Let's start with a simple table that contains the following:

* Customer ID
* Customer Importance (ranking, 1-5, 1 is most important)
* Work ID
* Customer Work Rank (ranking, 1-5, 1 is most important)


#### Monte-Carlo simulations:

> Make a list of work items and customers. For each work item, assign a customer value that's randomly assigned, but spread according to a _____ distribution. 

> What is perfect accuracy? Perfect customer value is (Benefit X Importance) - (Drawback X Importance). 

> Given N features and M users, what's the error if they all vote?

> Given 1 layer of indirection, what's the margin of error? How does this change as we change the error rate?

> Given 2 layers of indirection, what's the margin of error? How does this change as we change the error rate? What rate of accuracy is needed to beat an ensemble of customers guessing?

> Given customers don't know for sure, how much better do PMs need to be than an ensemble of customers to predict well? 

> Add TF-IDF to downweight customers that ask for too many features. Or is that just wrong?

> Use Python to write this.

> Use ROC curves to assess accuracy

### Coding

Inputs: work, customer, global accuracy

1. Create perfect accuracy. 

Goal: [CustomerId, WorkId, VoteRank]

First, get a list of work. Sort it randomly. Assign a number to each as part of the Pareto distribution. Persist it for future analysis.

Then have each customer vote for work using an 80/20 (Pareto) distribution, without replacement.

(Run X times to get perfect accuracy?)

Aggregate, average the results. Graph them.

2. Try each new algorithm (for example, pick-the-top-1 voting). Compare it with the instant-runoff voting results. 

To compute similarity, try the following:
- Based on relative rank?
- Closer is better
- High-priority misfires are worse than low-priority misfires?

#### Indirection adds error

There is a common theme here. Adding layers of PMs, customer advocates, stakeholders, and evangelists between your customers and developers increases the chance you'll prioritize the wrong thing.

The fix is straightforward technically (if not politically): remove your layers of indirection. *A voting app/site would be better than most PM organizations I've seen*


**Examples of sites that help w/ this**

Let's look at some alternatives:
* Equal voting
* Weighted voting
* Instant runoff voting
* Weighted instant runoff voting.


https://en.wikipedia.org/wiki/COCOMO

http://research.google.com/pubs/pub41849.html <- consensus monte carlo

http://diegobasch.com/software-development-estimates-where-do-i-start

http://apps.startribune.com/news/20130915-ranked-choice-voting/

http://akvo.org/blog/the-ball-of-mud-transition/

http://www.oliverlehmann.com/project-management-sources/Nasa-Hundred-Rules-for-Project-Managers.pdf?utm_content=buffer9f90e&utm_medium=social&utm_source=facebook.com&utm_campaign=buffer


### The Cost of Software

Now that we've looked at the value of software, let's turn our attention to cost. The #1 bottleneck for most software is development time. The assumption is that by estimating the time to build software, decisions can be made to equally important but faster work. 

Seems simple. It suffers from some fundamental problems:

* Software estimates are notoriously inaccurate, often incorrect by an order of magnitude or more. 
* Estimation takes time and effort by developers, who are already a scarce resource
* Order matters, because if project A depends on B, then doing A before B is more expensive than doing B before A.
* Context switching is not free. Doing multiple projects concurrently adds a context-switching task to everyone, adding a bottleneck to another scarce resource.


Add just enough process, but no more. Otherwise you go from value-add to BS

#### Projects are usually a certain size. 
Too small and the BS-to-work ratio discourages customers
Too big and it's deferred forever because it's seen as impossible or out-of-scope. OR, it gets broken down and not all of the pieces are completed.



### Conclusions

* Don't add layers of bureaucracy. It's an almost guaranteed way to fail. 
* Consider using an automated tool like https://www.uservoice.com/ . It's not only cheaper, it's *more accurate*
 