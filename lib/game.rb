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
    unless @game_over
      @field[coordinate1][coordinate2] = @output_string

      @game_over = Result.new(@field, @output_string).game_over?

      change_current_turn

      change_output_string
    else
      "Your is game over, #{@current_turn} has won"
    end
  end

  private

  def change_current_turn
    @current_turn, @opponent = @opponent, @current_turn
  end

  def change_output_string
    @output_string == "X" ? @output_string = "O" : @output_string = "X"
  end

end
