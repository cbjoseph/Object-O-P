class Transportation
  def initialize(movement_options)
    @speed = movement_options[:speed]
    @direction = movement_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportation
  attr_reader :fuel, :make, :model
  def initialize(movement_options)
    super(movement_options)
    @fuel = movement_options[:fuel]
    @make = movement_options[:make]
    @model = movement_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  attr_reader :type, :weight
  def initialize(movement_options)
    super(movement_options)
    @type = movement_options[:type]
    @weight = movement_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end
car = Car.new({speed: 0, direction: "north", fuel: "diesel", make: "Ford", model: 2012})
bike = Bike.new({speed: 0, direction: "north", type: "Schwinn", weight: 55})
puts car.model
puts car.make
puts bike.type
puts bike.weight
