class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind

    if (@side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0)
        raise TriangleError
    end
    if (@side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_3 + @side_1 <= @side_2)
      raise TriangleError
    end
    if
      @side_1 == @side_2 && @side_1 == @side_3 && @side_2 == @side_3
      :equilateral
    elsif
      @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      :scalene
    elsif
      @side_1 == @side_2 && @side_1 != @side_3 || @side_2 == @side_3 && @side_1 != @side_3 || @side_1 == @side_3 && @side_2 != @side_3
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "these values are invalid for a triangle!"
    end
  end


end
