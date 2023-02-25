# Week 1 — App Containerization

## Docker
This week the bootcamp focused on Docker and containers. This is something that I had little knowledge about and I was really excited to dive into it and boy did I dive deep! We started off by creating Dockerfiles in our Backend-Flask and Frontend-React directories to build out the respective containers. We went through the various command structure within the Dockerfile to get a better understanding of the process. 

I've been using Gitpod Web version of VSCode and I thought it was neat how each file we created, VSCode automatically would install the extensions. After working with the individual Dockerfiles, we created a docker-compose.yml file that included the instructions to build both the frontend-react and the backend-flask containers. We did all of this together on the live stream last weekend and during the week I included the container config to run Amazon DynamoDB local and PostgresSQL.

## Notifications Feature
One of the homework assignments was to create the Notifications feature to the Cruddur app. To accomplish this, we needed to update the OpenAPI documentation to include the Notifications backend. This was to maintain up to date API documentation for interacting with the Cruddur application.

Afterwards we need to create the notifications_activities.py service that the frontend would call on to populate the notifications frontend. We then created the NotificationsFeedPage in the frontend directory. We also needed to add the routes so that flask would pass the requests on to the proper path. Because we had mounted the volumes locally on the containers, any changes we made in the code base we immediately visible in the application. With Gitpod, it was common to forget to unlock the backend container and the home activitie and the notifications wouldn't appear. This is where being patient and learning to retrace your steps to make sure everything is working properly.

## Homework challenges
There were several homework challenges to work on to get more exposure to containerization outside of the Homework checklist. I already had Docker Desktop on my local machine so I cloned the repo to my local machine and opened VSCode. I have little to no experience with VSCode as an IDE so I wanted to replicate what we've been doing in Gitpod. Like a dummy, I tried to run the docker-compose file without editing the frontend and backend URL variables to point to the localhost and not the gitpod variables. Once I updated my varibales I ran the docker-compose file and built out the four containers. I did notice a difference between running it locally as opposed to running in gitpod. Gitpod would boot up a lot faster than my local environment. After a while I was able to get everything functioning the same as within Gitpod. If Docker Desktop is NOT running, the containers will fail to build and deploy.

Once everything was tested succesfully, I pushed the container images to my docker-hub repo @[aeayerdis0351/aws-bootcamp-cruddur-2023](https://hub.docker.com/r/aeayerdis0351/aws-bootcamp-cruddur-2023).
