# Udagram

[**Live application**](http://uda-gram-buck.s3-website-us-east-1.amazonaws.com/)

Udagram is an application for users to create accounts and post feeds with captions and media provided.

The project is entirely deployed on different AWS services.

The project takes advantage of the CI/CD practice on CircleCI in order to automate the building, testing, and deployment process on every github push.

## Documentation
You can find information about application infrastructure, dependencies, and pipeline with all the high-level diagrams as follows:

* [**Infrastructure**](docs/Infrastructure.md)
* [**App dependencies**](docs/Dependencies.md)
* [**Pipeline Process**](docs/Pipeline.md)

## Using the application

### **Setting up the environment**
You can start the app locally by following the steps below:

* Create .env file inside *udagram-api* with the following environment variables
    * POSTGRES_HOST
    * POSTGRES_DB
    * POSTGRES_USERNAME
    * POSTGRES_PASSWORD
    * DB_PORT
    * PORT
    * AWS_REGION
    * AWS_PROFILE
    * AWS_BUCKET
    * URL
    * JWT_SECRET
* In the **root folder** run the command: `npm run backend:install` in order to install the backend
* In the **root folder** run the command: `npm run frontend:install` in order to install the frontend

You need two different terminals in order to start the backend and frontend server simultaneously.
* In the first terminal run `cd udagram-api` and then run `npm run dev`.
* In the second terminal run `cd udagram-frontend` and then run `npm run start`.

The frontend application will then automaatically open in your default browser.


### **Deplying the application**
You can deploy the application by running the following two commands to first build the application 

* `npm run backend:build`
* `npm run frontend:build`

Then run the following two commands to deploy the built files 
* `npm run backend:deploy`
* `npm run frontend:deploy`

An elastic beanstalk environment needs to be available for deployment so the first deployment is manual. Also an S3 bucket needs to be available.


### **CI/CD**
Everytime there is a git push, the configured CircleCI project will get triggered to run the pipeline process for building and deploying the application.