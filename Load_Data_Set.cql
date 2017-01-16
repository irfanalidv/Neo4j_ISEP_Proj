
#delete the existing dataset
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r 


