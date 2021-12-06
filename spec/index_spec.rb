feature "Index page functionality" do
  scenario "Has sign in, sign up and add link BUTTONS" do
    visit('/')
    expect(page).to have_button('Sign in')
    expect(page).to have_button('Sign up')
    expect(page).to have_button('Add link')
  end

  scenario "Has a welcome message" do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end