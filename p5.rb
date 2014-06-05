
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?




require 'Benchmark'

def find
  list = []
  1.upto(20) do |x|
    list << x.find_divisors
  end
  list.flatten!.uniq!
  total = list.inject(:*)
  return total
end

# Benchmark.measure { find }
f = find
