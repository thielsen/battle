feature 'Two players enter names' do
  scenario 'can submit two names' do
    include sign_in_and_play
    expect(page).to have_content 'James vs Jessica'
  end
end
