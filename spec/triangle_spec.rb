require('rspec')
require('triangle')

describe(Triangle) do
  describe("#type") do
    it("returns type 'equilateral' if all given sides are equal") do
      test_triangle = Triangle.new(4, 4, 4)
      expect(test_triangle.type()).to(eq("equilateral"))
    end

    it("returns type 'isosceles' if two given sides are equal") do
      test_triangle = Triangle.new(4, 4, 8)
      expect(test_triangle.type()).to(eq("isosceles"))
    end

    it("returns type 'scalene' if no sides are equal") do
      test_triangle = Triangle.new(5, 6, 8)
      expect(test_triangle.type()).to(eq("scalene"))
    end

    it("returns 'Not a valid triangle' if it is not a valid triangle") do
      test_triangle = Triangle.new(1, 1, 4)
      expect(test_triangle.type()).to(eq("not a valid triangle"))
    end

  end
end
