require 'pg'
require 'uri'
require_relative 'database_connection.rb'
require_relative 'link_validator.rb'

class Link
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.create(url)
    return false unless is_url?(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{url}');") if LinkValidator.validate(url) 
  end

  private

  def self.is_url?(url)
    LinkValidator.validate(url)

    # If httpie is not installed use below
    #     #link =~ /\A#{URI::DEFAULT_PARSER.regexp[:ABS_URI]}\z/
  end

end
