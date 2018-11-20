require 'sounds'

describe Sounds do
  describe '#all' do
    it 'returns an array of bookmarks' do
      sounds = Sounds.all

      expect(sounds.any? { |hash| hash['title'] == 'biglife.mp3' }).to be true
    end
  end
end
