module MinimalBot
  class View < SlackRubyBot::MVC::View::Base
    def show_items
      if Item.exists?
        inventory = "Inventory:\n"
        Item.all.order(:created_at).each_with_index { |item, index| inventory += "> `#{index + 1}º` #{item.name}\n" }
        say(channel: data.channel, text: inventory)
      else
        say(channel: data.channel, text: 'The inventory is emtpy.')
      end
    end
  end
end
