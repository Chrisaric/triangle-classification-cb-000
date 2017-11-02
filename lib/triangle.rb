class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    isTrue
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def isTrue
    list = [(a + b > c), (a + c > b), (b + c > a), (b>=0), (c>=0), (a>=0)]
    raise TriangleError if list.include?(false)
  end
end

class TriangleError < StandardError
end
