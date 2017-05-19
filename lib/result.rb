class Result

  attr_reader :field, :output_string

  def initialize(field, output_string)
    @field = field
    @output_string = output_string
  end

  def game_over?
    all_fields_filled? ? true : current_player_won?
  end

  private

  def all_fields_filled?
    # fields_filled = 0

    @field.flatten.select { |word| word != "-" }.size == 9 ? true : false
    #
    # for coordinate1 in 0..2
    #   for coordinate2 in 0..2
    #     if @field[coordinate1][coordinate2] != "-"
    #       fields_filled += 1
    #     end
    #   end
    # end
    #
    # fields_filled == 9 ? true : false
  end

  def current_player_won?
    if check_rows
      true
    elsif check_columns
      true
    elsif check_diagonals
      true
    else
      false
    end
  end

  def check_rows
    rows_all_the_same = false

    for coordinate1 in 0..2
      if @field[coordinate1][0] == @field[coordinate1][1]
        if @field[coordinate1][0] == @field[coordinate1][2]
          if @field[coordinate1][0] == @output_string
            rows_all_the_same = true
            break
          end
        end
      end
    end

    rows_all_the_same
  end

  def check_columns
    columns_all_the_same = false

    for coordinate2 in 0..2
      if @field[0][coordinate2] == @field[1][coordinate2]
        if @field[0][coordinate2] == @field[2][coordinate2]
          if @field[0][coordinate2] == @output_string
            columns_all_the_same = true
            break
          end
        end
      end
    end

    columns_all_the_same
  end

  def check_diagonals
    diagonals_all_the_same = false

    if @field[0][0] == @field[1][1]
      if @field[0][0] == @field[2][2]
        if @field[0][0] == @output_string
          diagonals_all_the_same = true
        end
      end
    end

    unless diagonals_all_the_same == true
      if @field[2][0] == @field[1][1]
        if @field[2][0] == @field[0][2]
          if @field[2][0] == @output_string
            diagonals_all_the_same = true
          end
        end
      end
    end

    diagonals_all_the_same
  end

end
