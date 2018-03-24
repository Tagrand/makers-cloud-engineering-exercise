<h2 align="center"> FT Feedback Site </h2>
<h3 align="center"> Want to say your option on the FT? Here's the place to go </h3> 

 <p align="center">  <a href='#scenario'>Scenario</a> |  <a href='#approach'>Approach</a>   |   <a href='#reflections'>Reflections</a> |  <a href='#architecture'>Architecture</a> |  <a href='#user_stories'>Versions</a>
 <a href='#screen_shots'>Screen Shots</a> |  <a href='#use'>How to use</a>   |   <a href='#tech'>Tech</a>

# Add build status and Coverage

## Scenario  <a name= "scenario"></a>

Build a website hosted in the cloud (e.g. AWS, Google, Heroku) that asks for and stores a simple
rating score for using ft.com

Provide a diagram of your site architecture showing key compnents that illustrate your approach.

*Extra*
 - Templated infrastructure as code
 - Automated testing
 - Origami Compnents/FT look and feel
 - The ability to view the ratings/results

 *Potential tools*
 - AWS (EC2, RDS, Lambda, DynamoDB)
 - Cloudformation
 - Docker
 - Ansible

## Approach <a name= "approach"> </a>

My focus is to break down the task into lots of smaller steps - to this I created versions at the start of the project to act as checkpoints.
My reasonsing for this, was rather than design everything in one go and then go off and code, I had clear points to stop, reflect and adapt my plans.  
Also by focusing on reaching the smaller targets, I keep my programme simpler to start with and if I turn out to do something badly, its easier to turn back and change.

This approach to design is something I am trialing so any feedback would be really helpful. In my commits I've tried to add explanations for the order of my decisions.

I decided to do the task in Ruby, as this website is quite light and I felt that doing it with Sinatra and Datamapper were simple
enough tools for the job. This would give me space to challenge myself in other ways (particularly using AWS for the first time.)
My original plan is to use AWS to deploy the site as a challenge, as there seems to be good support for Ruby and
its totally new to me (but is also heavily used by the FT.) Also I have added a version where I use Origimi, because this looks great.

#### Targets (Written before starting) - no more than 4 points
- Only focus on reaching a checkpoint, don't worry about the extra complexity until you get there.
- Use AWS to deploy the website
- Keep it as simple as possible
- Reflect on my architecture and design frequently (especially at designated checkpoints) to check if there is any way of improving it further.

## Reflection <a name= "reflections"> </a>
V1 reflections
Having reached version one. I've been pleased with keeping the programme simple and leaving it extendable in the future. It would have been good to have focused on making a one page site from the start, as this is the simplest way to meet the brief. However, I definately want to improve on my commit messages. Also I have forgotten to run rubocop at several points. So I have put reminders whenever I run rspec to run rubocop and rspec.

Part of me still thinks I should have gone with a JSON file or another file to store ratings, rather than a full MySQL database. However, I decided to stick with it, since I wanted to show I could integrate a website with a database on a cloud platform. But probably doing this again, I'd try just using a JSON file.

#### With more time I would have:

## Architecture <a name= "architecture"> </a>


## Versions <a name= "user_stories"> </a>

V1: You are asked for a rating on a locally hosted website and it stores the ratings  
  - [x] You can visit a site
  - [x] You can submit a rating or any sort
  - [x] You can store the rating in a database
  - [x] Make it a single page site
  - [x] You can only add ratings of 1 - 5

- [x] Complete

V2: You are asked for a rating on a hosted website  (MVP)
  - [ ] Set up Travis for Github
  - [ ] Deploy up the site on AWS
  
V3: You can see previous (all ratings) on another page, previous ratings

V4: Make it stylish, to look like the FT

## How to use  <a name= "use"> </a>
First make sure you have Ruby 2.4.0+ and MySQL installed 

#### Database setup
Then set up a Dev and Test database in the MySQL bash

```CREATE DATABASE ft_test;```
```CREATE DATABASE ft_development;```

I've called the user ft@localhost, you can either give this permissions to these two databases, or change the 
user in the ratings file. Either way in my MySQL base:
``` 
GRANT ALL PRIVILEGES ON ft_test.* TO 'ft'@'localhost;'
GRANT ALL PRIVILEGES ON ft_development.* TO 'ft'@'localhost;' ```
```
#### Run site

1) Copy the repo ```git clone https://github.com/Tagrand/makers-cloud-engineering-exercise.git``` 
2) Go into the repo ```cd makers-cloud-engineering-exercise```
3) Install gems ```bundle```
4) Run the server ```rackup```
5) Visit [localhost:9292](localhost:9292) to see it all in glory!  

## Screen shots <a name= "screen_shots"> </a>

## Tech <a name= "tech"> </a>
Ruby
Sinatra   
MySQL (I've used SQLite3 and PSQL so I wanted to try this out, also I believe it works well with AWS)
