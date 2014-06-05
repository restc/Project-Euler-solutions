
module EulerLibrary

  def self.countdown(from = 20, &block)
    store = []
    unless from < 1 || from == 1
      if block
        from.downto(1) {|x| block.call(x) }
      else
        from.downto(1) {|x| store << x }
      end
    else
      store = [1]
    end
    store
  end

end

class Integer
  def !
    # Factorial
    total = 1
    self.downto(1) {|x|
      total *= x
    }
    total
  end

  def find_divisors
    # Where self is an integer
    query = self
    divisors = []
    x = 1
    if query == 1
      divisors = [1]
    else
      while x <= ( (query / 2) + 1 )
        if query % x == 0
          divisors << [x, (query / x)]
          x += 1
        else
          x += 1
        end
      end
      divisors.flatten!.uniq!

    end
    unless divisors.length <= 2
      divisors.sort!
    end
    # if divisors.length == 2
    #   puts "#{self} is a prime number"
    # end
    divisors

  end

  def intsAsArray
    # generate an array of ints where max is self
    max = self
    list = []
    unless max != Fixnum && max < 0
      (1..max).map {|x| list << x}
    else
      raise "Usage: call generateIntAry on max"
    end
    list
  end

  def length
    count = 0
    num = self
    while num > 0
      num /= 10
      count += 1
    end
    count
  end

end

class Array

  def pair_divisors
    result = []
    self.map {|x| result << [self.shift, self.pop]}
    result
  end
end

class String
  def uppercase?
    if self.ord >= 97 && self.ord <= 122
      return false
    elsif self.ord >= 65 && self.ord <= 90
      return true
    end
  end

  def lowercase?
    if self.ord >= 97 && self.ord <= 122
      return true
    elsif self.ord >= 65 && self.ord <= 90
      return false
    end
  end
end
