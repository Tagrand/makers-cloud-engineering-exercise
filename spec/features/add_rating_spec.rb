# frozen_string_literal: true

feature 'visit site' do
  scenario 'see title' do
    visit '/'
    expect(page).to have_content('welcome to the FT\'s rating site')
  end
end
