# TodayLearnings-AlexaSkill
 
 [Today Learnings](https://www.amazon.com/dp/B07D93S6DF/ref=sr_1_1?s=digital-skills&ie=UTF8&qid=1527241646&sr=1-1&keywords=today+learning) is an Alexa skill that gives you interesting and specific facts from [TodayILearned Subreddit](https://www.reddit.com/r/todayilearned/) in Reddit website.

## Requirements
- Ruby.
- Online hosting service (AWS, Heroku, Google Cloud or any other hosting server).


## Getting Started
First, you'll need to fork and clone this repo

Open Terminal. Change the current working directory to the location where you want the cloned directory to be created.

```
git clone https://github.com/Balaji-Ramasubramanian/TodayLearnings-AlexaSkill.git
```
Let's get all our dependencies setup:
```
 bundle install 
```
## Configuration
You need to create the **.env** file with constants REDDIT_USERNAME and REDDIT_PASSWORD and set them with your corresponding credentials. 

## Deploying your app:
To Deploying Alexa skill you require an online hosting server.
#### Deploying with Heroku:
You need to have Heroku CLI installed to deploy the Alexa skill in Heroku. To find more details about Heroku CLI, [click here](https://devcenter.heroku.com/articles/heroku-cli).

You can follow [this link](https://devcenter.heroku.com/articles/git) to setup the Heroku environment for the project.
#### Deploying with AWS Lambda:
AWS Lambda currently doesn't support Ruby projects. So, First we need to wrap this code with Node.js. To do this follow the instructions provide in [this link](https://aws.amazon.com/blogs/compute/scripting-languages-for-aws-lambda-running-php-ruby-and-go/).

## Contribute
#### Simple 3 step to contribute to this repo:
1. Fork the project.
2. Make required changes and commit.
3. Generate a pull request. Mention all the required description regarding the changes you have made.

## Author 
#### Balaji Ramasubramanian

