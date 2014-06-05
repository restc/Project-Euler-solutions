

class Grid

  attr_accessor :largest, :grid

  def initialize
    @grid = load_grid
    @largest = 0
  end

  def load_grid
    f = File.read("p11.txt").split("\n")
    grid = f.map {|row| row.split.map(&:to_i) }
  end

  def find_horizontal
    @grid.each { |row| row.each_slice(4) {|slice|
      sum = slice.inject(:*)
      @largest = sum if sum > @largest
      }
    }
  end

  def find_vertical
    len = @grid.length
    sums = []
    0.upto(len - 1) {|col_index|
      @grid.each_slice(4) {|row_slice|
        sums << row_slice.map {|row| row[col_index] }.inject(:*)
      }
      @largest = sums.max if @largest < sums.max
    }
  end

  def find_diagonal_right
    len = @grid.length
    prospect = []
    prospect_total = 0

    # Diagonally to the right
    0.upto(len - 4) {|index|
      prospect = [@grid[index][index] * @grid[index + 1][index + 1] * @grid[index + 2][index + 2] * @grid[index + 3][index + 3]]
      prospect_total = prospect.inject(&:*)
      unless prospect_total == nil
        @largest = prospect.first if (prospect.first > @largest && prospect.first != nil)
      end
    }
  end

  def find_diagonal_left
    len = @grid.length
    prospect = []
    prospect_total = 0

    0.upto(len - 4) {|index|
      prospect = [ @grid[index][index] * @grid[index + 1][index - 1] * @grid[index + 2][index - 2] * @grid[index + 3][index - 3] ]
      prospect_total = prospect.inject(&:*)
      unless prospect_total == nil
        @largest = prospect_total if (prospect_total > @largest && prospect_total != nil)
      end
    }
  end


end


g = Grid.new
g.find_diagonal_left
g.find_diagonal_right
g.find_horizontal
g.find_vertical

puts g.largest
