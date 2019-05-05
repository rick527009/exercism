module BookKeeping
  VERSION = 2
end

class Robot
  LEGAL_CHARACTERS = {
    :alpha   => ('A'..'Z').to_a,
    :numeric => ('0'..'9').to_a
  }
  NAME_FORMAT = [
    :alpha,
    :alpha,
    :numeric,
    :numeric,
    :numeric
  ]

  attr_reader :name

  @@previous_names = []

  def initialize
    reset
  end

  def reset
    @name = generate_unique_name
  end

  private

  def generate_unique_name
    loop do
      unless @@previous_names.include?(new_name = generate_name)
        @@previous_names << new_name
        return new_name
      end
    end
  end

  def generate_name
    NAME_FORMAT.map { |character_type| LEGAL_CHARACTERS[character_type].sample }.join
  end
end