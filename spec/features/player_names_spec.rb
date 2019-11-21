# frozen_string_literal: true

describe 'Player Names Feature' do
  feature 'Enter and display player names' do
    scenario 'Each player inputs their names and then submits the form.' do
      sign_in_and_play
      expect(page).to have_content 'Rahul vs. Gabby'
    end
  end
end
