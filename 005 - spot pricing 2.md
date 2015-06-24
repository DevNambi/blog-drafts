---
author: DevNambi
date: 2014-11-20
layout: post
slug: cheap-computing-comparison
title: Comparing Computing for Fun and Profit
meta-description: 
- aws
- amazon web services
- ec2
- spot instances
- google compute engine
- gce
- microsoft azure
- windows azure
- vm
- cloud computing
- race to zero
- cost of computing
---

In my last blog post, I gave an introduction into Amazon Web Services' spot instances. There were some great deals to be found.

Let's look at the competition. How cheaply can we run find computing resources using Google's [Compute Engine](https://cloud.google.com/compute/) and Microsoft's [Azure](http://azure.microsoft.com/en-us/)?

First, let's compare the different instances types by both price and performance. For now, I'm going to assume that RAM speed is the same everywhere. It's only RAM capacity that matters.

CPU speed, on the other hand, varies dramatically. 



**Azure**

* http://azure.microsoft.com/en-us/pricing/details/virtual-machines/#Linux
* Does it charge for local I/O? Does that even exist?


**GCE**

* Charges for local SSD I/O!
* https://cloud.google.com/compute/docs/machine-types#standard
* https://cloud.google.com/compute/docs/disks
* https://cloud.google.com/compute/docs/local-ssd#pricing_and_quota




https://aws.amazon.com/blogs/aws/focusing-on-spot-instances-lets-talk-about-best-practices/



**Resources**

* http://www.citeworld.com/article/2113976/cloud-computing/ultimate-cloud-speed-tests-amazon-vs-google-vs-windows-azure.html
* http://blog.cloudharmony.com/2013/06/value-of-the-cloud-cpu-performance.html <- AMAZING
* http://www.pythian.com/blog/comparing-cpu-throughput-of-azure-and-aws-ec2/
* http://www.computerworld.com.au/article/539633/amazon_vs_google_vs_windows_azure_cloud_computing_speed_showdown/
* http://sqlperformance.com/2014/05/io-subsystem/comparing-azure-vm-performance
* https://cloudvertical.com/cloud-costs#cloud_costs/index
* http://redmonk.com/sogrady/2014/11/18/iaas-pricing-patterns-1114/ <- VERY USEFUL



#### Google Cloud Engine

* Figure out CPU per scaling factor for each
* How much of a discount is this compared to GCE or Azure, since they don't have this feature

#### Microsoft Azure

* Figure out CPU per scaling factor for each
* How much of a discount is this compared to GCE or Azure, since they don't have this feature



### When In Doubt, Competition

If I was a large company, I would use *several* cloud computing solutions. My reasoning is simple: it's cheaper that way.

'Public cloud' infrastructure is incredibly expensive to build and engineer. The leaders in the field have some of the smartest engineers on the planet. The barriers to entry are *extremely* high. 

When I'm a customer of companies that have natural barriers to competition, I want there to be lots of choices. As long as many different cloud-computing companies exist, there will be [competition on price, regardless of what people say](http://recode.net/2014/11/12/amazon-cloud-chief-andy-jassy-dismisses-talk-of-price-war/). Competition leads to lower prices than monopolies; that's Economics 101 (LINKME).
