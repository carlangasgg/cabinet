require 'rails_helper'

feature 'Creating Doc' do
  let(:user) { create(:user) }

  before do
    login_as(user, scope: :user)
  end

  scenario 'can create job' do
    # visit root route
    visit '/'
      # click create post link
      click_link 'Create Doc'
      # fill in the form with needed information
      fill_in 'Title', with: 'title'
      fill_in 'Content', with: 'content'
      # submit button
      click_button 'Create Doc'
      # expect page
      expect(page).to have_content('title')
      expect(page).to have_content('content')

  end
end