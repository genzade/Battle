

feature 'attack opponent' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Sara attacked Ham!'
  end

  # scenario 'confirm attack' do
  #   sign_in_and_play
  #   click_button 'attack'
  #   expect(player.attack).to change { player.hp }.by -10
  # end
end
