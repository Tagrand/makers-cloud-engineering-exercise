describe Rating do

  it 'should increase by one after a rating is added' do
    expect{ Rating.create(score: 5) }.to change(Rating, :count).by 1
  end
end
