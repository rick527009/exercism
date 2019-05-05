class Acronym
  def self.abbreviate(phrase)
    without_punctuation = replace_punctuation phrase
    without_multiple_whitespaces = replace_multiple_whitespaces without_punctuation
    collect_upcased_first_letters(without_multiple_whitespaces).join
  end

private

  def self.replace_punctuation(phrase)
    phrase.gsub(/\W/, ' ')
  end

  def self.replace_multiple_whitespaces(phrase)
    phrase.gsub(/\s+/, ' ')
  end

  def self.collect_upcased_first_letters(phrase)
    phrase.split.collect { |word| word[0].upcase }
  end
end
