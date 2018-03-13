require 'link'

describe Link do
  subject(:link) { Link.new }  
  let(:connection) { double :connection, exec: 'SQL Statement Run' }

  describe '#all' do
    it 'returns links' do
      links = Link.all

      expect(links).to include("www.alfiecleaners.com") 
      expect(links).to include("www.rickyhewitttech.com") 
      expect(links).to include("www.nebulasolutions.com") 
    end
  end

  describe '#add link' do
    it 'adds a link to the database' do
      Link.create("www.noelleskittenhouse.com")
      expect(Link.all).to include("www.noelleskittenhouse.com") 
    end
  end
end





