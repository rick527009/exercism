module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(num)
    raise ArgumentError unless num > 0
    primes = [2]
    candidate = 3
    until primes.length == num do
      primes << candidate if prime?(candidate)
      candidate += 2
    end
    primes.last
  end

  def self.prime?(num)
    return false unless num > 1
    return true if num == 2
    return false if num.even?
    return (3..Math.sqrt(num).ceil).step(2).none? { |x| num % x == 0 }
  end
end
