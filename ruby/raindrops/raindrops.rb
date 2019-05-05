module BookKeeping
  VERSION = 3
end

class Raindrops
  TUNES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong",
  }

  def self.convert(number)
    sound(number) || number.to_s
  end

  private

  def self.sound(number)
    result = ""
    TUNES.each do |divisor, tune|
      result << tune if number.modulo(divisor).zero?
    end
    !result.empty? && result
  end
end