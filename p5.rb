class Integer

  def factorial
    (1..self).inject(:*)
  end

  def !
    (1..self).inject(:*)
  end

end


class SPI

  def initialize(max)
    find(max)
  end

  def find(x = 10000)
    answer = 0
    y = 20
    while x > (y * y)
      while y > 0
        if x % y == 0 && y == 1
          answer = x
        elsif x % y == 0
          y -= 1
        else
          x -= 1
        end
      end
      x -= 1
    end

  end

end
