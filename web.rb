require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:db/minimal_bot.sqlite3"

module MinimalBot
  class Web < Sinatra::Base
    get '/' do
      'Slack bot working...'
    end
  end
end
