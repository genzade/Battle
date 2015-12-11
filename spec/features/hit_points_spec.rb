# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Play Page' do
  scenario 'see Player 2\'s Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Ham: 100HP'
  end

  scenario 'attack reduces Player 2\'s Hit Points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Retaliate'
    expect(page).to have_content 'Sara: 90HP'
  end
end