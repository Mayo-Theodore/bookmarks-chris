feature "Bookmarks page functionality" do
  scenario "Viewing bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content("www.Google.com, www.Apple.com")
  end
end