RSpec.describe Game do

  it 'has two players with 100hp' do
    @new_game = Game.new
    @new_player = Players.new("player1")
    @new_player2 = Players.new("player2")
    expect(@new_game.show_hp(@new_player)).to eq 100
    expect(@new_game.show_hp(@new_player2)).to eq 100
  end

  it 'reduces hp' do
    @new_player = Players.new("Dave")
    @new_player2 = Players.new("hve")
    @new_game = Game.new(Players.new("Dave"), Players.new("hve"))
    expect{@new_game.attack(@new_player2)}.to change{$game.show_hp(@new_player2)}.by(-10)
  end
end
