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
    tag_split = params[:tag].split(',').map!(&:strip)
    link = Link.create(url: params[:url], title: params[:title])
    tag_split.each do |tag|
      link.tags << Tag.first_or_create(name: tag)
    end
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
