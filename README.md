# README

![logo](https://i.imgur.com/zxaHE8Z.png)

## Innovate Confidence API

This is the api, build in Ruby on Rails, for the web app [Innovate Confidence](https://github.com/diana/Innovate-Confidence) and is deployed to [heroku](https://young-lowlands-15866.herokuapp.com/) with ability to view json of **users**, **games**, **scenarios**, **attempts**, **questions**, and **answers**.

The database is PostgeSQL and database diagrame is pictured below:

![dbdiagram](https://github.com/diana/IC-API/blob/master/Untitled%20(1).png?raw=true)

### Features in progress:
+ Implamenting the `options` attribute of the `questions` table. This attribute is set up as an array so that it can hold optional answers for multiple choice/dropdown answering.
+ Update the `users` table to hold a username, company name, and other attributes as needed by users.
+ Update the `questions` table to include a question type, such as true/false, multiple choice, short & long answers. Currently only has option for text answers. 
+ ...