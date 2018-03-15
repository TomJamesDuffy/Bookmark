require 'pg'
require 'uri'
require_relative 'database_connection.rb'
require_relative 'link_validator.rb'
require_relative 'link.rb'

class Links

    CHAIN = []

  def self.all
    CHAIN.clear
    result = DatabaseConnection.query("SELECT * FROM links")
    result.each { |link| CHAIN.push(Link.new(link))}
  end

  def self.create(url, title)
    return false unless is_url?(url)
    DatabaseConnection.query("INSERT INTO links (url, title) VALUES ('#{url}', '#{title}');") if LinkValidator.validate(url) 
  end

  private

  def self.is_url?(url)
    LinkValidator.validate(url)

    # If httpie is not installed use below
    #     #link =~ /\A#{URI::DEFAULT_PARSER.regexp[:ABS_URI]}\z/
  end

  def self.delete(title)
    DatabaseConnection.query("DELETE FROM links where title='#{title}'")
  end


  def self.update(id, url, title)
    DatabaseConnection.query("UPDATE links SET title='#{title}', url='#{url}' where id='#{id}';") if LinkValidator.validate(url)
  end
end
