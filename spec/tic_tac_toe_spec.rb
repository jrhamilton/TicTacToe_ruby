require 'rspec'
require 'tic_tac_toe'
require 'player'
require 'board'

describe TicTacToe do
  it "should initialize tic-tac-toe" do
    test_game = TicTacToe.new()
    test_game.should be_an_instance_of TicTacToe
  end
end

describe Player do
  it "should initialize a player" do
    player = Player.new('howdy')
    player.should be_an_instance_of Player
  end
  it "should initialize player x" do
    player = Player.new('x')
    player.mark.should eq("x")
  end
  it "should initialize player y" do
    player = Player.new('y')
    player.mark.should eq("y")
  end
end

describe Board do
  it "should be an instance of Board" do
    board = Board.new()
    board.should be_an_instance_of Board
  end
  it "should create a board with 9 spaces" do
    board = Board.new()
    puts board
    board.should be_an_instance_of Board
  end
end
