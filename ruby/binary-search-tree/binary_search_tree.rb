class Bst
  attr_accessor :data, :left, :right

  def initialize(value)
    @data = value
  end

  def insert(value)
    if value <= data
      insert_left value
    else
      insert_right value
    end
  end

  def each(&block)
    if block_given?
      left&.each(&block)
      block.call(data)
      right&.each(&block)
    else
      to_enum(:each)
    end
  end

private

  def insert_left(value)
    if left.nil?
      self.left = Bst.new value
    else
      left.insert value
    end
  end

  def insert_right(value)
    if right.nil?
      self.right = Bst.new value
    else
      right.insert value
    end
  end
end
