# Generate prime[x]

class Prime

  def initialize(number = 10001)
    answer = gen(10001)
    puts answer.last
  end

  def gen(x)
    list = [2, 3]
    i = 3
    while list.length <= x
      if i.prime?
        list << i
        i += 1
      else
        i += 1
      end
    end
    list
  end
end


class Fixnum
  def is_prime?
    return false if self <= 1
    sq = Math.sqrt(self)
    (2..sq).each do |num|
      return false if self % num == 0
    end
    true
  end

  def prime?
    return false if self <= 1
    (2..(self / 2)).each do |num|
      return false if self % num == 0
    end
    true
  end
end
