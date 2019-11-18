# frozen_string_literal: true

feature 'Enter and display player names' do
  scenario 'Each player enters their name' do
    visit '/'
    within(:css, '.player_names_form') do
      fill_in :player1, with: 'Rahul'
      fill_in :player2, with: 'Gabby'
      click_button 'Play!'
    end
  end
end
