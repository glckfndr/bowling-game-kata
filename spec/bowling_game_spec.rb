require_relative '../lib/bowling_game'
describe BowlingGame do
  it 'scores a gutter game' do
    subject.pins([0] * 20)
    expect(subject.score).to eq(0)
  end

  it 'scores a game of 1s' do
    subject.pins([1] * 20)
    expect(subject.score).to eq(20)
  end

  it 'scores a game with spare' do
    subject.pins([4, 6, 5] + [0] * 17)
    expect(subject.score).to eq(20)
  end

  it 'scores a game with strike' do
    subject.pins([10, 3, 5] + [0] * 16)
    expect(subject.score).to eq(26)
  end

  it 'scores a perfect game' do
    subject.pins([10] * 12)
    expect(subject.score).to eq(300)
  end
end
