feature 'adding links' do
  scenario 'user wants to add a link' do
    visit '/'
    fill_in 'addlink', with: "https://www.birleys.com"
    fill_in 'addtitle', with: "birleys"
    click_button 'Submit'
    expect(page).to have_content "birleys"
  end

  scenario 'error is raised if link is incorrect' do
    visit '/'
    fill_in 'addlink', with: "httpsscom"
    click_button 'Submit'
    expect(page).to have_content "You must submit a valid URL."
  end
end
