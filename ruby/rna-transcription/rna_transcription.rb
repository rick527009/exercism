module BookKeeping
  VERSION = 4
end

class Complement
  COMPLEMENT = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U',
  }

  def self.of_dna(strand)
    return '' unless /^[CGAT]+$/ =~ strand
    strand.chars.map { |c| COMPLEMENT[c] }.join
  end
end