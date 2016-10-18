require 'dm-migrations'
require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)

class Link
  include DataMapper::Resource

  property :id, Serial
  property :url, String
  property :title, String
end

DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')
DataMapper.finalize
DataMapper.auto_upgrade!

# Link.create(1, 'http://google.com', )
