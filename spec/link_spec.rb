require 'link'

describe Link do
    
  describe '#all' do
    it 'returns links' do
      links = Link.all

      expect(links).to include("This is a link alpha") 
      expect(links).to include("This is a link beta") 
      expect(links).to include("This is a link charlie") 
    end
  end
end





