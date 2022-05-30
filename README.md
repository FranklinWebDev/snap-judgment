# README

**Introduction**
The website will work as follows. The user gets onto the home page and logs in. The authentication from that login is all stored on the API. If the user exists, it will load the quiz and start it. If the user does not exist, the sign-up page will be shown instead. Once the user signs in, the quiz page will start from there. With the quiz, the user will start answering questions. If the user gets the question right, a modal will display saying that the answer is correct and why it is correct. If the user gets the question wrong, however, a modal will display why the answer given is wrong by giving a hint to which answer is right. Once the user completes all the questions, they will get a results page that will show them their quiz results. In the background, it will save those results to the users database along with the other attempts that they have done in order for the administrator to see them.

**QA**
These functions include a user’s page, a questions page, and a courses page.
The user’s page allows the admin to look over all of the users filtered by course to see their email, password, and if they are an admin to this application. The admin will be allowed to edit and delete users from this page. As a default, the users are filtered by course name in order to see them. The course will default to the first course in the database, but once an admin adds new users to a specific class, once the page redirects back to the user show page, it will default to the course that has the users being added to. To add more users, click on the “add new users” link and it will direct you to a page with a form on it. You can either add users manually one by one or add them by uploading a CSV file in which multiple users will be added at once for that specific class.
The questions page allows the admin to look over all of the questions that they have added for the quiz so far, sorted by the date that the question was added. For right now there are ten questions in the database, but there is an easy way to add more down the line. There is now way to upload a CSV file for the questions because there was no way that we found in order to add multiple questions at a time, plus adding images for those specific questions. There was no way to tell the database that certain photos go with certain questions, so we opted on going the manual route to make it easier for the admins to understand. Admins can click on the questions themselves in order to view its question, answer, the four options, the image, the hint if the user gets it wrong, and the correct answer sentence on why that answer is correct. Admins can also edit and delete questions from the question index page.
The last feature for the admin side of the application, is to view the courses for it. When an admin has a new class join, they can add that course to the database in order to have users be added and organized. The default courses for the start of the application are Fall 2022, Summer 2022, and Spring 2023. Admins can easily create, edit, and delete these courses whenever in the course index page. In order to add new ones, the admin will click on the “add new course” link. This will direct you to that page where you type in the course name and click create. The course will be created in the database and will be visible on the users create page, and on the user’s index page. The admin can also delete these courses if they are not in use anymore or if the admin does not want to see them. If there are users in the course still, an error message will pop up saying that there are users still in that course. The admin will have to delete all the users in order to delete the course, as a failsafe.

**Users**
When you open the application, you should be directed to the user’s page. Here you will see all the users but filtered through each course. You can click the dropdown box that will show all of the courses in the database. If you have any feedback on this and how it works, please let me know so we can test it. Try adding a few random students by clicking “add new users” above the course’s dropdown menu. You can either upload a CSV file or add them manually. There should be a CSV file that I sent to you that you can use to test. Click browse and find the CSV file that I sent you, pick a class that you want those people to be added to, and then click the “add user(s)” button. This will redirect you to the class you chose to add those user’s to and show them on the page. Go ahead and try editing one and deleting the other. If you have any feedback on this and how it works, please let me know so we can test it.
Courses
Go ahead and click the courses link on the top left of the page. You will be directed to the Courses Index page. You can add a new course by clicking on the “add new course” link. You will then see that you can type in a course name and then click the create course button. Once you do so, you will be redirected back to the courses index page with the new class shown on the bottom. Lastly, go ahead and try editing and deleting a course of your choosing. Does this work properly and how you think it should work? If you have any feedback on this and how it works, please let me know so we can test it. Once you are done with that, click on the Users link on the top left of the page and click the courses dropdown menu. Does the dropdown menu show the changes you made to the courses? Does it show the new course you made? If you have any feedback on this and how it works, please let me know so we can test it.

**Questions**
Go ahead and click on the Questions link at the top left of the page. You will then be directed to the Questions index page. What you are seeing are the questions for the quiz to run off of. If you click on edit for one of the questions, you will be directed to the edit page for the question corresponding to it. Here you will have a way to edit the question, the description, the hint, where the API gets the image, the options, and the answer out of those options. Go ahead and add a new question by hitting the “add new questions” link. You will then be directed to the New Questions page. Just like the users, you can either upload a CSV file containing those questions or add them manually. Go ahead and upload the questions CSV files that I sent you for testing. Just like the users, click the “Add Question(s)” button. You will then be redirected back to the questions index page with the new questions you added. Lastly, go ahead and try editing and deleting a question. Does this work properly and how you think it should work? If you have any feedback on this and how it works, please let me know so we can test it.
		

**Things you may want to cover:**

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
