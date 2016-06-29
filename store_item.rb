
# item1 = {:item_name => "pineapple", :color => "yellow", :price => 3}
# item2 = {item_name: "stawberries", color: "red", price: 4}
# item3 = {item_name: "carrots", color: "orange", price: 0.99}

# puts "Today, at the grocery store I am selling #{item1[:item_name]} and 
# #{item2[:item_name]} and #{item3[:item_name]}. 
# The #{item1[:color]} #{item1[:item_name]} is #{item1[:price]} 
# The #{item2[:color]} #{item2[:item_name]} are #{item2[:price]} 
# The #{item3[:color]} #{item3[:item_name]} are #{item3[:price]} "

class Item
  attr_reader :name
  def initialize(item_descriptions)
    @name = item_descriptions[:name]
    @color = item_descriptions[:color]
    @price = item_descriptions[:price]
  end

  def info
    puts "The #{@name} is #{@color} and is being sold for $#{@price} " 
  end
end

class Perishable < Item
  attr_reader :shelf_life
  def initialize(item_descriptions)
    super
    @shelf_life = item_descriptions[:shelf_life]
  end
end

item1 = Item.new({name: "pineapple", color: "yellow", price: 3})
item2 = Item.new({name: "strawberry", color: "red", price: 4})
item3 = Item.new({name: "carrots", color: "orange", price: 0.99})

puts item1.name
puts item2.info
puts item3.info

avocado = Perishable.new({name: "avocado", color: "green", price: 3, shelf_life: "7 days"})
# def initialize(nameofhash)
# @first_name = nameofhash[:first_name]
puts avocado.shelf_life