require 'rubygems'

require File.join(File.dirname(__FILE__), './lib/app/app.rb')

run BookmarkManager


configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.auto_migrate!
  DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_development')
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
