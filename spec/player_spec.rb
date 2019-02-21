require 'player'

describe Player do
    it 'has a name' do
        player = Player.new("maria")
        expect(player.name).to eq("maria")
    end
    it "has 60 points at the start" do
      player = Player.new("maria")
      expect(player.points).to eq(60)
    end
    it "can have its points reduced" do
      player = Player.new("maria")
      player.change_points(-10)
      expect(player.points).to eq(50)
    end
end
