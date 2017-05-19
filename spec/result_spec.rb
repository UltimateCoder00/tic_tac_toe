require 'result'

describe Result do

  subject(:result) { described_class.new(field, output_string) }

  let(:field) { [ ["-","-","-"], ["-","-","-"], ["-","-","-"] ] }
  let(:output_string) { "X" }

  subject(:result2) { described_class.new(field2, output_string) }
  let(:field2) { [ ["-","X","-"], ["-","-","-"], ["-","O","-"] ] }

  subject(:result3) { described_class.new(field3, output_string) }
  let(:field3) { [ ["-","-","-"], ["X","-","-"], ["-","-","-"] ] }

  subject(:result4) { described_class.new(field4, output_string) }
  let(:field4) { [ ["X","O","X"], ["O","X","X"], ["O","X","O"] ] }

  subject(:result5) { described_class.new(field5, output_string) }
  let(:field5) { [ ["X","X","X"], ["O","O","-"], ["-","-","-"] ] }

  subject(:result6) { described_class.new(field6, output_string) }
  let(:field6) { [ ["O","O","-"], ["X","X","X"], ["-","-","-"] ] }

  subject(:result7) { described_class.new(field7, output_string) }
  let(:field7) { [ ["-","-","-"], ["O","O","-"], ["X","X","X"] ] }

  subject(:result8) { described_class.new(field8, output_string) }
  let(:field8) { [ ["X","-","O"], ["X","-","O"], ["X","-","-"] ] }

  subject(:result9) { described_class.new(field9, output_string) }
  let(:field9) { [ ["-","X","O"], ["-","X","O"], ["-","X","-"] ] }

  subject(:result10) { described_class.new(field10, output_string) }
  let(:field10) { [ ["O","-","X"], ["O","-","X"], ["-","-","X"] ] }

  subject(:result11) { described_class.new(field11, output_string) }
  let(:field11) { [ ["X","O","O"], ["-","X","-"], ["-","-","X"] ] }

  subject(:result12) { described_class.new(field12, output_string) }
  let(:field12) { [ ["O","O","X"], ["-","X","-"], ["X","-","-"] ] }

  describe "#field" do
    it "returns the game field" do
      expect(result.field).to eq field
    end
  end

  describe "#output_string" do
    it "returns the game output string" do
      expect(result.output_string).to eq output_string
    end
  end

  describe "#game_over?" do
    context "checks if the game is game_over" do
      it "checks at initialization" do
        expect(result.game_over?).to eq false
      end

      it "checks game 2" do
        expect(result2.game_over?).to eq false
      end

      it "checks game 3" do
        expect(result3.game_over?).to eq false
      end

      it "checks game 4" do
        expect(result4.game_over?).to eq true
      end
    end
  end

  describe "#check_rows" do
    context "checks if the game is over" do
      it "checks at initialization" do
        expect(result.game_over?).to eq false
      end

      it "checks game 2" do
        expect(result2.game_over?).to eq false
      end

      it "checks game 3" do
        expect(result3.game_over?).to eq false
      end

      it "checks game 5" do
        expect(result5.game_over?).to eq true
      end

      it "checks game 6" do
        expect(result6.game_over?).to eq true
      end

      it "checks game 7" do
        expect(result7.game_over?).to eq true
      end
    end
  end

  describe "#check_columns" do
    context "checks if the game is over" do
      it "checks at initialization" do
        expect(result.game_over?).to eq false
      end

      it "checks game 2" do
        expect(result2.game_over?).to eq false
      end

      it "checks game 3" do
        expect(result3.game_over?).to eq false
      end

      it "checks game 8" do
        expect(result8.game_over?).to eq true
      end

      it "checks game 9" do
        expect(result9.game_over?).to eq true
      end

      it "checks game 10" do
        expect(result10.game_over?).to eq true
      end
    end
  end

  describe "#check_diagonals" do
    context "checks if the game is over" do
      it "checks at initialization" do
        expect(result.game_over?).to eq false
      end

      it "checks game 2" do
        expect(result2.game_over?).to eq false
      end

      it "checks game 3" do
        expect(result3.game_over?).to eq false
      end

      it "checks game 11" do
        expect(result11.game_over?).to eq true
      end

      it "checks game 12" do
        expect(result12.game_over?).to eq true
      end
    end
  end
end
