require 'sounds'

describe Sounds do

  before(:each) do
    @db = setup_test_database
  end

  describe '#all' do
    it 'returns an array of sounds' do
      populate_database(@db)
      sounds = Sounds.all
      
      expect(sounds.any? { |hash| hash['title'] == 'biglife.mp3' }).to be true
    end
  end

  describe '#add' do
    it 'submits sound as record into sounds database' do
      sound = { title: 'wooden_windows', genre: 'COUNTRY', artist: 'Hawn Fencely' }
      sounds = Sounds.create(sound)
      expect(Sounds.create.first[:title]). to eq 'john'
    end
  end
end
