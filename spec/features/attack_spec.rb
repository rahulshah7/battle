# frozen_string_literal: true

describe 'Attack Feature' do
  feature 'Players can attack and get confirmation' do
    scenario 'Player 1 attacks player 2' do
      sign_in_and_play

      expect(page).to have_content '60HP'

      within(:css, '#buttons') do
        click_link 'Attack'
      end

      expect(page).to have_content 'Rahul attacked Gabby'

      click_link 'Continue'

      within(:css, '#player2_hp') do
        expect(page).to have_content '50HP'
      end
    end
  end
end
