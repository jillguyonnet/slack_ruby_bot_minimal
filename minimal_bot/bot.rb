module MinimalBot
  class Bot < SlackRubyBot::Bot
    model = Model.new
    view = View.new
    @controller = Controller.new(model, view)
  end
end
