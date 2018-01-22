class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
  @length3 = length3
  @length2 = length2
  @length1 = length1
  end

  def kind 
  if (@length1 > 0 && @length2 > 0 && @length3 > 0)
    if @length1 == @length2 && @length1 == @length3
      :equilateral
    elsif ((@length1 == @length2 && @length1 != @length3) || (@length1 == @length3 && @length1 != @length2) || (@length2 == @length3 && @length1 != @length2))
      :isosceles
    else
      :scalene
    end
  else
    raise TriangleError
    
  end
    
  end

end

class TriangleError < StandardError
 # triangle error code
  
end