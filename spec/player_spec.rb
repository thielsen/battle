

RSpec.describe Players do
  it 'returns name' do
    @new_player = Players.new("Dave")
    @new_player == "Dave"
  end
end
