class Checker

  def initialize(player1, player2)
    @player1 = player1.downcase.to_s
    @player2 = player2.downcase.to_s
    @results_table = [['neither','Player 2','Player 1'],['Player 1','neither','Player 2'],['Player 2','Player 1', 'neither']]
  end

  def winner
    player1_index = case @player1
      when  "rock"
        0
      when "paper"
        1
      when  "scissors"
        2
    end

      player2_index = case @player2
      when  "rock"
        0
      when "paper"
        1
      when  "scissors"
        2
    end

    winning_player = @results_table[player1_index][player2_index]

    return winning_player
  end

  def check
    case
    when @player1 == @player2
      "Neither"
    when (@player1 == "rock" || @player1 == "paper") && (@player2 == "rock" || @player2 == "paper")
      "Paper"
    when (@player1 == "rock" || @player1 == "scissors") && (@player2 == "rock" || @player2 == "scissors")
      "Rock"
    when (@player1 == "paper" || @player1 == "scissors") && (@player2 == "paper" || @player2 == "scissors")
      "Scissors"
    end
  end

end
