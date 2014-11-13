---
author: DevNambi
date: 2014-11-12
layout: post
slug: spot-pricing
title: Analyzing AWS Spot Pricing
meta-description: 
- aws
- amazon web services
- ec2
- vm
- cloud computing
- race to zero
- cost of computing
---


[Amazon Web Services](http://aws.amazon.com/) allows you to [*bid* for computing capacity](http://aws.amazon.com/ec2/purchasing-options/spot-instances/) ([EC2 VMs](http://aws.amazon.com/ec2/)). If your maximum bid is more than the current bid price, you keep your instance. If your maximum bid is *less* than the current bid price, then your VM is destroyed.

Your first impression may be one of disbelief. Why would anyone use a virtual machine that can be destroyed at a moment's notice? You'd never get any work done!

Well, sort of. Spot instances are **far** cheaper than their on-demand brethren. Here are average daily costs for some AWS instance types in the us-west-2 (Oregon) region:

| [Instance Type](http://aws.amazon.com/ec2/instance-types/)  | On-Demand Price  | Spot Price  | Discount |
| ------------- |:-------------: | :-----:| ----: |
| t1.micro      |  $0.48         | $0.13  | 73%   |
| m3.medium     |  $1.67         | $3.91  | -134% |
| c3.xlarge     | $12.39         | $2.30  | 54%   |
| r3.4xlarge    | $10.00         | $6.82  | 80%   |
| h1.4xlarge    | $73.96         | $5.91  | 92%   |
| g2.2xlarge    | $15.50         | $2.71  | 82%   |
| cc2.8xlarge   | $47.77         | $7.14  | 85%   |

A few types of VMs are more expensive than on-demand VMs. However, most types, including most of the powerful choices, are less expensive.

Since the instances are so cheap, suddenly it makes sense to use spot instances for workloads that can be run statelessly, save their work to permanent storage, or compensate for failures. 


### Pricing, A History

To learn more about spot instance pricing, let's look at history. This is easy; AWS exposes both a [price history API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSpotPriceHistory.html) as well as [documentation](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html).

I used the API to download 90 days of price history for every Amazon region, availability zone, and instance type. 


## Part 1: An overview

* DONE: Go over high-level discounts. 
* Then discounts per region. 
* Per AZ. Per time of day. 
* Per biz hour / weekday.
* Mention that the field of research here is bidding, agent-based systems. 
* Quant finance is a resource to learn more
* Cost to run per day assuming an infinite bid.

* What's the cheapest setup to get for CPU-heavy work?
* What's the cheapest setup for RAM-heavy work?
* What's the cheapest setup for I/O heavy work?
* What factors matter when picking instances?
* What regions and AZs matter?
* Which are the cheapest regions?
	* How about AZs? How much does AZ choice matter?
* What are the deepest discounts to expect from spot instances?
* What days and times of day matter? What patterns exist?
* What are bad deals? Are GPU instances as bad as feared because of Bitcoin miners?


**Outline**

* Intro to AWS spot prices. Quick teaser on average discounts

Analyzing AWS spot instance pricing for fun and profit. 

If you're here, chances are you know about AWS spot instances. There's a few fun tricks I've found:

* Spot instances are *identical* to EC2 instances. The only difference is the way they are priced and billed.
* Not all AZs are the same price. This is a bit insane, considering that 


## Spot-Pricing Analysis

* http://gigaom.com/2013/10/08/bidding-strategies-arbitrage-aws-spot-market-is-where-computing-and-finance-meet/
* http://santtu.iki.fi/2014/03/25/ec2-spot-price-minimum/
* http://santtu.iki.fi/2014/03/20/ec2-spot-market/
* http://santtu.iki.fi/2014/03/19/ec2-spot-usage/
* http://recode.net/2014/11/12/amazon-cloud-chief-andy-jassy-dismisses-talk-of-price-war/

