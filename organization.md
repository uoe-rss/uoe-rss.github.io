---
layout: post
image:
  feature: appleton-tower-aerial.png
comments: false
title: Organization and Marking
---

## Practical Times

- Mondays: 15:00 - 17:00 [Appleton Tower, 3.01/3.02 Robotics lab] - First practical is on 24-Sep-2018
- Thursdays: 15:00 - 17:00 [Appleton Tower 3.01/3.02 Robotics lab] - First practical is on 27-Sep-2018

The time allocated for practicals will be used to assess the milestone 
(subtask) completion, for discussion and resolving issues.
The work on the robots is intended to be done mainly outside the practical times. 
Please respect other classes that might be having practicals in the lab.

## How will the practicals be done?

- Decide whether you want to attend the Monday or the Thursday session (by 18/09/2018 - Monday of week 1).
- Form a team of 3 students, collect the kit, and learn how the kit works/connects. (Kit handout - week 1).
- Build a robot and start programming it. Ask the demonstrators if you require help with mechanics, electronics, or programming.
- Work on minor milestones in your own time and discuss them during the lab sessions (week 2 - week 5).
- Demonstrate your work on major milestone 1 during the lab session (week 6).
- Work on minor milestones in your own time and discuss them during the lab sessions (week 6 - week 8).
- Demonstrate your work on major milestone 2 during the lab session (week 9).
- Submit the final report.
- Dismantle the robot and return the kit.

## Marking Scheme

The marking scheme for the course is:
- Exam - 50%
- Homework - 10%
- Practical - 40%

[Late Coursework & Extension Requests](http://web.inf.ed.ac.uk/infweb/student-services/ito/admin/coursework-projects/late-coursework-extension-requests)  
[Academic Misconduct](http://web.inf.ed.ac.uk/infweb/admin/policies/academic-misconduct)  

The practical will be marked based on two major milestones and the final report.
Each major milestone will be marked on the day based on quality of the demonstrated material. 
Each group will demonstrate their solution to the problems marked in the corresponding milestone. 
Completion of some tasks requires the completion of previous tasks, e.g. to demonstrate collision avoidance, navigation is required. 
You are free to demonstrate multiple tasks at the same time and you will be marked for all demonstrated tasks. 
This is the preferred way. Each group will also explain the implemented techniques verbally.

Together with the major milestones (1 and 2), each **group** will submit a short report describing their 
implementation using bullet points (one report per group highlighting the techniques used).

Minor milestones are not marked.

The largest chunk of the marks will be given based on the **individual** final report that will be handed 
in by the date shown in the schedule to the Informatics Teaching Organisation (ITO) (and using the DICE submit system).

### The Practical Marking Scheme

- Major milestone 1 - 8%
    - POI detection
        - 1% - Navigation (speed and direction control).
        - 1% - Collision avoidance (around obstacles of different sizes and narrow corridors).
        - 2% - Robustness: manually place the robot heading towards a POI and check if it stops on the POI (3 times in a row).
    - Data transfer
        - 3% - From a known position above the POI, align the antenna to point towards the satellite.
    - Short report
        - 1% - Short report and verbal description of the work (this is a group report).
- Major milestone 2 - 16%
    - The starting position and orientation of the robot will be given.
    - 1% - Integration of milestone tasks.
    - 2% - Localization and robustness.
    - 2% - Find one POI and stop over it. The geometric center of the robot must be over the POI surface.
    - 3% - Realign the antenna so that it points towards the satellite (at the first POI found). Stop for 30 seconds.
    - 3% - Navigate to a second POI (1%) and realign the antenna (2%). Stop for 30 seconds.
    - 3% - Navigate to a third POI (1%) and realign the antenna (2%). Stop for 30 seconds.
    - 1% - Return to the starting area (black rectangle) and stop over it for 10 seconds.
    - 1% - Short report and verbal description of the work (this is a group report).
- Final report - 16%
    - Evaluation - 10% (Individual analysis of the performance and choices made throughout the design process).
    - Writing - 6% (this includes, quality of the description of the methods used, clarity and completeness, justification of methods used).
    - The report will be submitted INDIVIDUALLY by each student (NO group submissions).

General notes:
- After aligning the antenna, the robot must stop for 30 seconds to give enough time to measure its accuracy. This time will not be taken into account in the 5 minutes limit.
- Visiting the same POI twice (or more) will not count as visiting two POI. We will only count points for distinct, previously not visited POIs.
- Your robot will have 5 minutes from the moment it starts the mission. You will only earn points from the tasks completed during these 5 minutes.
 
All marks are percentage of the total mark for the whole course.

### Milestones

There are types of milestones: major and minor:
- *The minor milestones* will help you to stay on track with the work on a weekly basis but they are **not** marked. 
If you fall behind on the minor milestones, you may catch up the next week without any penalty. 
We do strongly recommend to keep up to speed with the minor milestones and we encourage you to discuss them with the demonstrators during the lab sessions regularly.
- *The major milestones* will be used to evaluate your progress and they are marked. 
If you fall behind on the major milestones, you will loose marks. 
You will have to demonstrate your work during the practical time slot. 
Late submissions are not allowed!
Subsequent tasks must include subtasks you have completed in the previous weeks. 
For example, a robot able to point its antenna to the satellite should still be able to avoid obstacles.

### Milestones Breakdown

- Week 3 - Minor - Autonomous operation, image capture and down-sampling
    - Suitable mechanical design.
    - Point-to-point motion execution.
    - Autonomous operation (no connection to the network).
- Week 4 - Minor - Collision free navigation and IK
    - Obstacle avoidance. Recovery when obstacle avoidance fails. Avoid getting stuck.
    - Implement homing behavior to move robot from anywhere in the arena to the deployment location.
      From a random position, explore the arena until the robot detects and stops above the homing location (black).
    - Given a known location, align the antenna to point towards the satellite.
- Week 5 - Minor - Preparation for major milestone 
    - Prepare for major milestone 1 (see week 6 for details)
- Week 6 - **MAJOR MILESTONE 1**
    - POI detection.
    - Navigate the robot around a zone with a POI.
    - Avoid obstacles and getting stuck.
    - Stop above the POI and indicate that a POI has been found.
    - Data transfer. From a known position above the POI, align the antenna to point towards the satellite. The position of the POI will be revealed at the beginning of the assessment.

The assessment of this milestone comprises four subtasks. 
It is not mandatory to carry them out sequentially and uninterruptibly, i.e. you are allowed to pick up 
the robot after you are done with the first subtask, start a different program, and then demonstrate the remaining subtask.

- Week 7 - Minor - Sensing for localisation
    - Compute and/or estimate odometry.
    - Build a map of the arena offline.
    - Build a range sensor using IR sensors and/or a camera.
- Week 8 - Minor - Integrate localisation, navigation, and antenna alignment
    - Use the sensing input and the map of the arena to perform localisation.
    - Use localisation to explore different zones of the arena and to help guide the search for POIs.
    - Use localisation output for alignment of the antenna as the robot finds distinct POIs.
- Week 9 - **MAJOR MILESTONE 2**
    - POI inspection.
    - Navigate the arena with the robot starting from the deployment base (known position and orientation).
    - Data transfer (localisation).
    - Transfer data by aligning the antenna towards the satellite.
    - Integration. Complete navigation, at least one POI detection, and at least one antenna alignment.
- Week 10 - **Final report** and kit collection

Submit a printed copy of the final report to ITO and an electronic copy via the "submit" command on DICE:  
```submit rss cw2 <file1>```  
Dismantle the robot, return the kit, locker keys and collect the deposit.

## Advice on Writing the Final Report

The final report will be written individually and it will contain complete description of the robot developed during the course. 
The milestone reports will be reused and expanded upon in the final report. 
This is where the overlap between work done by individual team members will be present and permitted. 
The rest of the report will be completely individual, e.g. introduction, problem description,evaluation, conclusion.

Note that most of the marks for the practicals come from the write-up of the final report. 
It may help to think of this as a (short) equivalent of how robot projects are reported in scientific papers, for example. 
Here's an outline of what your report should contain:

*Title:* A 4-12 word title that would allow an unfamiliar reader to know what your report is about.

*Abstract:* You MUST preface the report with a 100-200 word summary of what it contains. 
This is usually easier to write when you have finished the report. 
It should briefly explain the task, the approach used, the results and the conclusions drawn. 
Avoid making entirely generic statements that could apply to almost anything, e.g., (BAD) "This report describes the construction of a robot to perform a task. 
We describe the design decisions and outline the control program, then explain the results and possible improvements". 
Instead make it specific to what you have done, e.g., (GOOD) "We have built a robot capable of searching for and recognising special locations in a lab environment. 
It uses two IR sensors to avoid obstacles, and a low cost camera to recognise resources and target locations, as well as a sonar sensor for navigation. 
We implement a subsumption control architecture. 
The robot was tested in five time trials and was able to locate an average of 4 resources and 3 target locations within that time. 
The main limitation was that our robot was unable to reliably plan its route to the next location but relied on random search".

*Introduction:* This should explain the task, and give an overview of how you approached it. 
In a normal scientific report this would include reference to previous work (your own or others). 
You are not required in this case to refer to other work (although you may wish to do so if for example something 
you read about influenced your approach to the task). 
So this section is likely to be quite short (400 words).

*Methods:* A good rule of thumb here is that someone reading your report should be able to replicate your approach. 
So you need to provide a good description of the physical architecture, particularly the type, number and position of sensors and actuators. 
Include labelled photographs or diagrams, and make sure the dimensions are clear. 
Comment on factors that led to the design, explaining the decisions you made. 
For the control program you should provide a flow diagram or pseudo-code description, and again explain the reasoning that led to this solution. 
This is likely to be the longest section of the report. 
Do not include code except for short snippets that help explain a crucial part of the program you created. 
Avoid repetition and refer to other peoples' work instead of describing well known algorithms. (1400 words)

*Results:* This should contain some quantitative evaluation of the robot performance. 
For example: that it can find a resource site from a disance of x metres, and recognise and leave within t seconds; etc. 
If your robot is not capable of doing the final task, you should evaluate what it does do correctly, and try to analyse what it does wrong. 
The reader should be left with an accurate understanding of exactly what your robot is capable of, even if this is not as good as you hoped. 
Bad results are results too. You get marked based on how you approached the problem and how you evaluated the results. (800 words)

*Discussion:* Start by summarising the results, and giving your evaluation of how well it works. 
Explain what you think were the most successful elements of your approach, and what was less successful. 
Include ideas about how the system could be improved. (200 words)

Length: The final report should be no more than 3000 words long. 
It can be shorter if you think that you can do a satisfactory description in fewer words.

