require 'link_validator'

describe LinkValidator do
  it 'should return true if link is valid' do
    expect(LinkValidator.validate("www.google.com")).to eq(true)
  end
  it 'should return false if link is invalid' do 
    expect(LinkValidator.validate("www.lakjrnlairjnlvsernv.com")).to eq(false)
  end
  it 'should return false if link is invalid' do 
    expect(LinkValidator.validate("wwwom")).to eq(false)
  end
end
    


