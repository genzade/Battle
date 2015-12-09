# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Home Page' do
  scenario 'submit form' do
    sign_in_and_play
    expect(page).to have_content 'Sara v Ham'
  end
end
