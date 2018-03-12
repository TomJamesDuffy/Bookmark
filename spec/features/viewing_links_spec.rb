feature 'viewing links' do
  scenario 'user can see list of links' do
    visit '/' 
    expect(page).to have_content("This is a link alpha\n")
    expect(page).to have_content("This is a link beta\n")
    expect(page).to have_content("This is a link charlie\n")
  end
end



