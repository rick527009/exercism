class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.strip
  end

  def word_count
    counter = Hash.new(0)
    @phrase.split(/[^a-z0-9']+/).each do |word|
      word.sub!(/\A'(.*)'\z/, '\\1')
      counter[word] += 1
    end
    counter
  end
end
