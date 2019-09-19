class ResistorColorDuo
  COLOR_VALUE = {
    "black"  => 0,
    "brown"  => 1,
    "red"    => 2,
    "orange" => 3,
    "yellow" => 4,
    "green"  => 5,
    "blue"   => 6,
    "violet" => 7,
    "grey"   => 8,
    "white"  => 9
  }

  def self.value(colors)
    COLOR_VALUE[colors[0]] * 10 + COLOR_VALUE[colors[1]]
  end
end
