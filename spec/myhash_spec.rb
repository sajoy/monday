require('rspec')
require('myhash')

describe(MyHash) do

  describe("#store") do
    it("stores a key and value pair") do
      test_hash = MyHash.new("puppy", "dog")
      expect(test_hash.store("kitten", "cute")).to(eq([["puppy", "dog"],["kitten", "cute"]]))
    end
  end

  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end
end
