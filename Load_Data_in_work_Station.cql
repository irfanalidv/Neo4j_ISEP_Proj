###Loading Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS users
CREATE (u:User {id : toInt(users.id), sex : users.sex, age :
toInt(users.age), occupation : users.occupation, zip_code :
users.zip_code});
###Added 200 labels, created 200 nodes, set 1000 properties, statement executed in 830 ms.

###Movies Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS movies
CREATE (m:Movie {id : toInt(movies.id), title : movies.title, date :
toInt(movies.date)});
###Added 400 labels, created 400 nodes, set 1108 properties, statement executed in 377 ms.

###Genres Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS genres
CREATE (u:Genre {id : toInt(genres.id), name : genres.name});
###Added 19 labels, created 19 nodes, set 38 properties, statement executed in 475 ms.


###Mov_Genre Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///mov_genre.csv' AS mov_genre
MERGE (m : Movie { id : toInt(mov_genre.mov_id) })
MERGE (g : Genre { id : toInt(mov_genre.genre) })
CREATE (m)-[:CATEGORIZED_AS]->(g);
###Created 834 relationships, statement executed in 1761 ms.


###Rating Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///ratings.csv' AS ratings
MERGE (u : User { id : toInt(ratings.user_id) })
MERGE (m : Movie { id : toInt(ratings.mov_id) })
CREATE (u)-[:RATED { note : toInt(ratings.rating), timestamp : toInt(ratings.timestamp) } ]->(m);
###Set 22620 properties, created 11310 relationships, statement executed in 10778 ms.

###Friend Data Set

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:///friends.csv' AS friends
MERGE (u1:User { id : toInt(friends.user1_id) })
MERGE (u2:User { id : toInt(friends.user2_id) })
CREATE (u1)-[:FRIEND_OF]->(u2);
###Created 800 relationships, statement executed in 556 ms.
