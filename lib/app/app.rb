require 'sinatra/base'
require './lib/app/models/link'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  get '/links' do
    @links = Link.all
    p @links.inspect
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new_link'
  end

  post '/links' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
