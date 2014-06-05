# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

class LCM
# Short for LeastCommonMultiple
  def self.nums

    {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand"
    }

  end
end

class Breakdown
  attr_reader :words

  def initialize(number = 1)
    if number == 1
      return true
    else
      return breakdown(number)
    end
  end

  def breakdown(num)
    words = []

    if num < 20
      words << LCM.nums[num]
    else
      num.breakdown_thousands_1st > 0 ? words << LCM.nums[num.breakdown_thousands_1st   ] : words << " "

      # num.breakdown_thousands_1st != 0 && num > 999 ? words << "thousand"  : words << " "

      num.breakdown_thousands > 0 ? words << LCM.nums[num.breakdown_thousands       ] : words << " "

      num.breakdown_hundreds_1st > 0 ? words << LCM.nums[num.breakdown_hundreds_1st    ] : words << " "
      num.breakdown_hundreds_1st != 0 && num > 99 ? words << "hundred"  : words << " "
      words << "and" if num > 100 && num.breakdown_ones != 0
      words << LCM.nums[num.breakdown_tens            ]
      words << LCM.nums[num.breakdown_ones            ]
    end
    @words = words
    return @words
  end
end

class Integer

  def find_range
    num = self
  end

  def breakdown_ones
    self % 10
  end

  def breakdown_tens
    ( (self % 100) / 10 ) * 10
  end

  def breakdown_hundreds_1st
    ( self / 100 ) % 10
  end

  def breakdown_hundreds
    self % 1000
  end

  def breakdown_thousands
    (self / 1000) * 1000
  end

  def breakdown_thousands_1st
    self / 1000
  end


end
#
# count_in_words = Array.new
# cnt = 0
# b = Breakdown.new
# 1.upto(1000) do |count|
#   b.breakdown(count)
#   count_in_words << b
# end
#
# count_in_words.map {|x| cnt += x.length unless (x == nil || x == " " ) }
#
# p cnt
