module BookKeeping
  VERSION = 2
end

class Robot
  ALPHABET_ARRAY = ('A'..'Z').to_a
  NUMERIC_ARRAY = ('0'..'9').to_a
  PREVIOUS_NAMES = []

  attr_reader :name

  def initialize
    @name = generate_unique_name
  end

  def reset
    @name = generate_unique_name
  end

  private

  def generate_unique_name
    loop do
      generated_name = (2.times.map { ALPHABET_ARRAY.sample } + 3.times.map { NUMERIC_ARRAY.sample }).join
      unless PREVIOUS_NAMES.include?(generated_name)
        PREVIOUS_NAMES << generated_name
        return generated_name
      end
    end
  end
end
