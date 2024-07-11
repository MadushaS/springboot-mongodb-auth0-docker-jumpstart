# Spring Boot, PostgreSQL, Auth0, and Docker Jumpstart Template

This repository is a comprehensive template designed to help you quickly start a project using Spring Boot, PostgreSQL, Auth0 for authentication, and Docker for easy deployment and container management. It's perfect for building robust, scalable web applications with a focus on security and efficiency.

## Features

- **Spring Boot**: A powerful framework for building Java-based web applications.
- **PostgreSQL**: A robust, SQL-compliant database system.
- **Auth0**: A flexible, easy-to-implement platform for authentication and authorization.
- **Docker**: Simplifies deployment by containerizing your application and its environment.

## Prerequisites

Before you begin, ensure you have the following installed:

- Docker and Docker Compose
- An Auth0 account

## Quick Start

### 1. Clone the Repository

Clone this repository to your local machine to get started:

```sh
git clone https://github.com/madushas/springboot-postgres-auth0-docker-jumpstart.git
cd springboot-postgres-auth0-docker-jumpstart
```

### 2. Set Up Environment Variables

Configure your environment variables in a `.env` file at the root of your project. Replace the placeholders with your specific values:

```plaintext
PORT=8080
DB_NAME=your_database_name
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password
AUTH0_ISSUER=your_auth0_issuer_url
AUTH0_AUDIENCE=your_auth0_audience
```

### 3. Build and Run with Docker Compose

Use Docker Compose to build and run your application and its services:

```sh
docker-compose up --build
```

Your application will be accessible at `http://localhost:8080`.

## Docker Compose Services

The `docker-compose.yml` file defines the following services:

- **Postgres**: The PostgreSQL database service.
- **App**: The Spring Boot application service.

### Postgres Service

- Uses the official `postgres:13` image.
- Stores data in a named volume (`postgres_data`) for persistence.
- Includes a health check to ensure the database is ready before the app starts.

### App Service

- Builds the Spring Boot application from the Dockerfile in the project root.
- Connects to the PostgreSQL service and Auth0 for authentication.
- Exposes port 8080 for web access.
- Includes a health check to ensure the service is running correctly.

## Volumes

- **postgres_data**: Stores PostgreSQL database files to persist data between container restarts.

## Networks

- **backend**: Allows communication between the app and PostgreSQL services.
- **frontend**: Intended for future expansion, e.g., integrating a frontend service.

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
