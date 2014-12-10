---
author: DevNambi
date: 2014-12-13
layout: post
slug: pass-evaluation
title: Say Anything! PASS Summit Feedback and Ratings
meta-description: 
- pass summit
- sqlpass
- conference analysis
- statistics
- margin of error
---

In my [last blog post](http://devnambi.com/2014/pass-attendance-results) I explored some of the patterns found when looking at attendance of SQL PASS Summit sessions.

Now, let's look at the sessions themselves, and the feedback attendees left.


#### Feedback

The way to give feedback for the Summit conference this year was using an online form, built into the PASS Summit app. Unfortunately, due to spotty Wi-Fi and cell connectivity, the number of people submitting feedback was relatively low. People attended sessions 36,445 times and left 5382 pieces of feedback, for a response rate of 14.8%.

The first question, therefore, is *how much can we trust this data?* How closely does it reflect reality?

This is a question straight from Statistics 101: sample sizes and populations. *If* we assume the people who provided feedback after a session were broadly typical of the audience, then ____.

Here's a quick breakdown. Depending on the size of your audience, here's the margin of error for different amounts of feedback:


(ADD A TABLE REFLECTING THIS)

There's the potential for bias here. It's not uncommon to see that the only people who provided feedback are the ones who loved the session, or hated it. Unfortunately, there's *no way to know* with this data. Session feedback is anonymous, and without PII or demographic data about each piece of feedback, there's just no way to know.


**What's the distribution of feedback for each question?**

The scores for the questions are very high. Most people give presenters high marks. 


(ADD THE TABLEAU VIZ HERE)


##### Rankings

Session speakers are often keenly interested in their their *ranking*. Did they get the #1 most highly-rated spot, or the #3? 

Due to privacy concerns, the PASS organization won't let me release ratings with the session names or sepakers attached. However, I *can* tell you the percentile rankings overall, and for different categories.


**Overall**

| Percentile | Score | 
| :---- | :----: | 
| 95th | 
| 90th | 
| 80th | 
| 70th | 
| 60th | 
| 50th (Median) | 
| 40th | 
| 30th | 
| 20th | 
| 10th | 

MAKE SEVERAL VIZZES.

**By Track**

Let's look at percentile ratings by track. 

**By Level**

Let's look at percentile ratings by level. 


*Let's show scores by percentile. For example, 5% of sessions scored at least a 4.9. Or else show it with all of the personal information stripped out.*


#### Correlations

A few weeks ago I asked folks on Twitter what questions they had about

**Enviroment Score and Speaker Performance**

@BrentO : Is there a correlation between environment score and speaker performance?

It turns out people who give high environment scores also give high speaker performance scores. The correlation is .377, which isn't very strong. There are also many potential reasons for this.

(ADD SCATTERPLOT)

(ADD XKCD ON CORRELATION)

**Enough Material and Session Length**


@DevNambi Also, is there a correlation between the enough-material question and the session length?







#### Attendance and Popularity

**Where Is Everybody**

Let's look at how many people were attending Summit at different times.


(ADD TABLEAU VIZ)

The most popular times are midday (4.5K on Wednesday) and early afternoon (4.9K on Thursday). The mornings are relatively empty. Fridays are quieter as well, with less than 2,500 people in attendance. 


**Cynicism and Timing**

Do certain time slots produce higher scores? 

(ADD TABLEAU VIZ)

There's no real correlation between time slots and scores. There is some variation of scores between times, but there's no pattern I can find to it.


@DevNambi was there a particular was there a time slot that produced higher scores?. My hypothesis is that the later sessions will have a higher deviation of scores. And the people that go really want to be there. Either they are thrilled or disappointed.

**Speak Up, Speak Up**

@DevNambi @Jorriss Oh it would be interesting to see if survey completion rate went up or down, and if it correlated to satisfaction or attendance or time of day.

(ADD TABLEAU VIZ)



@DevNambi Interesting. I would think they go down. That would be an interesting survey question.

*Are attendance, the amount of feedback, and the variablity in the feedback change hour-to-hour, or day-to-day? How much?*

**The Packed-Room Effect**

Does a packed room correlate with higher or lower ratings? No! The correlation is very weak (R2 = 0.014), but more importantly, it's not significant (p-value 0.09)

How about comparing attendance to the 'environment' score in speaker ratings? Here we see _____

@BrentO: Do environment scores tie to attendance count in the room? Do packed rooms score lower in environment scores?


**The Bandwagon Effect**

It turns out popular sessions do get higher scores, but the linkage is very weak. The correlation between attendance and speaker rating scores is low (R2 = 0.031, p-value 0.012).

So, popular speakers are also more highly rated, but not by much. 


**Consistency**

@BrentO: Is past performance an indicator of future success - did repeat performers improve, stay the same, or get worse?

* Show scores over time as a line chart
* Then show it again, with YoY change. How much do speakers change over time?


#### Future Research

Like any data analysis project, this work is not done. There are many places to take this information, including:

* Comparing speaker ratings with the scores given to abstracts to see how well session selection is doing. Let's provide data about the [Speaker 47](LINKME) problem.
* Adding topic and content analysis to look for patterns by session topic
* Investigating data-driven ways for the PASS community to build and identify upcoming speakers (*cough* SQL Saturdays *cough*)
* Investigating how to better gather feedback during sessions. The ~14.7% feedback rate isn't good.
* Use the information about popularity vs. time to better allocate sessions, and to figure what potential changes could be made to the schedule. 

#### Keep Going

There's no reason I should be the only person looking at this data. The [#sqlpass](https://twitter.com/search?q=%23sqlpass&src=typd) [community](https://twitter.com/search?q=%23sqlfamily&src=typd) is large and technically savvy. To that end I've made almost all of the raw data public (LINK TO GITHUB). The only piece missing is the speaker ratings for individual sessions and speakers; that has been anonymized as much as possible at PASS' request.


http://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/

You can also contact me anytime via Twitter ([@DevNambi](https://twitter.com/DevNambi)) or email (me@devnambi.com).