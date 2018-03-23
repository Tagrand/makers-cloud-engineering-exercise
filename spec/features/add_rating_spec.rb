# frozen_string_literal: true

feature 'visit site add a rating' do
  scenario 'of five stars and recieve confirmation' do
    visit '/'
    fill_in :rating, with: 5
    click_button 'Submit'
    expect(page).to have_content('Thanks for your feedback!')
  end

  scenario 'and it stored in the database' do
    visit '/'
    fill_in :rating, with: 1
    expect { click_button 'Submit' }.to change(Rating, :count).by 1
  end
end
