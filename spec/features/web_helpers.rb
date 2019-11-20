# frozen_string_literal: true

def sign_in_and_play
  visit '/'
  within(:css, '#player_names_form') do
    fill_in :player1, with: 'Rahul'
    fill_in :player2, with: 'Gabby'
    click_button 'Play!'
  end
end
