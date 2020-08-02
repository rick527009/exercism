module Bob
  def self.hey(remark)
    remark = remark.strip
    if is_shouting(remark) && is_question(remark)
      'Calm down, I know what I\'m doing!'
    elsif is_shouting(remark)
      'Whoa, chill out!'
    elsif is_question(remark)
      'Sure.'
    elsif is_silence(remark)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.is_shouting(remark)
    contains_letters(remark) && remark.upcase == remark
  end

  def self.is_question(remark)
    remark.end_with?('?')
  end

  def self.is_silence(remark)
    remark.empty?
  end

  def self.contains_letters(remark)
    remark.chars.any? { |c| is_letter(c) }
  end

  def self.is_letter(char)
    ('A'..'Z').include?(char.upcase)
  end
end
