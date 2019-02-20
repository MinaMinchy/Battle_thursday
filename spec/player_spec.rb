require 'player'

describe Player do
    it 'has a name' do
        player = Player.new("maria")
        expect(player.name).to eq("maria")
    end
end