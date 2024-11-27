Project 8 - Creating an Amazon RDS Database
Lab Overview
This project demonstrates how to create and configure a MySQL relational database using Amazon Relational Database Service (RDS). It also guides you through connecting a web application to the database and managing the connection securely with AWS Secrets Manager.

By completing this lab, you will gain hands-on experience in deploying, configuring, and integrating cloud-based relational databases with web applications.

Learning Objectives
By the end of this lab, you will be able to:

Create an Amazon RDS database.
Configure a web application to connect to the database instance.
Securely manage database credentials using AWS Secrets Manager.
Requirements
Tools:
AWS Management Console
Web browser
Lab Environment Setup
Access AWS Console:
Log in to the AWS Management Console using the credentials provided.

Ensure Proper Region:
Do not change the AWS region unless instructed otherwise.

Tasks to Complete
Task 1: Creating an Amazon RDS Database Instance
Navigate to the RDS service in the AWS Management Console.

Create a new database with the following configuration:

Engine: MySQL
DB Instance Identifier: inventory-db
Master Username: admin
Master Password: lab-password
Instance Type: db.t3.micro
Storage Type: General Purpose SSD (gp2) with 20 GB allocated
VPC: Select the Lab VPC and ensure the security group DB-SG is attached
Initial Database Name: inventory
Disable Multi-AZ deployment, Enhanced Monitoring, and Storage Autoscaling
Create the database and wait for the status to change to Available.

Task 2: Configuring Web Application Communication with the Database
The lab environment automatically deploys an EC2 instance running a web application.
Retrieve the public IP address of the EC2 instance from the AWS Details section.
Connect to the web application using your browser and the provided IP address.
Access the RDS database details from the AWS Management Console and copy the database endpoint.
Enter the following connection details in the web application:
Endpoint: The RDS database endpoint you copied
Database: inventory
Username: admin
Password: lab-password
Save the configuration. The details will be securely stored in AWS Secrets Manager.

Task 3: Verifying Database and Application Integration
Use the web application to add, edit, and delete inventory records.
Add at least five records to verify the interaction between the application and the database.
Confirm that data persists across application sessions to validate successful integration.

Key Notes:
The database connection credentials are managed using AWS Secrets Manager to avoid hardcoding sensitive details into the application.
Always wait for the RDS database status to change to Available before attempting to connect it to the web application.
Ensure that the correct security group (DB-SG) is attached to the RDS instance to allow communication with the EC2 instance.

Completion Criteria:
The web application is successfully connected to the RDS database.
Inventory records can be added, edited, and deleted through the application.
Data persists across sessions, verifying the integration.
Enjoy exploring the power of Amazon RDS!







