describe DiceBot do
  context 'given 2d6' do
    it 'returns 2 dices' do
      expect(message: 'rubybot 2d6')
        .to respond_with_slack_message(/[1-6] [1-6]/)
    end
  end

  context 'given "円周率を教えて"' do
    it 'returns pi' do
      stub_const('Math::PI', 3)
      expect(message: 'rubybot 円周率を教えて!')
        .to respond_with_slack_message(/\A3です\z/)
    end
  end
end
