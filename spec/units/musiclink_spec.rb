require 'musiclink'

describe Musiclink do
  describe ".all" do
    it "returns all music links" do
      musiclinks = Musiclink.all
      expect(musiclinks).to include("https://www.youtube.com/watch?v=fL6R1AfJZLk")
      expect(musiclinks).to include("https://open.spotify.com/track/5oZ0OPPBRw12s6vTbdW01J?si=G7oxHt41QMCt9muGiLNnMQ")
      expect(musiclinks).to include("https://soundcloud.com/marrgrey/no-1")
    end
  end
end
