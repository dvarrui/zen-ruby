
class Panel
  attr_reader :data, :size

  def initialize(size)
    @size = size

    row = Array.new(@size, 0)
    @data = Array.new(@size, row)

    row = Array.new(@size, true)
    @static = Array.new(@size, row)
  end

  def to_s
    @data.to_s
  end

  def sety(y, values)
    @data[y] = values
  end

  def getxy(x,y)
    @data[y][x]
  end

  def getxy_static(x,y)
    @static[y][x]
  end
end
