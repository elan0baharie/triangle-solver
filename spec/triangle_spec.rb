require('rspec')
require('triangle')
require('pry')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if the sum of two sides is less or equal to the third") do
      test_triangle = Triangle.new(2, 3, 5)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end

  describe ("#equilateral?") do
    it("returns true if all sides are equal") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns true if no sides are equal") do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns true if only two sides are equal") do
      test_triangle = Triangle.new(3, 3, 4)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end
end
