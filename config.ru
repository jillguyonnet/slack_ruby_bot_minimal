require './minimal_bot'
require './web'

Thread.abort_on_exception = true

Thread.new do
  begin
    MinimalBot::Bot.run
  rescue Exception => e
    STDERR.puts "Error: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run MinimalBot::Web
