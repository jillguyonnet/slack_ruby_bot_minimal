module MinimalBot
  class Controller < SlackRubyBot::MVC::Controller::Base
    def ping
      view.say(channel: data.channel, text: 'pong')
    end
  end
end
