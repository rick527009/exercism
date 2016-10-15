module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(string1, string2)
    raise ArgumentError.new('Strings have different length') unless string1.length == string2.length
    string1.chars.zip(string2.chars).count { |x, y| x != y }
  end
end
