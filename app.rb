# frozen_string_literal: true

require 'sinatra/base'

class FTFeedback < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    redirect '/thanks'
  end

  get '/thanks' do
    'Thanks for your feedback!'
  end

  run! if app_file == $PROGRAM_NAME
end