require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }

  let(:player_1) { double(:player, name: player1) }
  let(:player_2) { double(:player, name: player2) }

  let(:player1) {:player1}
  let(:player2) {:player2}

  let(:field) { [ ["-","-","-"], ["-","-","-"], ["-","-","-"] ] }

  let(:coordinate1) { 0 }
  let(:coordinate2) { 0 }

  describe "#curent_turn" do
    it "returns current player" do
      expect(game.current_turn).to eq player_1.name
    end
  end

  describe "#opponent" do
    it "returns opponent player" do
      expect(game.opponent).to eq player_2.name
    end
  end

  describe "#field" do
    it "returns initial game field" do
      expect(game.field).to eq field
    end
  end

  describe "#game_over" do
    it "returns if game is over" do
      expect(game.game_over).to eq false
    end
  end

  describe "#output_string" do
    it "returns players output string" do
      expect(game.output_string).to eq "X"
    end
  end

  describe "#play" do
    before do
      game.play(coordinate1, coordinate2)
    end

    it "changes the current player to the opponent player" do
      expect(game.current_turn).to eq player_2.name
    end

    it "changes the opponent player to the current player" do
      expect(game.opponent).to eq player_1.name
    end

    it "changes the output string" do
      expect(game.output_string).to eq "O"
    end

    it "changes the game field" do
      expect(game.field[coordinate1][coordinate2]).to eq "X"
    end
  end
end
