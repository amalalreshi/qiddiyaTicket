
Team 9 : Sumaiya Sani , Amal Alreshi , Albatol Ameshali
# Qiddiya Tickets

This application allows customers to reserve tickets for Qiddiya Amusement Park. It provides a user-friendly interface for managing ticket reservations and utilizes a REST API connected to a DataMapper-backed model , which is powered by a PostgreSQL database.



## Technologies

      . Vapor  
      . Fluent  
      . Xcode  
      . Postgres  
      . Postico2  




# REST API

The REST API to the Qiddiya Tickets is described below.

## Get All Users

### Request

`GET /users`

     http://127.0.0.1:8080/users

### Response

  
    {
        "Password": "fgj99",
        "id": "DF3EDC32-70A7-45B3-B7FB-AFF7B4FEEF9F",
        "FirstName": "amal",
        "Phone": 966535679094,
        "LastName": "alreshi",
        "Email": "amal@Icloud.com"
    }


## Create a new user

### Request

`POST /users`

     http://127.0.0.1:8080/users

### Response



    {
    "FirstName": "Abatol",
    "LastName": "Almeshali",
    "Email": "Abatol@Icloud.com",
    "Phone": 966535899094,
    "Password": "Sd57fkl",
    "id": "B41578E4-AD5E-41D7-BF82-8C11683D9C53"
    }

## Get user by Id

### Request

`GET /users/id`

    http://127.0.0.1:8080/users/B41578E4-AD5E-41D7-BF82-8C11683D9C53

### Response
    {
    "id": "B41578E4-AD5E-41D7-BF82-8C11683D9C53",
    "Email": "Abatol@Icloud.com",
    "FirstName": "Abatol",
    "Password": "Sd57fkl",
    "Phone": 966535899094,
    "LastName": "Almeshali"
     }

   

  

## Get a non-existent user

### Request

`GET /users/id`

     http://127.0.0.1:8080/users/999

### Response
    {
    "reason": "Not Found",
    "error": true
    }
    

   

## Update user

### Request

`PUTCH /users/id`

     http://127.0.0.1:8080/users/B41578E4-AD5E-41D7-BF82-8C11683D9C53
### Response

    {
    "Phone": 67990998,
    "id": "B41578E4-AD5E-41D7-BF82-8C11683D9C53",
    "FirstName": "Abatol",
    "Email": "Abatol78@Icloud.com",
    "Password": "S9987fkl",
    "LastName": "Almeshali" 
    }

  

## Delete user

### Request

`DELETE /users/id`

    http://127.0.0.1:8080/users/B41578E4-AD5E-41D7-BF82-8C11683D9C53

### Response

    {
    "id": "B41578E4-AD5E-41D7-BF82-8C11683D9C53",
    "Email": "Abatol78@Icloud.com",
    "LastName": "Almeshali",
    "FirstName": "Abatol",
    "Password": "S9987fkl",
    "Phone": 67990998
    }



## Get All Tickets

### Request

`GET /tickets`

    http://127.0.0.1:8080/tickets

### Response

    {
    "id":1,
    "name":"Foo"
    ,"status":"changed"
    }

## Get Ticket by id

### Request

`GET /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response

    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
## Create  Ticket

### Request

`POST /tickets`

    http://127.0.0.1:8080/tickets

### Response
    {"id":1,
    "name":"Foo",
    "status":"changed"
    }
 

   
## Update  Ticket

### Request

`PUT /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response



    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
## Delete  Ticket

### Request

`DELETE /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response



    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
    
## Get All Transactions

### Request

`GET /transactions`

    http://127.0.0.1:8080/transactions

### Response



    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }

## Get transactions by id

### Request

`GET /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response

   

    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
## Create  Transactions

### Request

`POST /transactions`

    http://127.0.0.1:8080/transactions

### Response



    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
## Update  Transactions

### Request

`PUT /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response



    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
## Delete  Transactions

### Request

`DELETE /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response

   

    {
    "id":1,
    "name":"Foo",
    "status":"changed"
    }
    



### Database Schema:

  
<img width="1039" alt="Screenshot 2567-02-25 at 10 20 37 AM" src="https://github.com/amalalreshi/qiddiyaTicket/assets/147040499/b6d56d4d-9dfb-4cec-ae31-456b6dbd0018">
