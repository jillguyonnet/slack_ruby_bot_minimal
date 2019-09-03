require 'slack-ruby-bot'

require './minimal_bot/model'
require './minimal_bot/controller'
require './minimal_bot/view'
require './minimal_bot/bot'

SlackRubyBot::Client.logger.level = Logger::INFO
