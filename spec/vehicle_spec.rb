require('rspec')
require('vehicle')

describe(Vehicle) do
#   before() do
#     Vehicle.clear()
#   end

  describe("#make") do
    it("returns the model of the vehicle") do
      test_car = Vehicle.new("Toyota", "Prius", 2000)
      test_car.save()
      expect(test_car.make()).to(eq("Toyota"))
    end
  end
end
