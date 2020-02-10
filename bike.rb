# Bike

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = Rented.new
    @cargo = CargoContainer.new
  end

  def rent_bike!]
    rented.rent
  end

  def add_cargo(item)
    self.cargo.add(item)
  end

  def remove_cargo(item)
    self.cargo.remove(item)
  end
end

class CargoContainer
  
  MAX_ITEMS = 10
  attr_accessor :contents

  def initialize
    @contents = []
  end

  def add(cargo)
    self.contents << cargo
  end

  def remove(cargo)
    self.contents.remove(cargo)
  end

  def capacity
    MAX_ITEMS
  end

  def remaining_capacity
    MAX_ITEMS - self.contents.size
  end

end

class Rented
attr_accessor :rented

  def initialize(rented = false)
    @rented = rented
  end

  def rent
    self.rented = true
  end
end