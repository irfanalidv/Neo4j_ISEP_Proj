###Users in Database

MATCH (n)
RETURN n
### Users : 200

### Age and sex of the user with id = 1

MATCH (n:User { id: 1 })
RETURN n.age,n.sex
### n.age	n.sex
###  24	M

