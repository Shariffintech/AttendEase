# AttendEase
AttendEase is a web-based attendance management application that allows teachers to log attendance for students associated with the corresponding lectures. With AttendEase, teachers can easily update student information, edit lectures, or delete lectures when they are no longer needed.

# Tech Stack
The application is built using Ruby on Rails, JavaScript, HTML, and CSS.

Features
Teachers can log attendance for students associated with corresponding lectures
CRUD functions available to update student information, edit existing lectures, and delete lectures
Teachers have access to make changes only to their lectures
Students will not be able to log-in
Swimlane
Below is the Swimlane diagram for AttendEase that shows the interaction between teachers and the web application.
```
+-----------+ +------------------+ +------------------------+
| | | | | |
| Teacher | | AttendEase Web | | Database/Server |
| | | Application | | |
+-----------+ +------------------+ +------------------------+
| | |
|1. Logs in and selects | |
| corresponding lecture | |
| ------------------------->| |
| |2. Displays corresponding |
| | student roster for that lecture |
| |<----------------------------------|
|3. Records attendance for | |
| selected students | |
| ------------------------->| |
| |4. Saves attendance information |
| | to database |
| |<----------------------------------|
|5. Makes changes to their | |
| lectures | |
| ------------------------->| |
| |6. Updates lecture information |
| | in the database |
| |<----------------------------------|
|7. Deletes lectures if no | |
| longer needed | |
| ------------------------->| |
| |8. Removes corresponding data |
| | from the database |
| |<----------------------------------|
```

Setup
To run AttendEase on your local machine, follow the steps below:

Clone this repository to your local machine.

Navigate to the project directory and run the following command to install dependencies:

Copy code
bundle install
Migrate the database by running:

Copy code
rails db:migrate
Start the Rails server:

Copy code
rails server
Open your browser and navigate to http://localhost:3000/ to access the AttendEase web application.

License
This project is licensed under the MIT License. See the LICENSE file for details.
