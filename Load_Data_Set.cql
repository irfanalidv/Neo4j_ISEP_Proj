
//Delete the existing data set
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r 

MATCH (n) RETURN n //This is an end of line comment
