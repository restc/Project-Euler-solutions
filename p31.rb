# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
#
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
#
# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?


class Coins

  def self.coins
    { "1p" => 1, "2p" => 2, "5p" => 5, "10p" => 10, "20p" => 20, "50p" => 50, "1s" => 100, "2s" => 200 }
  end

  def findd
    max = 200
  end
end



For above values, how many coins to equal 2.00
x = 200
  1 * x + (2 * x + 1 * x) + (5 * x + 2 * x + 1 * x) + (10 * x + 5 * x + 2 * x + x) + (20 * x + )
