###Loading Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS users
CREATE (u:User {id : toInt(users.id), sex : users.sex, age :
toInt(users.age), occupation : users.occupation, zip_code :
users.zip_code});
###Added 200 labels, created 200 nodes, set 1000 properties, statement executed in 830 ms.

##Movies Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS movies
CREATE (m:Movie {id : toInt(movies.id), title : movies.title, date :
toInt(movies.date)});
###Added 400 labels, created 400 nodes, set 1108 properties, statement executed in 377 ms.

##Genres Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS genres
CREATE (u:Genre {id : toInt(genres.id), name : genres.name});
