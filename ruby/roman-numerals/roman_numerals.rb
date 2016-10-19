module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    return "" unless self > 0 and self < 4000
    return "M" + (self - 1000).to_roman if self >= 1000
    return "CM" + (self - 900).to_roman if self >= 900
    return "D" + (self - 500).to_roman if self >= 500
    return "CD" + (self - 400).to_roman if self >= 400
    return "C" + (self - 100).to_roman if self >= 100
    return "XC" + (self - 90).to_roman if self >= 90
    return "L" + (self - 50).to_roman if self >= 50
    return "XL" + (self - 40).to_roman if self >= 40
    return "X" + (self - 10).to_roman if self >= 10
    return "IX" + (self - 9).to_roman if self >= 9
    return "V" + (self - 5).to_roman if self >= 5
    return "IV" + (self - 4).to_roman if self >= 4
    return "I" + (self - 1).to_roman if self >= 1
  end
end
