require 'musiclink'

describe Musiclink do
  describe ".all" do
    it "returns all music links" do
      musiclinks = Musiclink.all
      expect(musiclinks).to include("https://www.youtube.com/watch?v=fL6R1AfJZLk")
      expect(musiclinks).to include("https://soundcloud.com/marrgrey/no-1")
    end
  end
end
