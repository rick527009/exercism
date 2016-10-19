module BookKeeping
  VERSION = 2
end

class Fixnum
  NUMBER_TO_ROMAN_MAP = {
    1000 => "M",
    900  => "CM",
    500  => "D",
    400  => "CD",
    100  => "C",
    90   => "XC",
    50   => "L",
    40   => "XL",
    10   => "X",
    9    => "IX",
    5    => "V",
    4    => "IV",
    1    => "I",
  }

  def to_roman
    return "" unless self > 0 and self < 4000
    NUMBER_TO_ROMAN_MAP.each_pair do |number, roman|
      if self >= number
        repeat = self / number
        return (roman * repeat) + (self - (number * repeat)).to_roman
      end
    end
  end
end
