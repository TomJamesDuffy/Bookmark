require 'pg'
require_relative 'database_connection.rb'

class Link
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.create(link)
    DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{link}');")
  end

end
