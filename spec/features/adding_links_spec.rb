feature 'adding links' do
  scenario 'user wants to add a link' do
    visit '/link'
    fill_in 'addlink', with: "https://www.birleys.com"
    fill_in 'addtitle', with: "birleys"
    click_button 'Add Link'
    expect(page).to have_content "birleys"
  end

  scenario 'error is raised if link is incorrect' do
    visit '/link'
    fill_in 'addlink', with: "httpsscom"
    click_button 'Add Link'
    expect(page).to have_content "You must submit a valid URL."
  end
end
