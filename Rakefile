require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the database
  connection.exec("TRUNCATE links;")

  connection.exec("INSERT INTO links VALUES(1, 'https://www.alfiecleaners.com', 'Alfie');")
  connection.exec("INSERT INTO links VALUES(2, 'https://www.rickyhewitttech.com', 'Ricky');")
  connection.exec("INSERT INTO links VALUES(3, 'https://www.nebulasolutions.com', 'George');")
end

task :setup do
  p "Creating databases..."

  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  end
end

task :drop do
  p "Deleting databases..."

  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect(dbname: database)
    connection.exec("DROP DATABASE #{database};")
  end
end
