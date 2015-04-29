require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe("#make") do
    it("returns the model of the vehicle") do
      test_car = Vehicle.new("Toyota", "Prius", 2000)
      test_car.save()
      expect(test_car.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      test_car = Vehicle.new("Toyota", "Prius", 2000)
      test_car.save()
      expect(test_car.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe("#save") do
    it("adds a vehicle to the array of saved vehicles") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("clears the array of vehicles") do
      test_car = Vehicle.new("Toyota", "Prius", 2000)
      test_car.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe("#age") do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe("#worth_buying?") do
    it("returns false if the car is not American made and less than 15 years old") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

  describe(".find") do
    it("returns the id of the vehicle") do
      test_car = Vehicle.new("Toyota", "Prius", 2000)
      test_car.save()
      test_car2 = Vehicle.new("Toyota", "Corolla", 1999)
      test_car2.save()
      expect(Vehicle.find(test_car.id())).to(eq(test_car))

    end
  end
end
