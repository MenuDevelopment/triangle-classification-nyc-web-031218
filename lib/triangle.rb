class Triangle
  # write code here
  attr_reader :kind
  def initialize (side1, side2, side3)
    if [side1, side2, side3].any? {|side| side <= 0}
      raise TriangleError
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 ||side1 + side3 <= side2
      raise TriangleError
    end

    if side1 == side2 && side2 == side3 && side1 == side3
      @kind = :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
