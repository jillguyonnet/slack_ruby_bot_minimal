module MinimalBot
  class Model < SlackRubyBot::MVC::Model::Base
    def add_item
      item = Item.new(name: ['apple', 'banana', 'cherry', 'lemon', 'orange', 'kumquat'].sample)
      item.save
    end

    def clear
      Item.destroy_all
    end
  end
end
