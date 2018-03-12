feature 'viewing links' do
  scenario 'user can see list of links' do
    visit '/' 
    expect(page).to have_content("www.alfiecleaners.com\n")
    expect(page).to have_content("www.rickyhewitttech.com\n")
    expect(page).to have_content("www.nebulasolutions.com\n")
  end
end



