# frozen_string_literal: true

feature 'visit site add a rating' do
  before do
    visit '/'
  end

  scenario 'of five stars and recieve confirmation' do
    choose(5)
    click_button 'Submit'
    expect(page).to have_content('Thanks for your feedback!')
  end

  scenario 'and it stored in the database' do
    choose(5)
    expect { click_button 'Submit' }.to change(Rating, :count).by 1
  end

  scenario 'no score does not get logged' do
    click_button 'Submit'
    expect(page).to have_content('Error')
  end
end
