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

#### Prices By Region

Prices vary dramatically by location. 

<script type='text/javascript' src='https://public.tableausoftware.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 424px; height: 489px;'><noscript><a href='#'><img alt='Regional Discount Dash ' src='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;RegionalDiscountDash&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='424' height='489' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableausoftware.com%2F' /> <param name='site_root' value='' /><param name='name' value='SpotAnalysis&#47;RegionalDiscountDash' /><param name='tabs' value='no' /><param name='toolbar' value='no' /><param name='static_image' value='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;RegionalDiscountDash&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /></object></div><div style='width:424px;height:22px;padding:0px 10px 0px 0px;color:black;font:normal 8pt verdana,helvetica,arial,sans-serif;'><div style='float:right; padding-right:8px;'></div></div>

As we can see from the graph above, the median discount between on-demand and spot instances to run a VM for a day ranges from 38% (Sao Paolo) to 72% (Northern Oregon). 

#### Prices By AZ and Instance Category

<script type='text/javascript' src='https://public.tableausoftware.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 544px; height: 609px;'><noscript><a href='#'><img alt='Discount Location Dash ' src='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountLocationDash&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='544' height='609' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableausoftware.com%2F' /> <param name='site_root' value='' /><param name='name' value='SpotAnalysis&#47;DiscountLocationDash' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountLocationDash&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /></object></div><div style='width:544px;height:22px;padding:0px 10px 0px 0px;color:black;font:normal 8pt verdana,helvetica,arial,sans-serif;'><div style='float:right; padding-right:8px;'><a href='http://www.tableausoftware.com/public/about-tableau-products?ref=https://public.tableausoftware.com/views/SpotAnalysis/DiscountLocationDash' target='_blank'>Learn About Tableau</a></div></div>

Looking deeper, some Availability Zones (AZs) have far larger discounts than others. Certain instance categories are also deeply discounted, such as special-purpose and storage-centric instance types.

We can also see that not all AZs have the same discounts, even in the same region. This is inefficient bidding by AWS users, but it's also a good news for deal hunters. For example, the price discounts in the us-east-1 (Northern Virginia) region range between -20% and 39% for general purpose instances. 

The differences are even more dramatic between regions. General-purpose instances can have up to 70%+ discounts in a few AZs. At that discount, we can run 30 m3.2xlarge instances for less than $100 a day, instead of the ~$400 on-demand price.

#### Prices By Instance Type

If we look at prices per instance type, we can see that some instance types have generally deeper discounts. High-memory instances (the r3 family), the h1.4xlarge storage instance, and the cluster-computing instances tend to have deep discounts. 

<script type='text/javascript' src='https://public.tableausoftware.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 424px; height: 489px;'><noscript><a href='#'><img alt='Discount Type Dash ' src='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountTypeDash&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='424' height='489' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableausoftware.com%2F' /> <param name='site_root' value='' /><param name='name' value='SpotAnalysis&#47;DiscountTypeDash' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountTypeDash&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /></object></div><div style='width:424px;height:22px;padding:0px 10px 0px 0px;color:black;font:normal 8pt verdana,helvetica,arial,sans-serif;'><div style='float:right; padding-right:8px;'><a href='http://www.tableausoftware.com/public/about-tableau-products?ref=https://public.tableausoftware.com/views/SpotAnalysis/DiscountTypeDash' target='_blank'>Learn About Tableau</a></div></div>

#### Hunting for Deals

Now let's look for the biggest deals we can find. Let's look at every single instance type, per region, per AZ. Let's look for the biggest deal, based on the combination of price-per-CPU and price-per-RAM. 

<script type='text/javascript' src='https://public.tableausoftware.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 424px; height: 489px;'><noscript><a href='#'><img alt='Discount Type Dash ' src='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountTypeDash&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='424' height='489' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableausoftware.com%2F' /> <param name='site_root' value='' /><param name='name' value='SpotAnalysis&#47;DiscountTypeDash' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;publicrevizit.tableausoftware.com&#47;static&#47;images&#47;Sp&#47;SpotAnalysis&#47;DiscountTypeDash&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /></object></div><div style='width:424px;height:22px;padding:0px 10px 0px 0px;color:black;font:normal 8pt verdana,helvetica,arial,sans-serif;'><div style='float:right; padding-right:8px;'></div></div>

The best deals are in the top-right, which have the most cores per $ *and* the most GB of RAM per $. The best deal around so far is the 


Let's use this to debunk some myths:

**Don't use overseas datacenters, because they're too expensive**

**Don't run GPU instances because Bitcoin miners are eating up all of the capacity**

**Don't run big instances because they're far more expensive than smaller ones**




* What's the cheapest setup to get for CPU-heavy work?
* What's the cheapest setup for RAM-heavy work?
* What's the cheapest setup for I/O heavy work?
* What are bad deals? Are GPU instances as bad as feared because of Bitcoin miners?



#### Prices By Time

Prices differ by time of day

* Per biz hour / weekday.
* Per time of day. 
* What days and times of day matter? What patterns exist?
* Which times have the most price 'bursts'?
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