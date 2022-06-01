# App dependencies
This full-stack app consits of two parts: frontend and backend. Each of them has its own dependencies that are required to be installed with a minimum version in order to run correctly.

The app also, requires a bunch of AWS services (and even multiple instances of those services.)
 

## **Backend dependencies**
**AWS:** udagram requires an elastic beanstalk environment with Node.js and npm installed in order to run. It also requires an S3 bucket for storing the media uploaded by the users.

**Environment Variables**
The backend depends on environment variables that are required in the src/config.ts file and then provided to the whole application.

**NPM** dependencies
* **aws-sdk** to upload media and get their signed URLs
* **bcrypt** to encrypt passwords
* **body-parser** to parse request body to a JSON format that javascript can deal with
* **cors** to allow requests from different origins
* **dotenv** to read a .env file in development mode
* **email-validator** to validate an email
* **Express** framework to run the web app and provide a RESTful API
* **JsonWebToken** to provide the user with a signed token that they can use with any of their requests without the need to login everytime.
* **pg** to connect to a PostgreSQL
* **reflect-metadata** to add Metadata to ECMAScript
* **sequelize** to write SQL queries and execute them easily and securely

Other **development dependencies** include **types definitions** for typescript, **eslint** for code linting, and **typescript**.

## **Frontend dependencies**
**AWS:** udagram requires an S3 bucket to get deployed on as a static website.

**NPM** dependencies
* **angular** frontend framework to design the UI and provide the services to it.
* **ionic** cross-platform framework

Other **development dependencies** include **types definitions** for typescript, **typescript**, **eslint** for linting, and **jasmine** and **karma** for unit testing.