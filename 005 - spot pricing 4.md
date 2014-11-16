---
author: DevNambi
date: 2014-11-16
layout: post
slug: spot-strategy
title: AWS Spot Strategy
meta-description: 
- aws
- amazon web services
- ec2
- vm
- cloud computing
- race to zero
- cost of computing
- bidding strategies
- cloud arbitrage
---

Over the last few days I've looked at AWS spot instances, competitors, and predicting their performance. Now, let's look at how to use this information. 


Bidding strategies:
* Maximum bid, keep it running
* Persistent bid at a certan price, trade-off for cost vs. runtime
* Auto-analyzing bid, move to different locations and exploit deals over time.


Caveat. Sometimes there aren't very many of certain instance classes, so you can *bid against yourself*. Unfortunately there often isn't enough information about customer demand vs. supply to figure out what's going on (if you're being outbid by customers, or if AWS is reclaiming instances because it needs the supply for on-demand or other instance types).


---- 
**Part 4: Strategy and Uses**

* Public good. Science. 
* Offer to share
* For a couple of prototypical workloads (use Netflix for an example), walk through the cost differential
* Youtube video on strategies
* http://santtu.iki.fi/2014/03/25/ec2-spot-price-minimum/
* http://santtu.iki.fi/2014/03/20/ec2-spot-market/
* http://santtu.iki.fi/2014/03/19/ec2-spot-usage/
* http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-limits.html

* http://blog.yhathq.com/posts/how-yhat-does-cloud-balancing.html


**Post-Publish Notes***

* Notify interested groups
	* Wendy Pastrick (?) at Seattle Cancer Care Alliance
	* Chris Bare at Sage Bionetworks
	* Susan ____ from SUUC at Harborview
	* UW-IT cloud computing folks. IAM. 
	* eScience Institute
	* UW CSE department. My grad-student contact there.
	* UW Physics department
		* https://www.youtube.com/watch?v=mKElyNabc0A&feature=youtu.be
		* Kevin Jorissen, Research Assoc there.
		* Fernando Villa, Research scientist there
		* They focus on cluster instances