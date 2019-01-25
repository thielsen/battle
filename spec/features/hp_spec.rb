feature 'Can view player2\'s HP' do
  scenario 'player1 can view player2\'s HP' do
    include sign_in_and_play
    expect(page).to have_content 'Jessica: 100hp'
  end
end
