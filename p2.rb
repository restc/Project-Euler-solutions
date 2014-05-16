# P2 from Project Euler - Fibonacci
# Github: @restc
#


class FibonacciNums

  def initialize
    temp = 0
    a = 1
    b = 2
    list = [b]

    while (a < 4000000)
      if ((a + b) % 2 == 0)
        list << (a + b)
      end
      temp = a + b
      a = b
      b = temp
    end

    puts find_sum(list)
  end

  def find_sum(list)
    unless !list.is_a? Array
      list.each {|v|

       }.inject(:+)
    end
  end

end
