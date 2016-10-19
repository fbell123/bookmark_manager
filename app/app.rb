ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require_relative './models/link.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  post "/links" do
    Link.create(url: params[:url], title: params[:title], tags: params[:tags])
    redirect "/links"
  end

  get "/links/new" do
    erb :add_link
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
