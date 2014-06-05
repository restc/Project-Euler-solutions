# Special Pythagorean triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class Euler9

  def pythagorean_triples
    (1..Float::INFINITY).lazy.flat_map {|z|
      (1..z).flat_map {|x|
        (x..z).select {|y|
          x ** 2 + y ** 2 == z ** 2
        }.map {|y|
          [x, y, z]
        }
      }
    }
  end

end

answer = 0
length = 1000
e = Euler9.new.pythagorean_triples.lazy.take(length).force
1.upto(length) { |x| puts e[x] if e[x].inject(:+) == 1000 }



# Answer:
# [200, 375, 425]
