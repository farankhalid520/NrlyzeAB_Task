# NrlyzeAB_Task
NrlyzeAB Task
Demo Video: https://www.loom.com/share/e58f48a4c46b4489ac96f18a99e734e5

#To set-up mySQL Database and Server Connection
- Create a new connection on any mySQL database server (I used mySQL Workbench)
- Import the SQL Dump file provided in the repository

#To set-up Django Backend

Run the following commands:
1- pip install virtualenv
2- virtualenv env (to create the virtual environment)
3- env\scripts\activate (to run the virtual environemnt)

In the virtual environment install the following:
- pip install django
- pip install djangorestframework
- pip3.11 install mysqlclient
- pip install django-cors-headers

Setting up mySQL database with Django:
- In settings.py file update the Database list with the credentials of your mySQL database server connection

To run the django backend server
- cd djangoAPI
- python manage.py makemigrations
- python manage.py migrate (This will set-up mySQL database with the django backend)
- python manage.py runserver

#To set-up React frontend
- npm install
- npm start

Note: Make sure Node.js is installed on the system beforehand
