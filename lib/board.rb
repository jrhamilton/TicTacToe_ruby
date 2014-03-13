class Board
  def initialize
    @coordinates = Array.new(9) {|i| "#{i + 1}"}
    @check_for_winner = []
  end

  def coordinates
    @coordinates
  end

  def take_space(player, mark_index)
    @coordinates[mark_index] = player.mark
  end

  def row1
    @coordinates.take(3)
  end

  def row2
    @coordinates.drop(3).take(3)
  end

  def row3
    @coordinates.drop(6)
  end

  def col1
    [@coordinates[0], @coordinates[3], @coordinates[6]]
  end

  def col2
    [@coordinates[1], @coordinates[4], @coordinates[7]]
  end

  def col3
    [@coordinates[2], @coordinates[5], @coordinates[8]]
  end

  def diag1
    [@coordinates[0], @coordinates[4], @coordinates[8]]
  end

  def diag2
    [@coordinates[2], @coordinates[4], @coordinates[6]]
  end

  def taken_space(index, p1_mark, p2_mark)
    @coordinates[index] != p1_mark && @coordinates[index] != p2_mark
  end

  def check_winner(mark)
    check = Array.new()
    check << self.row1
    check << self.row2
    check << self.row3
    check << self.col1
    check << self.col2
    check << self.col3
    check << self.diag1
    check << self.diag2

    check.each do |line|
      line_unique = line.uniq
      if line_unique.length == 1 and line_unique[0] == mark
        return true
      end
    end
    false
  end

end
