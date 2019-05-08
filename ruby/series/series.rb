class Series
  def initialize(series_string)
    @series = series_string.chars
  end

  def slices(length)
    raise ArgumentError.new("num exceeds series length") if length > @series.length
    @series.each_cons(length).map(&:join)
  end
end
