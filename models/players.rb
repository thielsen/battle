class Players

 attr_reader :name
 attr_accessor :hp

  def initialize(playername, hp = 100)
    @name = playername
    @hp = hp
  end

end
