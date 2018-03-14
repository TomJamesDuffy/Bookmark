require './lib/links'

describe Links do

  describe '#all' do
    it 'returns links' do
      links = Links.all
      expect(Links::CHAIN.find {|item| item.link["url"] == "https://www.alfiecleaners.com"  } ).to_not be_nil
      expect(Links::CHAIN.find {|item| item.link["url"] == "https://www.rickyhewitttech.com"  } ).to_not be_nil
      expect(Links::CHAIN.find {|item| item.link["url"] == "https://www.nebulasolutions.com"  } ).to_not be_nil
    end
  end

  describe '#add link' do
    it 'adds a link to the database' do
      Links.create("https://www.barclays.com", "barclays")
      Links.all
      expect(Links::CHAIN.find {|item| item.link["title"] == "barclays"  } ).to_not be_nil 
    end
  end
end





