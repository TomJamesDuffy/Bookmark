feature 'adding links' do
  scenario 'user wants to add a link' do
    visit '/'
    fill_in 'addlink', with: "https://www.birleys.com"
    click_button 'Add link'
    expect(page).to have_content "https://www.birleys.com"
  end

  scenario 'error is raised if link is incorrect' do
    visit '/'
    fill_in 'addlink', with: "httpsscom"
    click_button 'Add link'
    expect(page).to have_content "You must submit a valid URL."
  end
end
