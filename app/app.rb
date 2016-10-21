#https://git.heroku.com/sheltered-lowlands-62761.git

require 'sinatra/base'
require_relative 'models/link'
require_relative 'models/tag'

class BookmarkManager < Sinatra::Base
ENV['RACK_ENV'] ||= 'development'

  get '/links' do
    @links = Link.all
    p @links
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    p link
    tag = Tag.create(name: params[:tag])
    p tag
    # linktags = LinkTags.all
    link.tags << tag
    link.save
    redirect to '/links'
  end

  run! if app_file == $0
end

DataMapper.setup(:default, ENV["DATABASE_URL"] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
