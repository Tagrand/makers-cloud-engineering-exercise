# frozen_string_literal: true

require 'data_mapper'
require 'dm-mysql-adapter'

class Rating
  include DataMapper::Resource

  property :id, Serial
  property :score, Integer, required: true

  def score_messages
    self.errors[:score].first
  end
end

DataMapper.setup(:default, "mysql://ft@localhost/ft_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
