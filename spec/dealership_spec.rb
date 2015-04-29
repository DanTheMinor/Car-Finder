require('rspec')
require('dealership')

describe(Dealership) do
  # before() do
  #   Dealership.clear()
  # end
  describe('#name') do
    it("returns the name of the dealership") do
      test_dealer = Dealership.new("Bob's")
      expect(test_dealer.name()).to(eq("Bob's"))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Bob's")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it('initially returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Bob's")
      expect(test_dealership.cars()).to(eq([]))
    end
  end
end
