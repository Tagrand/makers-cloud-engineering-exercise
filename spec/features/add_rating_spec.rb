# frozen_string_literal: true

feature "visit site add a rating" do
  before do
    visit "/"
  end

  scenario "no score gets error" do
    click_button "Submit"
    expect(page).to have_content("Score must not be blank")
    expect(page).not_to have_content("Thanks for your feedback!")
  end

  scenario " - you can choose any of the valid ratings values" do
    total_options = Rating::MAX_SCORE - Rating::MIN_SCORE + 1
    expect(page.all(".rating").length).to eq(total_options)
    expect(page).to have_selector(:css, "#score_#{Rating::MAX_SCORE}")
    expect(page).to have_selector(:css, "#score_#{Rating::MIN_SCORE}")
  end

  scenario "of five stars and recieve confirmation" do
    add_rating
    expect(page).not_to have_content("Score must not be blank")
    expect(page).to have_content("Thanks for your feedback!")
    expect(page).to have_content("Rating: 5")
  end

  scenario "and it stored in the database" do
    expect { add_rating }.to change(Rating, :count).by 1
  end

  scenario "add two ratings, view the results" do
    add_rating(1)
    click_link "Give a review"
    add_rating(2)
    expect(page).to have_content("Rating: 1")
    expect(page).to have_content("Rating: 2")
    expect(page).not_to have_content("Rating: 3")
  end
end
