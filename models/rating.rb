require 'data_mapper'
require 'dm-mysql-adapter'

class Rating
  include DataMapper::Resource

  property :id, Serial
  property :score, Integer
end

DataMapper.setup(:default, "mysql://ft@localhost/ft")
DataMapper.finalize
DataMapper.auto_migrate!
