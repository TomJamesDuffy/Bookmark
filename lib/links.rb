require 'pg'
require 'uri'
require_relative 'database_connection.rb'
require_relative 'link_validator.rb'
require_relative 'link.rb'

class Links

    attr_reader :chain

    CHAIN = []

  def self.all
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

end
