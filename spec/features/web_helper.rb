# frozen_string_literal: true

def add_rating(score = 5)
  choose(score)
  click_button 'Submit'
end
