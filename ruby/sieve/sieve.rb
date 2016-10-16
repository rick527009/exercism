class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    result = (0..@limit).to_a
    result[0] = result[1] = nil
    result.each do |i|
      next unless i
      break if i**2 > @limit
      (i**2).step(@limit, i).each { |j| result[j] = nil }
    end
    result.compact
  end
end
