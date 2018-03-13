require 'sinatra/base'
require_relative 'link.rb'
require_relative 'database_connection.rb'

class Bookmark < Sinatra::Base

  DatabaseConnection.setup('bookmark_manager_test') if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('bookmark_manager')

  post '/create-new-link' do
    Link.create(params[:addlink])
    redirect '/'
  end

  get '/' do
    @links = Link.all
    erb(:link)
  end

  run! if app_file == $0
end


