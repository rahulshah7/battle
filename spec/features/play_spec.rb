# frozen_string_literal: true

feature 'Players can view Hit Points' do
  scenario 'Player 1 wants to views Player 2\'s Hit Points' do
    sign_in_and_play

    within(:css, '#player2_hp') do
      expect(page).to have_content '60HP'
    end
  end
end
