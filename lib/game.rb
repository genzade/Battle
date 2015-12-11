# require 'player'

class Game
  attr_reader :player_1, :player_2
  
  def initialize(player_klass_1=Player.new('player_1'), player_klass_2=Player.new('player_2'))
    @player_1 = player_klass_1
    @player_2 = player_klass_2
  end 

  def attack player
    player.health(10)
  end
end