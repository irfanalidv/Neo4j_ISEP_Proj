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
