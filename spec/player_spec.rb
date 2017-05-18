require 'player'

describe Player do

  subject(:player) { described_class.new(name) }

  let(:name) { :name }

  describe "#name" do
    it "returns players name" do
      expect(player.name).to eq name
    end
  end
end
