---
author: DevNambi
date: 2014-12-08
layout: post
slug: pass-attendance-redux
title: PASS Summit Attendance and Predictions
meta-description: 
- pass summit
- sqlpass
- conference analysis
- attendance
- statistics
- margin of error
---

Technical conferences live and die by their community. A engaged audience and talented speakers will go very, very far. The goal of conference organizers, then, is to identify and develop good speakers and good content, so their audiences thrive. 

This fall, I joined the [PASS Program Team](http://www.sqlpass.org/community/speakerresource.aspx) to help them predict session attendance for [PASS Summit 2014](http://www.sqlpass.org/summit/2014/Home.aspx) . During the conference, I heard anecdotes that rooms were better allocated this year. 

Now I have the conference data on attendance and attendee feedback. How well did we do?


#### Attendance

The true test of a prediction is to compare it to reality. In this case, we have the predictions before Summit (LINK TO GITHUB), from the [analysis I did then](http://devnambi.com/2014/pass-attendance/). 

Compared to the 3 previous years, how well did we allocate rooms? In particular, how well did we make sure rooms weren't over-crowded?


**Defining Error**

With any prediction project, the definition of an error metric is critically important. There are a few classic examples:

* The difference between prediction and reality
* The *percentage* difference between prediction and reality
* Root mean squared error (RMSE)

(ADD TABLEAU VIZ THAT ISN'T ROC)

It turns out my predictions were **wildly** bad. Some sessions had a predicted attendance of 323..and 12 people showed up. That's just awkward.

(IMAGE: INCREDIBAD!)


**Redefining Error**

So, my predictions of sessions were inaccurate using common error metrics. However, they were also useful. The reason is because overcrowded rooms are worse than mostly-empty ones.

It's not a problem for a session room to be half empty. Even 70% empty isn't bad. It's only awkward when a room is 85% empty or so...it starts to feel odd.

However, it's *really* bad when a session is even 5% over capacity, because it means people are getting cramped, turned away, etc. 

Given that knowledge, an 'error' is when sessions were under-predicted, and more people show up than expected. There were just 2 sessions like that, with 12-16% more people than expected. That's not too bad.

Let's see how room allocation fared.

**Musical Chairs**

People usually don't sit right next to each other at conferences. There's lots of reasons for that: elbow room, not enough deodorant, being polite. As a result, a room will feel 'full' far before it's 100% full.

Let's count the number of sessions that were over 90% full. 

(ME: turn into a table)

2011: 32 sessions
2012: 50 sessions
2013: 51 sessions
2014: *18 sessions*

That's definitely an improvement. Let's look at our success criteria: sessions that are 20-89% full:

2011: 181 sessions
2012: 202 sessions
2013: 196 sessions
2014: 154 sessions

Here we see a *drop* in sessions. This is because of our other failure criteria: rooms that are less than 20% full.:

2011: 23
2012: 51
2013: 55
2014: 67

The results were *not* ideal; we had 18 sessions that were over-crowded, and we should do better next year. We've also traded a painful problem (overcrowded sessions) for an awkward one (mostly-empty rooms).

I didn't account for the time of day, conference fatigue, or the presentation topics. There's quite a bit of improvement than could be made. 

However, this year's PASS Summit had the fewest over-crowded rooms since 2011. I'll call that a win.

(IMAGE: victory is mine)

#### Keep Going

There's no reason I should be the only person looking at this data.  The [#sqlpass](https://twitter.com/search?q=%23sqlpass&src=typd) [community](https://twitter.com/search?q=%23sqlfamily&src=typd) is large and technically savvy. To that end I've made all of the raw data public (LINK TO GITHUB).

http://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/

You can also contact me anytime via Twitter ([@DevNambi](https://twitter.com/DevNambi)) or email (me@devnambi.com). 