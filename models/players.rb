class Players

 attr_reader :player
 attr_reader :hp

  def initialize(playername, hp = 100)
    @player = playername
    @hp = hp
  end

  def attack
    @hp -= 10
  end
end
