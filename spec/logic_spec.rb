require './lib/logic'

describe CheckWinning do
  describe '#check_win' do
    it 'should return true when x or o wins' do
      subject.positions = ['x', 'x', 'x', 4, 5, 6, 7, 8, 9]
      expect(subject.check_win('x')).to eql(true)
    end
    it 'should return false when the winning combination is not in the array' do
      subject.positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(subject.check_win('x')).to eql(false)
    end
  end

  describe '#check_the_winer' do
    it 'should return a string with the name of the player that is passed as an argument' do
      expect(subject.check_the_winer('Martin')).to eql('congratulation Martin you won the game')
    end
  end

  describe '#check_draw' do
    it 'should return true no one wins' do
      subject.positions = %w[x o x o x x o x o]
      expect(subject.check_draw('x')).to eql(true)
    end
    it 'should return true no one wins' do
      subject.positions = %w[x x x o x x o x o]
      expect(subject.check_draw('x')).to eql(false)
    end
  end
end

describe CheckPosition do
  describe '#check_input' do
    it 'should return true if the input is between 1 and 9' do
      expect(subject.check_input(9)).to eql(true)
    end
    it 'should return false if the input is not between 1 and 9' do
      expect(subject.check_input(11)).to be_falsey
    end
  end

  describe '#check_position' do
    it 'should return true if the input is an integer' do
      expect(subject.check_position(7)).to eql(true)
    end
    it 'should return false if the input is not an integer' do
      expect(subject.check_position('7')).to be_falsey
    end
  end
end
