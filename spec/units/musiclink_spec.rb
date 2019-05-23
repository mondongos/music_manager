require 'musiclink'

describe Musiclink do
  describe ".all" do
    it "returns all music links" do

      connection = PG.connect(dbname: 'music_manager_test')

      connection.exec("INSERT INTO musiclinklist (url) VALUES ('https://www.youtube.com/watch?v=fL6R1AfJZLk');")
      connection.exec("INSERT INTO musiclinklist (url) VALUES ('https://soundcloud.com/marrgrey/no-1');")

      musiclinks = Musiclink.all

      expect(musiclinks).to include("https://www.youtube.com/watch?v=fL6R1AfJZLk")
      expect(musiclinks).to include("https://soundcloud.com/marrgrey/no-1")
    end
  end
end
