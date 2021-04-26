![](https://img.shields.io/badge/Microverse-blueviolet)

# School tracking application API

## Table of Contents

- [About the Project](#about-the-project)
- [Description](#description)
- [Built With](#built-with)
- [Live Demo](#live-demo)
- [Getting Started](#getting-started)
- [Testing](#testing)
- [Authors](#authors)
- [Contributing](#contributing)
- [Show your support](#show-your-support)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## About the Project

This is a web application backend to track the evolution of school students in the curriculum.

It is built with [Ruby on Rails](https://rubyonrails.org/), and has been deployed to [Heroku](https://www.heroku.com/)

[PostgreSQL](https://www.postgresql.org/) is the database employed to store the data.

## Description

There are six different models in the application:
- Classroom: The classrooms of the school
- Student: The students in the classroom
- Presentation Areas: The topics in the curriculum
- Presentation Subareas: The subareas in which the topics are divided
- Presentation: The exercises that belong to each Presentation Subarea
- Event: Each time that a student works in a presentation, an event is recorded with the score (from 0 to 3) obtained.

These are the methods available in each controller:
- Users:
   * create: To sign up a user in the backend( POST /users)
- User:
   * create: To log in a user in the backend (POST /oauth/token)
- Classrooms:
   * index: To retrieve a list with all the classrooms (GET /classrooms)
   * show: To retrieve a list with all the students that belong to one classroom (GET /classrooms/:id)
- Students:
   * index: To retrieve a list with all the students in the school (GET /students)
- Presentation Areas:
   * index: To retrieve a list with all the Presentation areas (GET /presentation_areas)
   * show: To retrieve a list with all the Presentation subareas that belong to one Presentation area (GET /presentation_areas/:id)
- Presentation Subareas:
   * index: To retrieve a list with all the Presentation subareas (GET /presentation_subareas)
   * show: To retrieve a list with all the Presentations that belong to one Presentation subarea (GET /presentation_subareas/:id)
- Events:
   * index: To retrieve a list with all the Events that belong to one classroom (GET /classrooms/:id/scores)
   * show: To retrieve a list with all the Events that belong to one student (GET /students/:id/scores)

## Built With

- [Ruby](https://www.ruby-lang.org/en/)
- [Ruby on Rails](https://rubyonrails.org/)

## Live Demo

[Live Demo Link](https://school-tracker-api.herokuapp.com)

## Getting Started

To get a local copy up and running follow these simple example steps.

1. On the project GitHub page, navigate to the main page of the repository.
2. Under the repository name, locate and click on a green button named `Code`.
3. Copy the project URL as displayed.
4. If you're running the Windows Operating System, open your command prompt. On Linux, Open your terminal.
5. Change the current working directory to the location where you want the cloned directory to be made. Leave as it is if the current location is where you want the project to be.
6. Type git clone, and then paste the URL you copied in Step 3. <br>
   e.g. $ `git clone https://github.com/Zappat0n/school-tracker-api.git`.
7. Press Enter. Your local copy will be created.
8. On your console, move to the place where this folder is cloned.
9. Run `rails db:create` to create the PostgreSQL database.
10. Run `rails db:migrate` to add the tables to the database.
11. Run `rails db:seed` to add sample data to the database.
12. Run `rails console`.
13. Run `Doorkeeper::Application.find(1).uid` to get the id of the application in the backend.
14. Run `Doorkeeper::Application.find(1).secret` to get the secret of the application in the backend.
15. Add the id and the secret to the `.env` file in the Front end.
10. Run `npm start`, then the server is automatically opened.

## Getting Started

To test the project you just need to run `npm run test`.

## Authors

👤 **Angel Barros**

- GitHub: [@Zappat0n](https://github.com/Zappat0n)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/angel-barros/)

## Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues).

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Show your support

Give a ⭐️ if you like this project!

## License

This project is [MIT](./LICENSE) licensed.

## Acknowledgements

- [Ruby on Rails](https://rubyonrails.org/)
