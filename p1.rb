# Problem 1 from Project Euler
# √ Correct! (first try)
# @restc

class ThreesAndFives

  def initialize
    i = 0
    output = []
    while i < 1000
      if i % 3 == 0 || i % 5 == 0
        output << i
      end
      i += 1
    end
    result = output.each {|x| puts x}.inject(:+)
    puts result
  end

end
