require 'game'

describe Game do
  subject(:game) { described_class.new(user_1, user_2) }
  let(:user_1) { double :Player }
  let(:user_2) { double :Player }

  describe '#attack' do
    it 'attacks player' do
      expect(game).to respond_to(:attack)
    end
  end
end