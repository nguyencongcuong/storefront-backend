# STOREFRONT BACKEND | GUIDES

This note is dedicated to reviewer from Udacity.

## Prerequisites
1. Stable NodeJS v16.x
2. Postgres Server & pgAdmin4 installed: (https://www.postgresql.org/download/)
3. Project repository:  
4. [OPTIONAL] Postman (https://www.postman.com/downloads/)

## Setup & Connect to the Database

- Open Command Prompt
- Switch to postgres terminal: `psql -U postgres postgres`
- Create user and database with the following commands:
  - `CREATE USER shopping_user WITH PASSWORD 'password123';`
  - `CREATE DATABASE shopping;`
  - `\c shopping`
  - `GRANT ALL PRIVILEGES ON DATABASE shopping TO shopping_user;`
- Clone project from GitHub
- From project root folder, install packages: `npm install`
- Start the API: `npm start`. This command will run the database migration and start the server.

## API Port: 3000

## Use Postman to test API
- Import APIs from: `storefront-backend.postman_collection.json`
- Import environment from: `localhost-3000.postman_environment.json`
- These 2 files can be found in project repo with the path: ./postman

Thank you for giving me your evaluation on this project.