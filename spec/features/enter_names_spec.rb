feature 'Two players enter names' do
  scenario 'can submit two names' do
    visit('/')
    fill_in :player1, with: 'James'
    fill_in :player2, with: 'Jessica'
    click_button 'Submit'
    expect(page).to have_content 'James vs Jessica'
  end

  scenario 'player1 can view player2\'s HP' do
    visit('/')
    fill_in :player1, with: 'James'
    fill_in :player2, with: 'Jessica'
    click_button 'Submit'
    expect(page).to have_content 'Jessica: 100hp'
  end


end
