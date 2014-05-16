# Largest Prime Factor
# ProjectEuler.net/problem=3

class LPF

  def initialize
    number = self.number
    puts find(number)
  end

  def number
    600851475143
  end

  def find(number)
    x = 2
    list = []
    while x < 10000
      if number % x == 0
        list << x
      end
      x+=1
    end
    puts list
  end

end
