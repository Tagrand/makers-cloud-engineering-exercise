# frozen_string_literal: true

feature 'visit site add a rating' do
  before do
    visit '/'
    fill_in :rating, with: 5
  end

  scenario 'of five stars and recieve confirmation' do
    click_button 'Submit'
    expect(page).to have_content('Thanks for your feedback!')
  end

  scenario 'and it stored in the database' do
    expect { click_button 'Submit' }.to change(Rating, :count).by 1
  end
end
