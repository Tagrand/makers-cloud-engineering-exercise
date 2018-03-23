<h2 align="center"> Title </h2>

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

So my focus was to break down the task into clear smaller steps. So I broke the project down into versions (or checkpoints).
My reasonsing for this, was rather than design everything in one go and then go off and code, I had clear points to stop, reflect and adapt my plans.  
Also by focusing on reaching the smaller targets, I keep my programme simpler to start with and if I turn out to do something badly, its easier to turn back and  correct.

This approach to design is something I am trialing so any feedback would be really helpful.

I decided to do the task in Ruby, as this website is quite light and I felt that doing it with Sinatra and Datamapper were small
enough tools for the job. Also Capybara and Rspec are excellent for testing this site.
My original plan is to use AWS to deploy the site as a challenge, as there seems to be good support for Ruby and
its totally new to me (but is also heavily used by the FT.)

#### Targets (Written before starting) - no more than 4 points
- Only focus on reaching a checkpoint, don't worry about the extra complexity until you get there.
- Use AWS to deploy the website
- Keep it as simple as possible
- Reflect on my architecture and design frequently (especially at designated checkpoints) to check if there is any way of improving it further.

## Extentions <a name= "reflections"> </a>

#### With more time I would have:

## Architecture <a name= "architecture"> </a>


## Versions <a name= "user_stories"> </a>

V1: You are asked for a rating on a locally hosted website and it stores the ratings
  - [x] You can visit a site
  - [x] You can submit a rating or any sort
  - [x] You can store the rating in a database
  - You can only add ratings of 1 - 5

V2: You are asked for a rating on a hosted website  (MVP)

V3: You can see previous (all ratings) on another page, previous ratings

V4: Make it stylish, to look like the FT

## How to use  <a name= "use"> </a>

## Screen shots <a name= "screen_shots"> </a>

## Tech <a name= "tech"> </a>
