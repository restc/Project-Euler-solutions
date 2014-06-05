
# Answer = 142913828922

class Primes

  require 'prime'
  require 'benchmark'

  def find_sum
    Benchmark.measure { puts generate.inject(:+) }
  end

  def generate(number=2_000_000)

    2.upto(number) do |num|
      if num.prime?
        primes << num
      end
    end
    primes
  end
end
