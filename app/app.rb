# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/activerecord'
Dir["#{File.dirname(__FILE__)}/models/**/*.rb"].each { |f| require f }
Dir["#{File.dirname(__FILE__)}/services/**/*.rb"].each { |f| require f }

class App < Sinatra::Base
  get '/ping' do
    status 200
  end

  get '/r/:slug' do
    redirect to('https://google.com')
  end
end
