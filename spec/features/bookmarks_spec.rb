feature "Bookmarks page functionality" do
  scenario "Viewing bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end