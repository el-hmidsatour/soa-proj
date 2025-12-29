🚗 Car Management System
📝 What is this?
This is a simple web application for managing a car inventory. I built this to demonstrate a full CRUD (Create, Read, Update, Delete) workflow using Java. It allows you to add new cars, view the full list, edit details, or remove them from the database.
🛠 Tech Stack
Language: Java 8
Database: MySQL
ORM: Hibernate (to handle database operations)
Web: Servlets & JSP (JavaServer Pages)
Design: Bootstrap 5 (for a clean, modern look)
Build Tool: Maven
🚀 How to Run It

Database Setup
Make sure you have MySQL installed.
Create a database named mydb:
code
SQL
CREATE DATABASE mydb;
Open src/main/resources/META-INF/persistence.xml and update your MySQL username and password.

Launching the App
Import the project into your IDE (Eclipse or IntelliJ) as a Maven project.
Right-click the project and select Run As > Run on Server.
Choose Apache Tomcat (v8.5 or v9.0).
Once the server starts, go to: http://localhost:6767/prj/
🎥 Demo Video
Check out how the app works here:
👉
💡 Good to Know
The database tables are created automatically the first time you run the app thanks to Hibernate's update setting. No need to run complex SQL scripts manually!
