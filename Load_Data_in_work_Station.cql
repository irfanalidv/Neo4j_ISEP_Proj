###Loading Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS users
CREATE (u:User {id : toInt(users.id), sex : users.sex, age :
toInt(users.age), occupation : users.occupation, zip_code :
users.zip_code});

