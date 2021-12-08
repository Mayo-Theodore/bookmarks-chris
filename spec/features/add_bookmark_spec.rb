feature "Add a bookmark" do
  scenario "user can add a bookmark via a form" do
    visit('/')
    click_button('Add link')
    fill_in 'url', with: 'Makers'
    click_button('Confirm')
    expect(page).to have_content('Makers')
  end
end