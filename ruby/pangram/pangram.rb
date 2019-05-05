module BookKeeping
  VERSION = 2
end

class Pangram
  ALPHABET = 'a'..'z'

  def self.is_pangram?(sentence)
    lowercase_sentence = sentence.downcase
    ALPHABET.all? { |letter| lowercase_sentence.include?(letter) }
  end
end