require 'link'

describe Link do
    
  describe '#all' do
    it 'returns links' do
      links = Link.all

      expect(links).to include("www.alfiecleaners.com") 
      expect(links).to include("www.rickyhewitttech.com") 
      expect(links).to include("www.nebulasolutions.com") 
    end
  end
end





