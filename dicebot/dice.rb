class DiceBot < SlackRubyBot::Bot
  module Dice
    private

    def dice
      (rand * 6).to_i + 1
    end
  end

  extend Dice
end
