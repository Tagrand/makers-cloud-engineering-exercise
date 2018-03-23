# frozen_string_literal: true

describe Rating do
  it 'should increase by one after a rating is added' do
    expect { Rating.create(score: 5) }.to change(Rating, :count).by 1
  end

  it 'should have a score' do
    expect { Rating.create() }.not_to change(Rating, :count)
  end
end
