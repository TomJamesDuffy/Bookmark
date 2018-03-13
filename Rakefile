require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the database
  connection.exec("TRUNCATE links;")

  connection.exec("INSERT INTO links VALUES(1, 'www.alfiecleaners.com');")
  connection.exec("INSERT INTO links VALUES(2, 'www.rickyhewitttech.com');")
  connection.exec("INSERT INTO links VALUES(3, 'www.nebulasolutions.com');")
end

task :setup do
  p "Creating databases..."

  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")
  end
end
