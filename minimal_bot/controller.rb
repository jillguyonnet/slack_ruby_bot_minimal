module MinimalBot
  class Controller < SlackRubyBot::MVC::Controller::Base
    def ping
      view.say(channel: data.channel, text: 'pong')
    end

    def show
      view.show_items
    end

    def add
      model.add_item
      view.say(channel: data.channel, text: 'Item added!')
      view.show_items
    end

    def clear
      model.clear
      view.say(channel: data.channel, text: 'Inventory cleared!')
      view.show_items
    end
  end
end
