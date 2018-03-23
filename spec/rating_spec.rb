# frozen_string_literal: true

describe Rating do
  describe '#create' do
    it 'should increase by one after a rating is added' do
      expect { Rating.create(score: 5) }.to change(Rating, :count).by 1
    end

    it 'should not save without a score' do
      expect { Rating.create }.not_to change(Rating, :count)
    end

    it 'should not save with a score above the max' do
      expect { Rating.create(score: 6) }.not_to change(Rating, :count)
    end
  end

  describe '#score_messages' do
    it 'returns error message when score is nil' do
      result = Rating.create
      expect(result.score_messages).to eq('Score must not be blank')
    end
  end
end
