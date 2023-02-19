# AttendEase
AttendEase is a web-based attendance management application that allows teachers to log attendance for students associated with the corresponding lectures. With AttendEase, teachers can easily update student information, edit lectures, or delete lectures when they are no longer needed.

# Tech Stack
The application is built using Ruby on Rails, JavaScript, HTML, and CSS.
Database: PostgreSQL

# Features
Teachers can log attendance for students associated with corresponding lectures
CRUD functions available to update student information, edit existing lectures, and delete lectures
Teachers have access to make changes only to their lectures
Students will not be able to log-in
Swimlane
Below is the Swimlane diagram for AttendEase that shows the interaction between teachers and the web application.


```
     +-----------+      +------------------+      +------------------------+
     |           |      | AttendEase Web   |      | Database/Server        |
     |  Teacher  |      | Application      |      |                        |
     |           |      |                  |      |                        |
     +-----------+      +------------------+      +------------------------+
     |               |                                |                    |
     | 1. Logs in and selects corresponding lecture  |                     |
     | --------------------------------------------->|                     |
     |               |  2. Displays corresponding                          |
     |               |     student roster for that lecture                 |
     |               | <---------------------------------------------------|
     | 3. Records attendance for selected students   |                     |
     | --------------------------------------------->|                     |
     |               |  4. Saves attendance information to database        |
     |               | <---------------------------------------------------|
     | 5. Makes changes to their lectures            |                     |
     | --------------------------------------------->|                     |
     |               |  6. Updates lecture information in the database     |
     |               | <---------------------------------------------------|
     | 7. Deletes lectures if no longer needed       |                     |
     | --------------------------------------------->|                     |
     |               |  8. Removes corresponding data from the database    |
     |               | <---------------------------------------------------|
     +---------------+                           +-------------------------+               
```

## Usage

To use AttendEase, simply navigate to the website URL provided by your school or institution. You will be prompted to log in with your teacher account.

Once logged in, you will be able to see a list of your lectures for the current semester. Click on the lecture that you would like to take attendance for.

The attendance page will display a list of all students registered for that lecture. Simply select the checkbox next to each student who is present and click the "Submit" button to save the attendance record. You can also make changes to your lectures by editing or deleting them as needed.

Contributions
If you would like to contribute to AttendEase, please fork the repository and make your changes. Once you have tested your changes locally, submit a pull request and we will review your changes for inclusion in the main codebase.

License
This project is licensed under the MIT License. See the LICENSE file for details.
