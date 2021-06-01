# postgres-pgadmin-docker
Docker setup to deploy a postgres database and pgAdmin4 as the administration interface

## Prerequisites
Create an .env file in the project directory and add your custom values to build the image and run the stack.

Example:

```bash

# General environment settings for containers

USER=postgres
PROJECT=postgres-pgadmin-docker
REPO="$USER/$PROJECT:latest"
IMAGE="$PROJECT-image"
CONTAINER="$PROJECT-container"
HOST="localhost"
INTERNAL_PORT=80
EXTERNAL_PORT=8080

# Environment settings for stack.yml

# Postgres Password:
POSTGRES_PASSWORD=your-postgres-password

# pgadmin4 Email:
PGADMIN_EMAIL=your-email

# pgadmin4Password:
PGADMIN_PASSWORD=your-pgadmin-password

```

## Build and run the containers

```bash

# Make script executable
chmod +x app.sh

# Diplays arguments
bash ./app.sh

```

## Configuration of postgres and pgadmin
- Open http://localhost:8080 in your browser
- Sign in with your pgadmin email and password as defined in ``.env.``
- Navigate to Servers->Create->Server
- Set user to "postgres" and use the password as defined in ``.env.``
- In the connection tab use ``db`` as "Host name/address" and 5423 as a port.


