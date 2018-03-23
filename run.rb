$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dicebot'

begin
  DiceBot.run
rescue StandardError => e
  STDERR.puts "ERROR: #{e}"
  STDERR.puts e.backtrace
  raise e
end
