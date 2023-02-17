# Week 0 — Billing and Architecture

## Architecture Diagram
This week we discussed the importance of diagrams. Providing a conceptual image of what we wish to build. It doesn't have to be low level in the beginning with ARNs or anything. The more comfortable we are with the stack, the more we can be specific in the diagram. I used LucidCharts to recreate the full diagram and downloaded the [AWS Icons PPT](https://aws.amazon.com/blogs/aws/introducing-aws-simple-icons-for-your-architecture-diagrams/) from the inter-webs. 


[Initial Conceptual Diagram](https://lucid.app/lucidchart/22fa8113-03ed-4df9-a856-59d4be4e532e/edit?viewport_loc=75%2C103%2C2157%2C1055%2C0_0&invitationId=inv_6dc8fcf1-4b6a-447a-8d63-7e7c3dcf8fef)
![image](https://user-images.githubusercontent.com/108297740/219522801-92106897-bfe9-4bd2-8d25-b7e5ad06c36f.png)


[High Level Diagram](https://lucid.app/lucidchart/22fa8113-03ed-4df9-a856-59d4be4e532e/edit?viewport_loc=-410%2C-70%2C3234%2C1582%2C~NcxaCrTv.S6&invitationId=inv_6dc8fcf1-4b6a-447a-8d63-7e7c3dcf8fef)

![image](https://user-images.githubusercontent.com/108297740/219499046-d237a8aa-e2db-4be6-9cae-2d4cbad76d2f.png)





## Gitpod
For the AWS Bootcamp, we have the option to either use GitHub Codespaces or Gitpod. Both come with a Free Tier. I decided to go with Gitpod and I connected it as an OAUTH app to my GitHub account. Gitpod is a Cloud Development Environment. Basically a containerized environment that is cloud hosted. The concept is pretty great! Give developers or users an environment without all of the bloatware to install and run whatever packages they want without impacting their local hosts. I also like the ability to save global variables for the repo that are stored in Gitpod and not somewhere in my repo, this includes AWS Secrets!

## Billing
Regarding Billing in AWS, I watched Chirag Nayyar's [video](https://youtu.be/OVw3RrlP-sI) for Pricing Basics and Free Tier services. He went over the various Free Tier options as well as setting up Billing Alerts. This information was also covered in [Andrew's video] (https://youtu.be/OdUnNuKylHg) for generating credentials for AWS CLI, Creating Billing Alerts via SNS and Budget creations

## AWS CLI
As previously mentioned, while watching Andrew's video on generating credentials for AWSCLI, we were able to review which IAM user we were based on the creds we had saved to our Gitpod environment. After creating the budget through "click-automation" in the console, I deleted it and went through the process of creating the Budget using the JSON files in my aws/json directory of this repo. Afterwards I created the SNS and billing-alarm service to email my account if there were any billing thresholds exceeded.

## IAM
Part of the homework was to get rid of the root credentials for our AWS account and create a new user. I created a new user and had to create a new user group (Admin) and assign the Administrator Full Rights policy to it. I also assigned MFA to both root account and my IAM user to limit my account from being taken over.
