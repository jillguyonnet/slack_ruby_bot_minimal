require 'sinatra/base'

module MinimalBot
  class Web < Sinatra::Base
    get '/' do
      'Slack bot working...'
    end
  end
end
