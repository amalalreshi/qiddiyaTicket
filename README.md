

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

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 2

    []

## Create a new user

### Request

`POST /users`

     http://127.0.0.1:8080/users

### Response

    HTTP/1.1 201 Created
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 201 Created
    Connection: close
    Content-Type: application/json
    Location: /thing/1
    Content-Length: 36

    {"id":1,"name":"Foo","status":"new"}

## Get user by Id

### Request

`GET /users/id`

    http://127.0.0.1:8080/users/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 36

    {"id":1,"name":"Foo","status":"new"}

## Get a non-existent user

### Request

`GET /users/id`

     http://127.0.0.1:8080/users/999

### Response

    HTTP/1.1 404 Not Found
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 404 Not Found
    Connection: close
    Content-Type: application/json
    Content-Length: 35

    {"status":404,"reason":"Not found"}

## Update user

### Request

`PUTCH /users/id`

     http://127.0.0.1:8080/users/1
### Response

    HTTP/1.1 201 Created
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 201 Created
    Connection: close
    Content-Type: application/json
    Location: /thing/2
    Content-Length: 35

    {"id":2,"name":"Bar","status":null}

## Delete user

### Request

`DELETE /users/id`

    http://127.0.0.1:8080/users/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 74

    [{"id":1,"name":"Foo","status":"new"},{"id":2,"name":"Bar","status":null}]

## Get All Tickets

### Request

`GET /tickets`

    http://127.0.0.1:8080/tickets

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}

## Get Ticket by id

### Request

`GET /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## Create  Ticket

### Request

`POST /tickets`

    http://127.0.0.1:8080/tickets

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## UPDATE  Ticket

### Request

`PUT /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## Delete  Ticket

### Request

`DELETE /tickets/id`

    http://127.0.0.1:8080/tickets/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
    
## Get All Transactions

### Request

`GET /transactions`

    http://127.0.0.1:8080/transactions

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}

## Get transactions by id

### Request

`GET /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## Create  Transactions

### Request

`POST /transactions`

    http://127.0.0.1:8080/transactions

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## UPDATE  Transactions

### Request

`PUT /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
## Delete  Transactions

### Request

`DELETE /transactions/id`

    http://127.0.0.1:8080/transactions/1

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:31 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json
    Content-Length: 40

    {"id":1,"name":"Foo","status":"changed"}
    



### Database Schema:

  
<img width="1039" alt="Screenshot 2567-02-25 at 10 20 37 AM" src="https://github.com/amalalreshi/qiddiyaTicket/assets/147040499/b6d56d4d-9dfb-4cec-ae31-456b6dbd0018">
