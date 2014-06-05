# The Fibonacci sequence is defined by the recurrence relation:
#
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
#
# What is the first term in the Fibonacci sequence to contain 1000 digits?

class Fibonacci

  def find_1000_digits
    first   = 1
    second  = 1
    third = first + second
    count = 2

    until third.length == 1000
      third = first + second
      first   = second
      second  = third
      count += 1
    end

    puts count
  end

end

class Integer
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
