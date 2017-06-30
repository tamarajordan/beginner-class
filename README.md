# beginner-class

This project includes the backend and frontend to duplicate 3 MasterClass course pages.

To use:
1. Clone this repo. (Detailed steps: https://help.github.com/articles/cloning-a-repository/)

2. In your terminal within your local clone's project folder, run "rails db:setup". This will create the database, load the schema, and initialize it with seed data.
(More info: http://edgeguides.rubyonrails.org/active_record_migrations.html#resetting-the-database)

3. To visit a course's page, start a server within your local clone by typing "rails s" within the local project folder. 
Then, go to LocalHost3000/courses/:id within a browser window.
For instance, to visit Christina Aguilera's course (id: 1), visit LocalHost3000/courses/1. To visit Herbie Hancock's upcoming course, visit LocalHost3000/courses/2

All courses have been seeded with the same marketing content as Christina Aguilera's course, for the sake of time.
