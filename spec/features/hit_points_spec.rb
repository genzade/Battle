# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Play Page' do
  scenario 'see Player 2\'s Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Ham: 100HP'
  end
end