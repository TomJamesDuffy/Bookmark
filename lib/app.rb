require 'sinatra/base'
require_relative 'link.rb'

class Bookmark < Sinatra::Base

  get '/' do
    'hello world'
  end
run! if app_file == $0

end


