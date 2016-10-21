#https://git.heroku.com/sheltered-lowlands-62761.git

require 'sinatra/base'
ENV['RACK_ENV'] ||= 'development'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base


  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    tag = Tag.first_or_create(name: params[:tag])
    link.tags << tag
    link.save
    redirect to '/links'
  end

  get '/tags/:name' do
    tags = Tag.all(name: params[:tags])
    @tag_name = params[:tags]
    @links = tags.links
    p @links
    erb :'/links/filtered_links'
  end

  run! if app_file == $0
end
