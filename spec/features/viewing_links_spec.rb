feature 'viewing links' do
  scenario 'user can see list of links' do
    visit '/link' 
    expect(page).to have_content("Alfie\n")
    expect(page).to have_content("Ricky\n")
    expect(page).to have_content("George\n")
  end
end



