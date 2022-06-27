# STOREFRONT BACKEND | GUIDES
This note is dedicated to reviewer from Udacity.

## Prerequisites
1. Stable NodeJS v16.x
2. Postgres Server & pgAdmin4 installed (https://www.postgresql.org/download)
3. Project repository (https://github.com/nguyencongcuong/storefront-backend.git)
4. [OPTIONAL] Postman (https://www.postman.com/downloads/)

## Setup & Connect to the Database
- Open Command Prompt
- Switch to postgres terminal: `psql -U postgres postgres`
- Create user and database with the following commands:
  - `CREATE USER shopping_user WITH PASSWORD 'password123';`
  - `CREATE DATABASE shopping;`
  - `CREATE DATABASE shopping_test;`
  - `\c shopping`
  - `GRANT ALL PRIVILEGES ON DATABASE shopping TO shopping_user;`
  - `\c shopping_test`
  - `GRANT ALL PRIVILEGES ON DATABASE shopping_test TO shopping_user;`
- Clone project from GitHub
- From project root folder, install packages: `npm install`
- Start API: `npm start`. This command will run the database migration on 'shopping' database and start the server.
- Test API: `npm run test`. This command will run the database migration on 'shopping_test' database.

## Ports: 
- Server (localhost): 3000
- Database: 5432

## Use Postman to test API
Postman's API collections & environments can be found at: `./postman` 
- Collections: `storefront-backend.postman_collection.json`
- Environments: `localhost-3000.postman_environment.json`

Thank you for giving me your evaluation on this project.
