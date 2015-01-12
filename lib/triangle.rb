class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:type) do
    if (@side1.eql?(@side2)).&(@side1.eql?(@side3))
      type = "equilateral"
    elsif (@side1.+(@side2).>=(@side3)).&(@side3.+(@side2).>=(@side1)).&(@side3.+(@side2).>=(@side1))
      if (@side1.eql?(@side2)).|(@side1.eql?(@side3)).|(@side2.eql?(@side3))
        type = "isosceles"
      else
        type = "scalene"
      end
    else
      type = "not a valid triangle"
    end
  end
end
