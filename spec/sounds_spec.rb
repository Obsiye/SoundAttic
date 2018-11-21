require 'sounds'

describe Sounds do
  describe '#all' do
    it 'returns an array of sounds' do
      sounds = Sounds.all
      expect(sounds.any? { |hash| hash['title'] == 'biglife.mp3' }).to be true
    end
  end

  describe '#add' do
    it 'submits sound as record into sounds database' do
      sounds = Sounds.add('john')
    end
  end
end
