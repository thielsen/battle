def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'James'
  fill_in :player2, with: 'Jessica'
  click_button 'Submit'
end
