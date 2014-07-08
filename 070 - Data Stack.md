---
author: DevNambi
date: 2014-02-14
layout: post
slug: data-stack
title: Data Stacks
meta-description: In this blog post, Dev Nambi writes about the new data stacks.
tags:
- data science
- signal vs. noise
- fud
- marketing
- big data
- machine learning
- learning
- distributed computing
---

One of the more famous engineering diagrams is the OSI network model. It describes the different layers of a network, and what each layer is responsible for. It's a *beautiful* example of how separation of concerns and abstraction can be used to build a large system.

It's the model that defines the engineering around the entire Internet. 

Data engineering doesn't have an equivalent model. This is my attempt to create one. 


### The Elephant Has Left the Building

Hadoop is almost a decade old. It's established. It's also showing it's age. The original MapReduce paper came out in 1999 (LINK).

#### HDFS

The HDFS file system is still immensely popular, even with companies that are working to 'replace Hadoop'. I have 2 guesses why:

1. It does a great job of maintaining file integrity using inexpensive disks without sacrificing performance.
2. Filesystems are hard to create.

http://www.slideshare.net/julienledem/th-210pledem

#### MapReduce

MapReduce, on the other hand, hasn't aged as well. It works well for some problems, but it turns out to be very limiting for a lot of . In particular, its batch-oriented processing paradigm makes it useless for low-lateny (interactive) queries. 

Google replaced MapReduce with Dremel. Then it replaced that with F1.

The most popular cutting-edge implementations of interactive big-data engines are probably Cloudera Impala and Apache Spark/Shark. 

## The Layers

Hardware, Infrastructure.

Low-Level Operators

High-Level Operators, Queries

Algorithms, Parameters

Languages


#### Hardware


#### Low-Level Operators


#### High-Level Operators


#### Algorithms, Parameters


#### Languages


## The Future

