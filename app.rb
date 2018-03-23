# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'dev'

require 'sinatra/base'

class FTFeedback < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    score = params[:rating].to_i unless params[:rating].nil?
    result = Rating.new(score: score)
    if result.save
      redirect '/thanks'
    else
      redirect '/error'
    end
  end

  get '/thanks' do
    'Thanks for your feedback!'
  end

  get '/error' do
    'Error'
  end

  run! if app_file == $PROGRAM_NAME
end
