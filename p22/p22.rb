# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?



class NameScores
  attr_reader :names, :scores, :total

  def initialize
    names   = load_file
    names.sort!
    total_name_scores(names)
    @total = total_scores
  end

  def sanitize_scores!
    @scores.each do |score|
      if score == nil
        score.delete(nil)
      end
    end
  end

  def total_scores
    @scores.inject(:+)
  end

  def load_file
    n = File.read("names.txt").split("\"")
    @names = n.delete_if {|x| x == "" || x == ','}
  end

  def total_name_scores(names)
    scores = Array.new(names.length)
    names.each_with_index {|name, index|
      name_total = 0
      name.each_char {|c|
        name_total += c.ord - 65
      }
      scores[index] = name_total * (index + 1)
    }
    @scores = scores
  end

end

ns = NameScores.new
puts ns.total
