---
slug: pagerank
title: Scaling PageRank in SQL
layout: post
author: Dev Nambi
date: 2013-12-08
meta-description: In this blog post Dev Nambi analyzes how PageRank scales in SQL.
tags:
- sql
- sql development
- PageRank
- graph databases
- scaling
---

In [my last post](http://devnambi.com/2013/pagerank/) I put together an implementation of [PageRank](http://en.wikipedia.org/wiki/PageRank) using SQL. Now let's see how it scales.

#### Tables

I'll be using the same tables as before, **Nodes** and **Edges**

{% highlight SQL %}
CREATE TABLE Nodes
(NodeId int not null
,NodeWeight decimal(10,5) not null
,NodeCount int not null default(0)
,HasConverged bit not null default(0)
,constraint NodesPK primary key clustered (NodeId)
)

CREATE TABLE Edges
(SourceNodeId int not null
,TargetNodeId int not null
,constraint EdgesPK primary key clustered (SourceNodeId, TargetNodeId)
,constraint EdgeChk check SourceNodeId <> TargetNodeId --ignore self references
)
{% endhighlight %}


#### Table Setup

To run these tests I have my home workstation, a bog-standard Core i5-2500K CPU, 16GB of RAM, and a 1TB 7200pm SATA drive that I'll be using for both tempdb and the PageRank test database.

Whenever I run a test, I want to measure a few key metrics:

* CPU time
* Clock time
* Logical I/O (memory accesses)
* Physical I/O (reads and writes)
* Number of iterations needed to converge
* Number of nodes that converge each iteration

In addition, I want to start small and scale up my tests. I'll be running several tests:

* 10 nodes, 15 edges
* 100 nodes, 175 edges
* 1K nodes, 3K edges
* 10K nodes, 50K edges
* 100K nodes, 750K edges
* 1 mil nodes, 10 mil edges
* 10 mil nodes, 100 mil edges
* 100 mil edges, 1 billion edges
* 1 billion edges, 10 billion edges

(LIST THE TESTS)

I'm tweaking the tests by adding a few performance tweaks:

* Adding a [columnstore](ADD LINK) (columnar) index to the Edges table, since it is read-only.

#### Results

**TO DO**

* CPU scaling 
* Iteration scaling
* Logical I/O scaling
* Time scaling
* Physical I/O scaling
* Bottleneck analysis



#### Tweak #1: Data Compression

SQL Server supports *data compression*, where a row is compressed to save space. It turns out that row compression for the Nodes table reduces its size by ____, reducing I/O by the same amount.

#### Tweak #2: Excluding converged nodes

The second tweak is an algorithm change, which excludes nodes that have converged from future iterations. 


#### Victory!

As before, my code is available [on GitHub](https://github.com/DevNambi/SqlServerUtilities/tree/master/PageRank).

**Happy Coding!**