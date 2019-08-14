class Triangle
  # I did a follow-along of this solution code AFTER coding
  # my extremely crummy BUT WORKING version of triangle!
  # my version is in my Google Docs!
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a,b,c].each do |side|
      real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
    end
  end
  class TriangleError < StandardError
  end

end
