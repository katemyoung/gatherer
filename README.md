# Gatherer

This is a task manager app for a software development team. 

This app was developed using TDD following the steps in _Rails 5 Test Prescriptions: Build a Healthy Codebase_ by Noel Rappin.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## User stories

```
As a team leader,
So that I can track what my team is working on,
I want to see a list of common tasks for my team.

As a team leader,
So that I can see how each task is progressing,
I want to be able to view the status of a task.

As a team leader,
So that I can see who is doing what,
I want to be able to see which pair of developers a task is assigned to.

As a team leader,
So that I can plan for resource allocation,
I want to be able to see an estimate for a project's conclusion date.

As a team member,
So that I can see what I am working on,
I want to see a list of tasks I am assigned to.

As a team member,
So that I can manage my time,
I want to be able to create a task.

As a team member,
So that I can easily find information about a project,
I want to be able to upload files to a project.

As a team member,
So that I can personalize my account,
I want a profile picture to display next to my name.

As a team leader,
So that I can track how fast my team is working,
I want to see team velocity for the last three weeks.

```


How I built this app:

1. Developed user stories from the specification.


Velocity in this context means how many total project points completed in the last 3 weeks?

Current rate means how many tasks completed per day, for the last 3 weeks. So can be calculated from velocity, by dividing velocity by 21 days.

