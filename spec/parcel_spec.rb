require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("computes parcel volume based on given dimensions") do
      test_parcel = Parcel.new(8, 8, 8, 4)
      expect(test_parcel.volume()).to(eq(512))

    end
  end

  describe("#cost") do
    it("calculates the shipping cost based on the weight") do
      test_parcel = Parcel.new(5, 8, 10, 5)
      expect(test_parcel.cost()).to(eq(2.5))
    end
  end

end
