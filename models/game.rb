require "./models/players"

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Players.new("player1"), player2 = Players.new("player2"))
   @player1 = player1
   @player2 = player2
   @fighter = @player1
   @punchbag = @player2
  end

  def attack
   @punchbag.hp -= 10
  end

  def fighter_name
    @fighter.name
  end

  def  punchbag_name
    @punchbag.name
  end

  def  show_punchbag_hp
    @punchbag.hp
  end
  
  def  show_fighter_hp
    @fighter.hp
  end

  def switch
    if @counter == nil
      @fighter = @player2
      @punchbag = @player1
      @counter = true
    elsif @counter == true
      @fighter = @player1
      @punchbag = @player2
      @counter = nil
    end
  end

end
