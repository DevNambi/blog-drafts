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


One way to test the accuracy of a prediction is to predict things where we already know the answers. We can see that of the 800-odd sessions being analyzed, we can predict their attendance with a roughly 20% error rate. That means a session with a predicted attendance of 200 would have between 160 to 240 people. 

<img src="http://devnambi.com/images/passprediction-PercentageAttending-Predicted_vs_Actual.png" />

Because we’re trying to predict which sessions are unusually popular, a 20% margin of error is acceptable. Running these algorithms on the 2014 sessions data produced [this output](https://github.com/DevNambi/DataScienceLearning/blob/master/SummitAttendancePrediction/PASS%202014%20Summit%20Predictions%20-%20For%20Publish.csv). One of the key findings: popular speakers draw big audiences *regardless of topic*.


#### Ratings and Rankings


**@mmarie** - "Not sure how to feel about my speaker ratings. Of 43 attendees, only 5 filled out evals. 3 left comments, all positive. Three 5s, two 4s." 

*Are session evaluations statistically relevant? What percentage of responses do we need in order to trust that the numbers reflect what attendees really thought?*

*How well does schedule builder behavior compare with reality? Can we mix this with longer-term predictions to build a better model?*

**Marco Russo**

It would be interesting (as a speaker) getting average and standard deviation for each question. 

*We should look at median and IQR as well in case data's not normally distributed*


**@AdamMachanic:**

@AdamMachanic: Is there an overall session evals version like usual, with rankings?

@AdamMachanic: @SQLHA @amy_lewisAZ that's an issue for next year. Comparative ratings, which we've always had, is an issue for this year.

@GFritchey: @SQLHA @AdamMachanic @amy_lewisAZ Agreed. Plus, I'm horrified at how I did this year.

@AdamMachanic: @amy_lewisAZ that's unfortunate. A lot of us really enjoy seeing how we scored against other sessions.


@AdamMachanic: @amy_lewisAZ what I meant was, are you going to include it in the average when coming up with the overall rankings?

*How will scores be used in the future? What can statistical analysis tell us about how much it should be used?*

*Let's show scores by percentile. For example, 5% of sessions scored at least a 4.9. Or else show it with all of the personal information stripped out.*


**BrentOzar**

@BrentO : Is there a correlation between environment score and speaker performance?

@DevNambi Also, is there a correlation between the enough-material question and the session length?

@BrentO: Is past performance an indicator of future success - did repeat performers improve, stay the same, or get worse?




#### Attendance and Popularity


**Kendal Van Dyke** - @DevNambi I'd like to see total session attendance per time slot per day.


**Joriss**

@DevNambi was there a particular was there a time slot that produced higher scores?. My hypothesis is that the later sessions will have a higher deviation of scores. And the people that go really want to be there. Either they are thrilled or disappointed.

@DevNambi @Jorriss Oh it would be interesting to see if survey completion rate went up or down, and if it correlated to satisfaction or attendance or time of day.

@DevNambi Interesting. I would think they go down. That would be an interesting survey question.

@SQLHA: @BrentO @schubash @DevNambi I still had 100ish people at 8:15 on Friday AM. I expected less (variation) for various reasons. #justsayin

@SQLHA @BrentO @DevNambi I had a speaker shocked by 100s last session Friday, but I think shouldn't have been. People pay $$$, go for reason. In the past, Friday - esp afternoon - has been bail and dump with people flying home.

*Are attendance, the amount of feedback, and the variablity in the feedback change hour-to-hour, or day-to-day? How much?*


**BrentO**

@BrentO: Do environment scores tie to attendance count in the room? Do packed rooms score lower in environment scores?

@BrentO: Is there a correlation between attendance count and speaker rating? Are audiences picking great sessions?

*Ooh, good one. The confound is the bandwagon effect...do people give speakers a higher rating because they're already popular?*

@schubash - @DevNambi @BrentO Great speakers will get good num's on a bad day if enough of audience heard them before. I bet popular topics sway votes.

http://ozar.me/2014/11/pass-summit-2014-feedback/


#### Future Research

I'm not done. Future areas of research include:

* Comparing speaker ratings with the scores given to abstracts to see how well session selection is doing. Let's provide data about the [Speaker 47](LINKME) problem.
* Adding topic and content analysis to look for patterns in topics
* Developing ways for the PASS community to build and identify upcoming speakers
* Investigating how to better gather feedback during sessions. The ~16% feedback rate isn't very good.

#### Keep Going

There's no reason I should be the only person looking at this data. The #sqlpass (LINKME) community (LINK to #sqlfamily) is large and technically savvy. To that end I've made almost all of the raw data public (LINK TO GITHUB). 


http://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/

You can also contact me anytime via Twitter ([@DevNambi](https://twitter.com/DevNambi)) or email (me@devnambi.com).