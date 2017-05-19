class Game

  attr_reader :current_turn, :opponent, :field, :game_over, :output_string

  def initialize(player1, player2)
    @current_turn = player1
    @opponent = player2
    @field = [ ["-","-","-"], ["-","-","-"], ["-","-","-"] ]
    @game_over = false
    @output_string = "X"
  end

  def play(coordinate1, coordinate2)
    unless game_over
      @field[coordinate1][coordinate2] = @output_string

      change_current_turn

      change_output_string
    end
  end

  private

  def change_current_turn
    opponent_player = @opponent
    @opponent = @current_turn
    @current_turn = opponent_player
  end

  def change_output_string
    @output_string == "X" ? @output_string = "O" : @output_string = "X"
  end

end
