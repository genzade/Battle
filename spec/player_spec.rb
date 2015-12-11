# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }

  describe '#name' do
    it 'player name' do
      expect(player.name).to eq :name
    end
  end

  describe '#hp' do
    it 'reduces hp value' do
      expect { player.health(10) }.to change { player.hp }.by(-10)
    end
  end
  # describe '#attack' do
  #   it 'reduces player HP' do
  #     expect { player.attack(:name) }.to change { player.hp }.by -10
  #   end
  # end
end