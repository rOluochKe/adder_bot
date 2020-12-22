$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'adder_bot'
require 'web'

Thread.new do
  begin
    AdderBot::Bot.run
  rescue Exception => e
    warn "ERROR: #{e}"
    warn e.backtrace
    raise e
  end
end

run AdderBot::Web
