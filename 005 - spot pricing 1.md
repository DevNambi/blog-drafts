---
author: DevNambi
date: 2014-11-12
layout: post
slug: spot-pricing
title: Analyzing AWS Spot Pricing
meta-description: 
- pass summit
- machine learning
- prediction
- feature extraction
- sqlpass
---


Amazon Web Services allows you to *bid* for computing capacity (EC2 VMs). If your maximum bid is more than the current bid price, you keep your instance. If your maximum bid is *less* than the current bid price, then your VM is destroyed.

The advantage is that the bid prices are far cheaper than the usual on-demand price. 70-90% discounts are common.

Here's a quick example of bid vs. on-demand prices for some commonly-used AWS instance types in the us-east-1 (Northern Virginia) region:

* TO DO: Add table here

m3.medium - .23
c3.large - .12
r3.xlarge - 0.15
g2.2xlarge - .14


**Outline**

* Intro to AWS spot prices. Quick teaser on average discounts

Analyzing AWS spot instance pricing for fun and profit. 

If you're here, chances are you know about AWS spot instances. There's a few fun tricks I've found:

* Spot instances are *identical* to EC2 instances. The only difference is the way they are priced and billed.
* Not all AZs are the same price. This is a bit insane, considering that 


## Spot-Pricing Analysis

* http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html
* http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSpotPriceHistory.html
* http://gigaom.com/2013/10/08/bidding-strategies-arbitrage-aws-spot-market-is-where-computing-and-finance-meet/
* http://santtu.iki.fi/2014/03/25/ec2-spot-price-minimum/
* http://santtu.iki.fi/2014/03/20/ec2-spot-market/
* http://santtu.iki.fi/2014/03/19/ec2-spot-usage/
* http://recode.net/2014/11/12/amazon-cloud-chief-andy-jassy-dismisses-talk-of-price-war/


## Part 1: An overview

* Explain what spot instances are. Link to YouTube videos.
* Go over high-level discounts. Then discounts per region. Per AZ. Per time of day. Per biz hour / weekday.
* Mention that the field of research here is bidding, agent-based systems. 
* Quant finance is a resource to learn more
* Cost to run per day assuming an infinite bid.

* What's the cheapest instance to get for CPU-heavy work?
* What's the cheapest setup for RAM-heavy work?
* What's the cheapest setup for I/O heavy work?
* What factors matter when picking instances?
* What regions and AZs matter?
* Which are the cheapest regions?
	* How about AZs? How much does AZ choice matter?
* What are the deepest discounts to expect from spot instances?
* What days and times of day matter? What patterns exist?
* What are bad deals? Are GPU instances as bad as feared because of Bitcoin miners?