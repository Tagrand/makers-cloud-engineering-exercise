# frozen_string_literal: true
ENV['RACK_ENV'] ||= 'dev'

require 'sinatra/base'

class FTFeedback < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    Rating.create(score: params[:ratin])
    redirect '/thanks'
  end

  get '/thanks' do

    'Thanks for your feedback!'
  end

  run! if app_file == $PROGRAM_NAME
end
