module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(num)
    raise ArgumentError unless num > 0
    return 2 if num == 1
    primes = [2]
    candidate = 3
    loop do
      primes << candidate if prime?(candidate)
      return primes.last if primes.length == num
      candidate += 2
    end
  end

  def self.prime?(num)
    return false unless num > 1
    return true if num == 2
    return false if num.even?
    (3..Math.sqrt(num).ceil).step(2) do |x|
      return false if num % x == 0
    end
    return true
  end
end
