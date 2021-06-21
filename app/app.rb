# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/activerecord'

class App < Sinatra::Base
  get '/ping' do
    status 200
  end

  get '/r/:slug' do
    redirect to('https://google.com')
  end
end
