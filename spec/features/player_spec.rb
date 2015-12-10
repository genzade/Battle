# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }
  let(:name) { double :name }
  
  describe '#name' do
    it 'player name' do
      expect(player.name).to eq :name
    end
  end
end