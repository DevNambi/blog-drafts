---
author: DevNambi
date: 2014-12-08
layout: post
slug: pass-feedback
title: Say Anything! PASS Summit Feedback and Ratings
meta-description: 
- pass summit
- sqlpass
- conference analysis
- statistics
- margin of error
---

Technical conferences live and die by their community. A engaged audience and talented speakers will go very, very far. The goal of conference organizers, then, is to identify and develop good speakers and good content, so their audiences thrive. 

This fall, I joined the [PASS Program Team](http://www.sqlpass.org/community/speakerresource.aspx) to help them predict session attendance for [PASS Summit 2014](http://www.sqlpass.org/summit/2014/Home.aspx) . During the conference, I heard anecdotes that rooms were better allocated this year. 

Now I have the conference data on attendance and attendee feedback. How well did we do?


#### Attendance

The true test of a prediction is to compare it to reality. In this case, we have the predictions from before Summit (LINK TO GITHUB), from the [analysis I did back then](http://devnambi.com/2014/pass-attendance/). 

Compared to the 3 previous years, how well did we allocate rooms? In particular, how well did we make sure rooms weren't over-crowded?

Let's count the number of sessions that were over 90% full. 

2011: 32 sessions
2012: 50 sessions
2013: 51 sessions
2014: *18 sessions*

(IMAGE: victory is mine)

That's definitely an improvement. Let's look at relatively crowded (60-89% full) sessions:

2011: 46 sessions
2012: 75 sessions
2013: 70 sessions
2014: 41 sessions

Again we see an improvement. Now let's look at our success criteria: rooms with lots of space (0-59% full):

2011: 158
2012: 178
2013: 181
2014: 180

Here we see that we're doing about as well as we could hope for. The results were *not* ideal; we had 18 sessions that were over-crowded, and we should do better next year. However, this year's PASS Summit had the best room allocation since 2011, if not before. That's hugely important when data professionals (and their employers) are paying good money for them to listen to top speakers.

With that...we could be done. However, a data set with session attendance, timing, and speaker ratings is a golden opportunity for more analysis.

A couple weeks ago, I asked the SQL community on Twitter for questions to research. They responded magnificently; asking insightful questions about trends, correlations, and myths they wanted validated or busted.

Let's go.

(ADD IMAGE: Mythbuster)


#### Ratings and Rankings

The way to give feedback for the Summit conference this year was using an online form, built into the PASS Summit app. However, due to spotty Wi-Fi and cell connectivity, the number of people submitting feedback was relatively low; only around 16% (ME: VET THIS NUMBER).

The first question, therefore, is *how much can we trust this data?* How closely does it reflect reality?

This is a question straight from Statistics 101: sample sizes and populations. *If* we assume the people who provided feedback after a session were broadly typical of the audience, then ____.

Here's a quick breakdown. Depending on the size of your audience, here's the margin of error for different amounts of feedback:


(ADD A TABLE REFLECTING THIS)

Otherwise, there's a potential for bias. The only people who provide feedback are the ones who loved the session, or hated it. Unfortunately, there's *no way to know* with this data. PASS doesn't have PII or demographic data on who provided feedback, so there's just no way to know.


**What's the distribution of feedback for each question?**

Another great question. 

**Marco Russo**

It would be interesting (as a speaker) getting average and standard deviation for each question. 

*We should look at median and IQR as well in case data's not normally distributed*

##### Rankings

Some speakers are obsessed with their *ranking*. Did they get the #1 most highly-rated spot, or the #3? 


**@AdamMachanic:**

@AdamMachanic: Is there an overall session evals version like usual, with rankings?

@AdamMachanic: @SQLHA @amy_lewisAZ that's an issue for next year. Comparative ratings, which we've always had, is an issue for this year.

@GFritchey: @SQLHA @AdamMachanic @amy_lewisAZ Agreed. Plus, I'm horrified at how I did this year.

@AdamMachanic: @amy_lewisAZ that's unfortunate. A lot of us really enjoy seeing how we scored against other sessions.


@AdamMachanic: @amy_lewisAZ what I meant was, are you going to include it in the average when coming up with the overall rankings?



*Let's show scores by percentile. For example, 5% of sessions scored at least a 4.9. Or else show it with all of the personal information stripped out.*


**BrentOzar**

@BrentO : Is there a correlation between environment score and speaker performance?

@DevNambi Also, is there a correlation between the enough-material question and the session length?






#### Attendance and Popularity

**Where Is Everybody**

Let's look at how many people were attending Summit at different times.


(ADD TABLEAU VIZ)

The most popular times are midday (4.5K on Wednesday) and early afternoon (4.9K on Thursday). The mornings are relatively empty. Fridays are quieter as well, with less than 2,500 people in attendance. 


**Cynicism and Timing**

Do certain time slots produce higher scores? 


@DevNambi was there a particular was there a time slot that produced higher scores?. My hypothesis is that the later sessions will have a higher deviation of scores. And the people that go really want to be there. Either they are thrilled or disappointed.

**Speak Up, Speak Up**

@DevNambi @Jorriss Oh it would be interesting to see if survey completion rate went up or down, and if it correlated to satisfaction or attendance or time of day.

@DevNambi Interesting. I would think they go down. That would be an interesting survey question.

*Are attendance, the amount of feedback, and the variablity in the feedback change hour-to-hour, or day-to-day? How much?*

**The Packed-Room Effect**

Does a packed room correlate with higher or lower ratings? No! The correlation is very weak (R2 = 0.014), but more importantly, it's not significant (p-value 0.09)

How about comparing attendance to the 'environment' score in speaker ratings? Here we see _____

@BrentO: Do environment scores tie to attendance count in the room? Do packed rooms score lower in environment scores?


**The Bandwagon Effect**

Do popular sessions get higher scores? Yes, but it's a very minor effect. The correlation between attendance and speaker rating scores is low (R2 = 0.031, p-value 0.012).

So, popular speakers are also better-rated speakers, but not by much. 


#### How to Use This Data

*How will scores be used in the future? What can statistical analysis tell us about how much it should be used?*

@BrentO: Is past performance an indicator of future success - did repeat performers improve, stay the same, or get worse?

#### Future Research

Like any data analysis project, this work is not done. There are many places to take this information, including:

* Comparing speaker ratings with the scores given to abstracts to see how well session selection is doing. Let's provide data about the [Speaker 47](LINKME) problem.
* Adding topic and content analysis to look for patterns by session topic
* Investigating data-driven ways for the PASS community to build and identify upcoming speakers (*cough* SQL Saturdays *cough*)
* Investigating how to better gather feedback during sessions. The ~16% feedback rate isn't very good.

#### Keep Going

There's no reason I should be the only person looking at this data. The [#sqlpass](https://twitter.com/search?q=%23sqlpass&src=typd) [community](https://twitter.com/search?q=%23sqlfamily&src=typd) is large and technically savvy. To that end I've made almost all of the raw data public (LINK TO GITHUB). The only piece missing is the speaker ratings for individual sessions and speakers; that has been anonymized as much as possible at PASS' request.


http://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/

You can also contact me anytime via Twitter ([@DevNambi](https://twitter.com/DevNambi)) or email (me@devnambi.com).