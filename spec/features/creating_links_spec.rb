feature "Adding a music link" do
  scenario "User can add a music link to the music manager" do
    visit('/new')
    fill_in('url', with: 'http://testlink.com')
    click_button('Submit')
    expect(page).to have_content 'http://testlink.com'
  end
end
