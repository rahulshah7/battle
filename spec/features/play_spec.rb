# frozen_string_literal: true

feature 'Players can view Hit Points' do
  scenario 'Player 1 wants to views Player 2\'s Hit Points' do
    visit '/'
    within(:css, '#player_names_form') do
      fill_in :player1, with: 'Rahul'
      fill_in :player2, with: 'Gabby'
      click_button 'Play!'
    end
    expect(page).to have_content 'Rahul vs. Gabby'

    within(:css, '#player2_hp') do
      expect(page).to have_content '60HP'
    end
  end
end
