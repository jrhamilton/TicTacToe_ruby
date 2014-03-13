class TicTacToe

  def initialize
    @players = []
    @players << Player.new('X')
    @players << Player.new('O')
    @board = Board.new()
    @player_index = 0
    @current_player = @players[@player_index]
  end

  def board
    @board
  end

  def players
    @players
  end

  def current_player
    @current_player
  end

  def next_player
    @player_index += 1
    @current_player = @players[@player_index % 2]
  end
end
