feature 'Player 1 can attack Player 2, hp decreases on player 2' do
  scenario 'P1 can attack P2 and get confirmation' do
    include sign_in_and_play
    click_button 'Attack!'
    click_button 'Fight again'
    expect(page).to have_content '90hp'
  end
end
