# frozen_string_literal: true

feature 'visit site' do
  scenario 'see title' do
    visit '/'
    expect(page).to have_content('welcome to the FT\'s rating site')
  end

  scenario 'add rating' do
    visit '/'
    fill_in :rating, with: 5
    click_button 'Submit'
    expect(page).to have_content('Thanks for your feedback!')
  end
end
