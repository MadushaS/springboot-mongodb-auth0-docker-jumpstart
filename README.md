# Jumpstart Project

## Overview

Jumpstart is a demo project built with Spring Boot, showcasing a RESTful web service, web content serving with Spring MVC, REST services with Spring, data access with JPA, web application security, and more. This project is designed to provide a starting point for Spring Boot applications, incorporating best practices and common patterns.

## Prerequisites

- JDK 21 or later
- Maven 3.9 or later
- Docker (for containerization)

## Environment Variables

To configure the application correctly, you need to set up the following environment variables. Create a `.env` file in the root directory of your project and add the variables listed below. Make sure to replace the placeholder values with your actual data.

```plaintext
PORT=8000

DB_STRING=jdbc:postgresql://<your-database-url>?sslmode=require
DB_NAME=<your-database-name>
DB_USERNAME=<your-database-username>
DB_PASSWORD=<your-database-password>

AUTH0_ISSUER=<your-auth0-issuer-url>
AUTH0_AUDIENCE=<your-auth0-audience>
```

## Building the Project

To build the project, run the following command in the root directory:

```sh
./mvnw clean package -DskipTests
```

This command cleans the target directory, compiles your sources, and packages the compiled code into a JAR file, skipping the tests.

## Running the Application

### Locally

After building the project, you can run the application using:

```sh
java -jar target/jumpstart-0.0.1-SNAPSHOT.jar
```

### Using Docker

To build and run the application using Docker, execute:

```sh
docker-compose up --build
```

This command builds the Docker image as defined in the `Dockerfile` and starts the container as specified in `docker-compose.yml`.

## Configuration

Application configurations can be found and modified in `src/main/resources/application.properties` or `src/main/resources/application.yml`.

## Documentation and Guides

For further reference and to understand how to use specific features of Spring Boot and related technologies, consider the following resources:

- Official Apache Maven documentation
- Spring Boot Maven Plugin Reference Guide
- Spring Web
- Spring Data JPA
- Spring Security

### Guides

- Building a RESTful Web Service
- Serving Web Content with Spring MVC
- Building REST services with Spring
- Accessing Data with JPA
- Securing a Web Application

## Contributing

Contributions are welcome. Please read the `CONTRIBUTING.md` file for guidelines on how to contribute to this project.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.