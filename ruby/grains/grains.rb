class Grains
  def self.square(num)
    raise ArgumentError if num < 1 || num > 64
    return 1 if num == 1
    2 * square(num - 1)
  end

  def self.total
    1.upto(64).inject(0) do |result, num|
      result + square(num)
    end
  end
end
