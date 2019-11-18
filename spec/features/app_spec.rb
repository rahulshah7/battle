# frozen_string_literal: true

feature 'Test infrastructure setup' do
  scenario 'Navigate to index page' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
