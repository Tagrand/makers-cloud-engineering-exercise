# frozen_string_literal: true

feature 'visit site add a rating' do
  before do
    visit '/'
  end

  scenario 'this an option for all the valid ratings values' do
    total_options = Rating::MAX_SCORE - Rating::MIN_SCORE + 1
    expect(page.all('.rating').length).to eq(total_options)
    expect(page).to have_selector(:css, "#score_#{Rating::MAX_SCORE}")
    expect(page).to have_selector(:css, "#score_#{Rating::MIN_SCORE}")
  end

  scenario 'of five stars and recieve confirmation' do
    choose(5)
    click_button 'Submit'
    expect(page).not_to have_content('Score must not be blank')
    expect(page).to have_content('Thanks for your feedback!')
  end

  scenario 'and it stored in the database' do
    choose(5)
    expect { click_button 'Submit' }.to change(Rating, :count).by 1
  end

  scenario 'no score gets error' do
    click_button 'Submit'
    expect(page).to have_content('Score must not be blank')
    expect(page).not_to have_content('Thanks for your feedback!')
  end

  scenario 'add two ratings, view the results' do
    choose(1)
    click_button 'Submit'
    choose(2)
    click_button 'Submit'
    click_link 'See all reviews'
    expect(page).to have_content('Rating: 1')
    expect(page).to have_content('Rating: 2')
    expect(page).not_to have_content('Rating: 3')
  end
end
