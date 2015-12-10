def sign_in_and_play
  visit '/' 
  fill_in 'user_1', with: 'Sara'
  fill_in 'user_2', with: 'Ham'
  click_button 'let the battles begin'
end