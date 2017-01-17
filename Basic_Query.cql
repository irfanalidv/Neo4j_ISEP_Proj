###Users in Database

MATCH (n)
RETURN n
### Users : 200

### Age and sex of the user with id = 1

MATCH (n:User { id: 1 })
RETURN n.age as Age,n.sex as Gender
### Age	Gender
###  24	M

### Women are artists (artist)

MATCH (n:User {sex:'F'})
WHERE n.occupation STARTS WITH 'arti'
RETURN n
### User 5

### women are artists (artists) or authors (writers)

MATCH (n:User {sex:'F'})
WHERE n.occupation STARTS WITH 'arti' OR n.occupation='writer'
RETURN n
### User 6

### Average age of students in the database

MATCH (n:User {occupation:'student'})
RETURN avg(n.age) as Avg_Age_Student
### Avg_Age_Student
### 23.193548387096776

###  Average age of users for each occupation 

MATCH (n:User)
RETURN n.occupation as Occupation, avg(n.age) as AVG_Age
ORDER BY AVG_Age DESC
### See output in console

### The number of users for each occupation 

MATCH (n:User)
RETURN n.occupation as Occupation, count(n.occupation) as Count
ORDER BY Count DESC
### See output in console

### top 5 most popular occupation

MATCH (n:User)
RETURN n.occupation as Occupation, count(n.occupation) as Count
ORDER BY Count DESC
LIMIT 5
### See output in console
