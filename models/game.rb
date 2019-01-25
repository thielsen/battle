require "./models/players"

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Players.new("player1"), player2 = Players.new("player2"))
   @player1 = player1
   @player2 = player2
  end

  def show_hp(player)
   player.hp
  end

  def attack(player)
   player.hp -= 10
  end

  def name(player)
    player.name
  end


end
