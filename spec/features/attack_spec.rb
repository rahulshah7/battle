# frozen_string_literal: true

feature 'Players can attack and get confirmation' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play

    within(:css, '#buttons') do
      click_link 'Attack'
    end

    expect(page).to have_content 'Rahul attacked Gabby'
  end
end
