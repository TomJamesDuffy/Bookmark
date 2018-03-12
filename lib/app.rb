require 'sinatra/base'
require_relative 'link.rb'

class Bookmark < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:link)
  end
run! if app_file == $0

end


