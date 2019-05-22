
feature "Viewing music links" do

  scenario "a user can see music links" do
    visit('/')
    expect(page).to have_content "https://www.youtube.com/watch?v=fL6R1AfJZLk"
    expect(page).to have_content "https://soundcloud.com/marrgrey/no-1"
  end

end
