feature 'Player 1 can attack Player 2, hp decreases on player 2' do
  scenario 'P1 can attack P2 and get confirmation' do
    include sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'James attacked Jessica'
  end
end
