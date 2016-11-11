module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(year)
    return year.modulo(400).zero? if year.modulo(100).zero?
    year.modulo(4).zero?
  end
end
