# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'dev'

require 'sinatra/base'
require 'sinatra/flash'
require './models/rating'

class FTFeedback < Sinatra::Base
  enable :sessions
  set :session_secret, 'feedback'
  register Sinatra::Flash

  get '/' do
    @rating_range = (Rating::MIN_SCORE..Rating::MAX_SCORE)
    erb :index
  end

  post '/' do
    score = params[:rating].to_i unless params[:rating].nil?
    result = Rating.new(score: score)
    if result.save
      flash.next[:message] = 'Thanks for your feedback!'
    else
      flash.next[:error] = result.score_messages
    end
    redirect '/'
  end

end
