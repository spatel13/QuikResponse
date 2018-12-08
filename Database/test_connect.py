import sqlite3

# connect to the DB
conn = sqlite3.connect('quik_response.db')

# print success message
print ("opened database successfully");

# execute query to view all table names
res = conn.execute("SELECT name FROM sqlite_master WHERE type='table';")

# print out the results
for name in res:
   print (name[0])
