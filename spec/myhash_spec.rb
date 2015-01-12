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

  describe("has_key?") do
    it("returns true if given key is found in the hash") do
      test_hash = MyHash.new("dinosaurs", "extinct")
      expect(test_hash.has_key?("dinosaurs")).to(eq(true))
    end

    it("accounts for multiple pairs in a hash") do
      test_hash = MyHash.new("puppy", "dog")
      test_hash = test_hash.store("kittens", "cute")
      expect(test_hash.has_key?("dinosaurs")).to(eq(false))
    end


  end


end
