# frozen_string_literal: true

describe Rating do
  let(:max) { Rating::MAX_SCORE }
  let(:min) { Rating::MIN_SCORE }

  describe '#create' do
    it 'increases by one after a rating is added' do
      expect { described_class.create(score: 5) }.to change(described_class, :count).by 1
    end

    it 'does not save without a score' do
      expect { described_class.create }.not_to change(described_class, :count)
    end

    it 'does not save with a score above the max' do
      expect { described_class.create(score: max + 1) }.not_to change(described_class, :count)
    end

    it 'does not save with a score below the min' do
      expect { described_class.create(score: min - 1) }.not_to change(described_class, :count)
    end
  end

  describe '#score_messages' do
    it 'returns error message when score is nil' do
      result = described_class.create
      expect(result.score_messages).to eq('Score must not be blank')
    end

    it 'returns error message when score is too high' do
      message = "Score must be between #{min} and #{max}"
      result = described_class.create(score: max + 1)
      expect(result.score_messages).to eq(message)
    end

    it 'returns error message when score is too low' do
      message = "Score must be between #{min} and #{max}"
      result = described_class.create(score: min - 1)
      expect(result.score_messages).to eq(message)
    end
  end
end
