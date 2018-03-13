require 'sinatra/base'
require_relative 'link.rb'

class Bookmark < Sinatra::Base

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


