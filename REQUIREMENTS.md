# API Requirements
The company stakeholders want to create an online storefront to showcase their great product ideas. Users need to be able to browse an index of all products, see the specifics of a single product, and add products to an order that they can view in a cart page. You have been tasked with building the API that will support this application, and your coworker is building the frontend.

These are the notes from a meeting with the frontend developer that describe what endpoints the API needs to supply, as well as data shapes the frontend and backend have agreed meet the requirements of the application.

## API Endpoints
#### Products
- Get all products: **/products/**
- Get product by ID (args: product id): **/product/:id**
- Get products by category (args: category): **/products/category/:category**
- Delete product by id (args: product id) [token required]: **/product/delete/:id**
- Add product (args: name, category) [token required]: **/product**
#### Users
- Get all users [token required]: **/users**
- Get user by ID (args: user id) [token required]: **/user/:id**
- Create user (args: user name, firs name, last name, password) [token required]: /user
- Authenticate a user (args: user name, password): /user/auth
- 
#### Orders
- Get orders by user id (args: user id) [token required]: **/user/:userID/orders**
- Get completed orders by user id (args: user id)[token required]: **/user/:userID/completed-orders**

## Data Shapes
#### Product
- id
- name
- price
- category
- inventory

#### User
- id
- username
- firstName
- lastName
- password

#### Orders
- id
- user_id
- status of order (active or complete)
- date

#### Order Details
- id
- order id
- product id
- quantity
