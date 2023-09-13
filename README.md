# employee-week-payment
Employee Week payment



User Story: Employee Weekly Payment

Description:
This is a company with many employees, we will have a single table called 
Employee which will store all Employees information, we need to provide the whole maintenance over this table.

We also have another table called WeekPeriod, we won't provide any maintenance to it.
Lets asume that there is an external service that handles that table information.
But that infomation will be usefull for us in order to calculate the employee weekly payments.

So here we have some rules that will be usefull to start the project from scratch (TDD)

*** Consider that a period is just a week, starting from the begining of the year.
For example, the first week of this year should be 2023-1.

1) Verify if the employee has an email with no "entropyzero.com" domain, the email will be replaced by the value "no email".
2) Verify if the employee has empty or null lastName, the lastname will be replaced by the value "no lastname".
3) Verify if the employee has empty or null phone number, the phone number will be replaced by the company parametrized phone number.
4) Verify if the employee is new, in that case he/she he/she won't receive any paymet.
5) Verify if the employee worked more than 40 hours in a single period, in that case he/she would receive a bonus.
6) Verify if the employee has an active bonus, then he/she will receive an extra money, so the week total payment must be greater than the regular week payment.
7) Verify if the employee has not an active bonus, then he/she won't receive extra money, so the week total payment must be equal than the regular week payment.
8) Calling the whole active employees, verify if there is no more than 2 active employees, in that case we must return an empty list.



Instructions:
============


Database: (running docker required)
At location employee-week-payment\pedro-app\SqlMigration
Execute in a terminal, next instruction: docker-compose up

Backend:
Open in Visual Sutudio 2022 payment\NETCORE\NETCORE\Netcore.sln solution
- Build
- Run

Front End:
Open in Visual Code and use a terminal to execute next instructions at \pedro-app location
- npm install
- npm start

Browser:
http://localhost:3000/login
user: admin@email.com
password: corbin