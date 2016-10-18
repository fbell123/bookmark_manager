require 'rubygems'

require File.join(File.dirname(__FILE__), './lib/app/app.rb')

run BookmarkManager


configure :development do
  listen_addresses='*'
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.auto_migrate!
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end

configure :production do
  listen_addresses='*'
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
