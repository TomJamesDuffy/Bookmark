require 'sinatra/base'
require 'sinatra/flash'
require_relative 'link.rb'
require_relative 'database_connection_setup.rb'
require_relative 'link_validator.rb'

class Bookmark < Sinatra::Base

  enable :sessions
  register Sinatra::Flash

  post '/create-new-link' do
    flash[:notice] = "You must submit a valid URL." unless Link.create(params[:addlink])
    redirect '/'
  end

  get '/' do
    @links = Link.all
    erb(:link)
  end

  run! if app_file == $0
end


