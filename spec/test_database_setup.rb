require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the database
connection.exec("TRUNCATE links;")

connection.exec("INSERT INTO links VALUES(1, 'www.alfiecleaners.com');")
connection.exec("INSERT INTO links VALUES(2, 'www.rickyhewitttech.com');")
connection.exec("INSERT INTO links VALUES(3, 'www.nebulasolutions.com');")
