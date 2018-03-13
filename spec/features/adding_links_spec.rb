feature 'adding links' do
  scenario 'user wants to add a link' do
    visit '/'
    fill_in 'addlink', with: "www.viviansemporium.com"
    click_button 'Add link'
    expect(page).to have_content "www.viviansemporium.com"
  end
end
