require 'rails_helper'

feature 'visiting homepage' do
  scenario 'Index page shows welcome text' do
    visit root_path
    expect(page).to have_text('Welcome to Posts')
  end
end
