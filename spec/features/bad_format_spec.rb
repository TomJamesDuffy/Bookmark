feature 'adding links' do
  scenario 'user wants to add a link in an incorrect format' do
    visit '/'
    fill_in 'addlink', with: "BACON ARNOLD?"
    click_button 'Add Link'
    expect(page).to_not have_content "BACON ARNOLD?"
  end
end
