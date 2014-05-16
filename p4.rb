# Largest Palindromic Product
# ProjectEuler.net/problem=4

class LargestPalindrome
  attr_accessor :time, :list

  def initialize(x = 999, y = 999)
    start = Timer.start
    find(x, y)
    @time = start.stop
    if @list.nil?
      @list = @time
    else
      @list << [@time]
    end
    @list
  end

  def self.find(x, y)
    testStr = new_test(x, y)
    @list << find_largest_A(testStr)
  end

  def new_test(x, y)
    results = []
    xi = x
    while xi > 0
      yi = y
      while yi > 0
        product = xi * yi
        if product.palindrome?
          results << product
          yi -= 2
        else
          yi -= 2
        end
      end
      xi -= 2
    end
    results
  end


  def find_largest(xMax, yMax)
    result = palindromic(xMax, yMax)
  end

  def find_largest_A(arr)
    ans = 0
    arr.each do |p|
      if ans.palindrome?
        if p > ans
          ans = p
        end
      end
    end
    ans
  end


  def palindromic(xMax = 999, yMax = 999)
    result = xMax * yMax
    while xMax > (xMax - 0.1 * xMax) || yMax > (yMax - 0.1 * yMax)
      if result.palindrome?
        result
      elsif xMax - yMax > 0
        xMax = xMax - 2
      end
    end

  end

  def self.usage
    puts
    puts "Usage: LargestPalindrome.new(x, y)"
    puts "Able to find the largest palindromic product of two integers."
    puts "Default values are 999 for x and y."
    puts
    puts "Very slow with 5 digit numbers"
  end

end

class Fixnum
  def palindrome?
    if self.to_s.reverse == self.to_s
      true
    else
      false
    end
  end
end

module Timer
  require 'Time'
  attr_reader :start, :stop
  def self.start
    @start = Time.now
  end

  def self.stop
    self.time
  end

  def self.time
    puts "#{Time.now - @start} seconds"
  end

end
