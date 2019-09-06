require 'slack-ruby-bot'
require 'sinatra/activerecord'

require './minimal_bot/model'
require './minimal_bot/controller'
require './minimal_bot/view'
require './minimal_bot/bot'
require './models/item'

SlackRubyBot::Client.logger.level = Logger::INFO
