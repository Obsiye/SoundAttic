require 'sounds'

describe Sounds do
  describe '#all' do
    it 'returns an array of bookmarks' do
      sounds = Sounds.all
      
      expect(sounds).to include("biglife.mp3")
      expect(sounds).to include("havocroad.mp3")
      expect(sounds).to include("lilnoway.mp3")
    end
  end
end
