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

  post '/link/new' do
    link = Links.create(params[:addlink], params[:addtitle])
    flash[:notice] = "You must submit a valid URL." unless link 
    redirect '/link'
  end

  post '/link/delete' do
    link = Links.delete(params[:deletelinktitle])
    redirect '/link'
  end

  post '/link/update' do
    session[:message] = params[:id]
    redirect '/link/update'
  end

  get '/link/update' do
    @links = Links.all
    erb :'link/update'
  end

  post '/link' do
    Links.update(params[:id], params[:url], params[:title])
    redirect '/link'
  end

  get '/link' do
    @links = Links.all
    erb :'link/index'
  end

  run! if app_file == $0
end


