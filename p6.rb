class Diff

  def self.find
    totalSquares = Array.new
    (1..100).each {|x|
      totalSquares << x * x
    }
    totalSquares = totalSquares.inject(:+)

    totalSum     = (1..100).inject(:+)
    totalSum    *= totalSum

    diff = totalSquares - totalSum
  end

end
