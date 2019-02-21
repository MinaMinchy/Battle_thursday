require 'game'

describe Game do
  it 'has players' do
    player1 = double :player1
    player2 = double :player2
    battle = Game.new(player1, player2)
    expect(battle.player1).to eq(player1)
  end
  it 'can action an attack on a player to reduce the players points' do
    player1 = double :player1, change_points: { }
    player2 = double :player2
    battle = Game.new(player1, player2)
    expect(player1).to receive(:change_points).with(-10)
    battle.attack(player1)
  end
  it "knows the current player" do
    player1 = double :player1, change_points: { }
    player2 = double :player2
    battle = Game.new(player1, player2)
    expect(battle.current_player).to eq(player1)
  end
  it "can switch current_player" do
    player1 = double :player1, change_points: { }
    player2 = double :player2
    battle = Game.new(player1, player2)
    battle.switch_player
    expect(battle.current_player).to eq(player2)
  end
end
