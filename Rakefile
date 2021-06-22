require "sinatra/activerecord/rake"

require './app/app'
Dir["#{File.dirname(__FILE__)}/lib/tasks/*.rake"].each { |f| load f }

namespace :db do
  task :load_config do
    require "./app/app"
  end
end
