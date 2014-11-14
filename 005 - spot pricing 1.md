---
author: DevNambi
date: 2014-11-13
layout: post
slug: cheap-computing
title: Cheap Computing with AWS Spot Instances
meta-description: 
- aws
- amazon web services
- ec2
- vm
- cloud computing
- race to zero
- cost of computing
---

You can run [Amazon Web Services](http://aws.amazon.com/)' [EC2 VMs](http://aws.amazon.com/ec2/) cheaply by [bidding for computing capacity](http://aws.amazon.com/ec2/purchasing-options/spot-instances/). The virtual machines (instances) you get are *identical* to [on-demand VMs](LINKME); the only difference is the pricing.

The way this works is when requesting an instance, you specify the maximum bid per hour that you're willing to pay. If your maximum bid is more than the current bid price, your bid is granted and you get to create (or keep) an instance. If your maximum bid is ever *less* than the current bid price, then [your instance is destroyed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-pricing-interruptions.html).

When I first read about this, I reacted with disbelief. Why would I use a virtual machine that can be destroyed at a moment's notice? I'd never get any work done!

Then I looked a little closer. Spot instances are **far** cheaper than their on-demand, pay-a-flat-hourly-price brethren. 

Here's the average daily cost over the last 90 days to run 7 different instance types in the Northern Oregon (us-west-2) region:

| [Instance Type](http://aws.amazon.com/ec2/instance-types/)  | On-Demand Price  | Spot Price  | Discount |
| ------------- |:-------------: | :-----:| ----: |
| t1.micro      |  $0.48         | $0.13  | 73%   |
| m3.medium     |  $1.67         | $3.91  | -134% |
| c3.xlarge     | $12.39         | $2.30  | 54%   |
| r3.4xlarge    | $10.00         | $6.82  | 80%   |
| h1.4xlarge    | $73.96         | $5.91  | 92%   |
| g2.2xlarge    | $15.50         | $2.71  | 82%   |
| cc2.8xlarge   | $47.77         | $7.14  | 85%   |

A few of the VM types are more expensive than on-demand VMs, and are a terrible deal. However, most types, including most of the powerful choices, are much less expensive.

With computing capacity this cheap, it makes sense to use spot instances for workloads that can be run statelessly, save their work to permanent storage, or compensate for failures. Of the 30-odd startups I have contacts in, *all* of them use spot instances extensively, to save money.


### It's All About the Money

To learn more about spot instance pricing, let's look at history. This is easy; AWS exposes both a [price history API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSpotPriceHistory.html) as well as [documentation](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html). It's easy to use the API, like I did, to download historical prices. I pulled down 90 days' history for every Amazon region, availability zone, and instance type. 

*All of the prices below are the average daily cost to run a VM with an infinite bid, unless noted otherwise.*

#### Prices By Location

Prices vary dramatically by location. 


* DONE: Go over high-level discounts. 
* Then discounts per region. 
* Per AZ. 
* What regions and AZs matter?
* Which are the cheapest regions?
	* How about AZs? How much does AZ choice matter?
* Which regions have the most price 'bursts'?
* Not all AZs are the same price. This is a bit insane, considering that 


#### Prices By Time

Prices differ by time of day

* Per biz hour / weekday.
* Per time of day. 
* What days and times of day matter? What patterns exist?
* Which times have the most price 'bursts'?



#### Prices By Machine Type

* What's the cheapest setup to get for CPU-heavy work?
* What's the cheapest setup for RAM-heavy work?
* What's the cheapest setup for I/O heavy work?
* What are bad deals? Are GPU instances as bad as feared because of Bitcoin miners?
* Which instance types have the most price 'bursts?'


### Here There Be Deals

Let's look at a graph showing the best deals. AWS charges the same for I/O regardless of instance type, unless you're using ephemeral storage. So let's find the best deals by CPU power and memory (RAM). 

* Cores per $
* RAM per $
* What are the deepest discounts to expect from spot instances?


#### Be Contrary

Spot pricing is a complicated topic, because it's the [combination of several different topics](http://gigaom.com/2013/10/08/bidding-strategies-arbitrage-aws-spot-market-is-where-computing-and-finance-meet/):

* Pay-as-you-go computing capacity
* Supply and demand (economics)
* Bidding systems, a.k.a agent theory (LINKS)

This sounds like a job for quantitative finance geeks, arbitrage specialists, and other mathematically obsessed folks. Lucky for us, there's a simple way to find deals when bidding:

**Buy What's Not Popular**