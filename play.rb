require './lib/tic_tac_toe'
require './lib/board'
require './lib/player'

def play(bool)
  if bool
    system('clear')
  end
  puts "click 'p' to play a new game"
  choice = gets.chomp
  case choice
    when "p"
    game = TicTacToe.new()
    system('clear')
    game_menu(game)
  else
    play
  end
end

def game_menu(game)
  show_board(game)
  puts "Choose an available space: 1 through 9"
  mark = gets.chomp.to_i - 1

  if game.board.taken_space(mark, game.players[0].mark, game.players[1].mark)
    game.board.take_space(game.current_player, mark)
    if (!game.board.check_winner(game.current_player.mark))
      game.next_player.mark
      system('clear')
      puts "Now player #{game.current_player.mark}'s turn"
      game_menu(game)
    else
      system('clear')
      show_board(game)
      puts "#{game.current_player.mark} WINS!!"
      puts "\n\n"
      play(false)
    end
  else
    system('clear')
    puts "This seat's taken"
    game_menu(game)
  end
end

def show_board(game)
  puts " #{game.board.row1[0]} | #{game.board.row1[1]} | #{game.board.row1[2]} "
  puts " #{game.board.row2[0]} | #{game.board.row2[1]} | #{game.board.row2[2]} "
  puts " #{game.board.row3[0]} | #{game.board.row3[1]} | #{game.board.row3[2]} "
end


play(true)

