# postgres-pgadmin-docker
Setup to deploy the `postgres` database system https://hub.docker.com/_/postgres and as the web-based administration interface `pgAdmin4` https://hub.docker.com/r/dpage/pgadmin4 in a `Docker` environment.

## Prerequisites
`Docker` https://www.docker.com/ and `Docker Compose` https://docs.docker.com/compose/ are up and running.

Create an `.env` file in the project directory and add your custom values to build the image and run the stack.

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
The script `app.sh` facilitates the build and run process.

```bash

# Make script executable
chmod +x app.sh

# Run script to use docker-compose
# Options:  stackup, stackdown, stackstop, stackstart
bash ./app.sh

# or just if it works in your terminal:
./app.sh

# Examples:
# Build and run the containers
./app.sh stackup

```

## Configuration of postgres and pgadmin
- Open http://localhost:8080 in your browser
- Sign in with your pgadmin email and password as defined in `.env`.
- Navigate to Servers->Create->Server
- Set user to `postgres` and use the password as defined in `.env.`
- In the connection tab use `db` as "Host name/address" and `5423` as a port.
- Create a database. See an example script here: `sql/parametric-elements.sql`.


