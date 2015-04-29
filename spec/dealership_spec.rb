require('rspec')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end
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

  describe('#save') do
    it('adds a dealership to the array of saved dealerships') do
      test_dealership = Dealership.new("Bob's")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('.all') do
    it('initialy returns empty array') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties the dealership array') do
      test_dealership = Dealership.new("Bob's")
      test_dealership.save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end
end
