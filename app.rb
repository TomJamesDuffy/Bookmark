require 'sinatra/base'
require 'sinatra/flash'
require_relative 'lib/links.rb'
require_relative 'lib/database_connection_setup.rb'
require_relative 'lib/link_validator.rb'

class Bookmark < Sinatra::Base

  configure do
     set :public_folder, File.expand_path('../public', __FILE__)
     set :views        , File.expand_path('../views', __FILE__)
     set :root         , File.dirname(__FILE__)
   end

  enable :sessions
  register Sinatra::Flash

  post '/create-new-link' do
    flash[:notice] = "You must submit a valid URL." unless Links.create(params[:addlink], params[:addtitle])
    redirect '/'
  end

  get '/' do
    @links = Links.all
    erb(:link)
  end

  run! if app_file == $0
end


