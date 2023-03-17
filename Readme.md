## Project: Online Bookstore
I want to create project to see how much I could get done using chatgpt.
I want to see how much time it can save me 
    - Chatgpt 
         - create the outine the specification and most of Readme file
         - Create the SQL scripts 
         - Created the python scripts


Push an existing Git repository
cd [existing_git_repo on your computer]
git remote add origin git@github.com/jroneil/Bookproject.git
git push -u origin master


# Bookstore Web Application

This is a web application for a bookstore built with Spring Boot, React, PostgreSQL, and Docker.

   -  Users can create accounts and log in to the website
   -  Users can search for books by title, author, and genre
   -  Users can add books to their cart and checkout to purchase the books
   -  Admins can add, edit, and delete books from the inventory
   -  Admins can view orders and mark them as fulfilled

## Specifications:
   -  Backend: Spring Boot with Java 11, using Spring MVC, Spring Data JPA, and Spring Security
   -  Frontend: React with TypeScript, using React Router and Axios for HTTP requests
   -  Database: Postgres with Hibernate for object-relational mapping
   -  Containerization: Docker for local development and deployment
   -  Orchestration: Kubernetes for deployment to a cluster
   -  CI/CD: Continuous integration and continuous deployment using a tool like Jenkins or GitLab CI/CD

## Getting Started

To run this application, you will need to have Docker installed on your system. 

1. Clone the repository to your local machine.
2. In the project root directory, run the following command to build the Docker images:
docker-compose build
3. Run the following command to start the Docker containers:
docker-compose up
4. Once the containers are up and running, you can access the web application in your web browser at `http://localhost:3000`.

## Project Structure

The project is divided into the following directories:

- `backend`: Contains the Spring Boot backend code.
- `frontend`: Contains the React frontend code.
- `db`: Contains the PostgreSQL database configuration.

## Backend

The backend is built with Spring Boot and provides RESTful APIs for the frontend to consume. The backend code is located in the `backend` directory. The project uses Maven for building and dependency management.

### Running the Backend

To run the backend locally, you can use the following command:

cd backend
mvn spring-boot:run


## Frontend

The frontend is built with React and communicates with the backend via RESTful APIs. The frontend code is located in the `frontend` directory. The project uses npm for package management.

### Running the Frontend

To run the frontend locally, you can use the following command:

cd frontend
npm start


## Database

The application uses a PostgreSQL database to store book and user data. The database configuration is located in the `db` directory. The `docker-compose.yml` file contains the configuration for the PostgreSQL container.

## Authors

- John Doe - [johndoe@example.com](mailto:johndoe@example.com)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
