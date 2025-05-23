# spring_best_practices_api_rest_java17

This project has the objetive of join best practices of CRUD of API REST
in spring with connection mysql, redis

Practices used in the project

General
1. Implementation of logs
2. Hide credentials of application.properties
3. Use cache in project (redis)

DTO Implementation
1. Use Lombok to Reduce Boilerplate Code
2. Apply Bean Validation Annotations
3. Implement Serializable
4. Follow Naming Conventions
5. Include Audit Fields createdAt, updatedAt, deletedAt
6. Use of Builder (DESSING PATTERN)

Controller Implementation

1. Use Consistent API Versioning (/v1.0/countries)
2. Follow RESTful Naming Conventions (/countries)
3. Use Proper HTTP Status Codes
4. Implement Pagination & Filtering
6. Enable CORS Properly
7. Validate Inputs with @Valid

Exception handler
1. Global exception handler
2. Custom exceptions

Service Implementation
1. Separation of bussiness logic
2. Transaction Management
3. Error Handling
4. Interface driven development

Converter Implementation
1. Uses converter pattern (CountryConverter) for clean separation
2. Encript to hide autoincremet ids
3. Use enviroment variables

Entity Implementation
1. Lombok Optimization
2. Soft Delete Pattern
3. Use pattern Builder (DESSING PATTERN)
4. JPA

Repository Implementation
1. Repository Interface Design
2. Query derivation from method names findByIdAndDeletedAtIsNull
3. Soft Delete Support
4. JPA and SPECIFICACION to obtain data of databse

## Technologies used
- Java 17
- spring 3.4.4
- redis 7.4
- mysql 5.7
## What does this project do?
- You can request information of countries and people of a database
- Help to develop another API REST with this best practices recopilation and faster
- A guide to orient best practices of CRUD in spring
## How to run this project
### Prerequisites
1. Java 17 installed
2. Maven installed
3. Docker installed
4. Make sure that you dont have ports 3306, 8082, 5540, 6379 taken
### Steps
1. Clone this repository
2. Go to infraestructure folder and execute docker-compose up
3. You should change default values of docker-compose and application properties or can use default values. In root path create a file env.properties with this values 
DB_DATABASE=sakila
DB_USER=root
DB_PASSWORD=tienda-videos
DB_IP=localhost
DB_PORT=3306
CRIPTO_KEY=key-64-bits
REDIS_PASSWORD=redis-password
REDIS_HOST=redis-host
REDIS_PORT=6379
Change your custom values and make sure that is the same in docker compose.

3. Go to the root path and excute mvn spring-boot:run
