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
transporation = Transportation.new({speed: 0, direction: "north"})

class Car < Transportation
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new({speed: 0, direction: "north"})
puts bike.ring_bell