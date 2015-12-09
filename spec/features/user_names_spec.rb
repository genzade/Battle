# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'add user names' do
  scenario 'submit form' do
    visit '/' 
    fill_in 'username_1', with: 'Sara'
    fill_in 'username_2', with: 'Ham'
    click_button 'let the battles begin'
    expect(page).to have_content 'Sara v Ham'
  end
end