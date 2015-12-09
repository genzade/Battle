feature 'attack opponent' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'You attack Ham!'
  end
end
