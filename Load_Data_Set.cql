
//Delete the existing data set
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r 
