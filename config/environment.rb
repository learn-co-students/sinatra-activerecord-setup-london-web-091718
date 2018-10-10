ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/database.db'
end

#configure :development do
#  set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'lab', pool: 2, username: 'dev', password: 'dev'}#
#end

require './app'
