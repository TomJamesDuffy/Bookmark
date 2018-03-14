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
    link = Links.create(params[:addlink], params[:addtitle])
    flash[:notice] = "You must submit a valid URL." unless link 
    redirect '/'
  end

  post '/delete-link' do
    link = Links.delete(params[:deletelinktitle])
    redirect '/'
  end

  post '/update-link' do
    session[:message] = params[:id]
    redirect '/update-link'
  end

  get '/update-link' do
    @links = Links.all
    erb(:update)
  end

  post '/' do
    Links.update(params[:id], params[:url], params[:title])
    redirect '/'
  end


  get '/' do
    @links = Links.all
    erb(:link)
  end

  run! if app_file == $0
end


