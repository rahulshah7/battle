# frozen_string_literal: true

feature 'Enter and display player names' do
  scenario 'Each player inputs their names and then submits the form.' do
    visit '/'
    within(:css, '#player_names_form') do
      fill_in :player1, with: 'Rahul'
      fill_in :player2, with: 'Gabby'
      click_button 'Play!'
    end
    expect(page).to have_content 'Rahul vs. Gabby'
  end
end
