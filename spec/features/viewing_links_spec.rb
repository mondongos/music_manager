
feature "Viewing music links" do

  scenario "visit the index page" do
    visit('/')
    expect(page).to have_content "Music Manager"
  end

  scenario "a user can see music links" do
    visit('/musiclinks')
    expect(page).to have_content "https://www.youtube.com/watch?v=fL6R1AfJZLk"
    expect(page).to have_content "https://open.spotify.com/track/5oZ0OPPBRw12s6vTbdW01J?si=G7oxHt41QMCt9muGiLNnMQ"
    expect(page).to have_content "https://soundcloud.com/marrgrey/no-1"
  end

end
