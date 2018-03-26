# frozen_string_literal: true
require 'data_mapper'
require 'dm-mysql-adapter'

class Rating
  include DataMapper::Resource

  MAX_SCORE = 5
  MIN_SCORE = 0

  property :id, Serial
  property :score, Integer, required: true

  validates_with_method :score, method: :within_range

  def score_messages
    errors[:score].first
  end

  def within_range
    return true if score.nil?
    return true if (score <= MAX_SCORE) && (score >= MIN_SCORE)
    [false, "Score must be between #{MIN_SCORE} and #{MAX_SCORE}"]
  end
end

DataMapper.setup(:default, ENV['CLEARDB_DATABASE_URL'] || "mysql://ft@localhost/ft_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
