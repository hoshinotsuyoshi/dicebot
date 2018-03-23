require 'slack-ruby-bot'
require 'dicebot/dice'

class DiceBot < SlackRubyBot::Bot
  command '2d6' do |client, data, _match|
    client.say(text: "#{dice} #{dice}", channel: data.channel)
  end

  command '円周率を教えて!' do |client, data, _match|
    pi = Math::PI
    client.say(text: "#{pi}です", channel: data.channel)
  end
end
