# frozen_string_literal: true

require 'ruby-prof'
class Product
  attr_accessor :id, :name, :price, :quantity

  def initialize(id, name, price, quantity)
    @id = id
    @name = name
    @price = price
    @quantity = quantity
  end

  def to_s
    "Product ##{id}: #{name}, $#{price}, Quantity: #{quantity}"
  end
end

class Category
  attr_accessor :id, :name, :products

  def initialize(id, name)
    @id = id
    @name = name
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def to_s
    "Category ##{id}: #{name}\nProducts:\n#{products.join("\n")}"
  end
end

class Inventory
  attr_accessor :categories

  def initialize
    @categories = []
  end

  def add_category(category)
    @categories << category
  end

  def find_product(product_id)
    categories.each do |category|
      category.products.each do |product|
        return product if product.id == product_id
      end
    end
    nil
  end

  def display_inventory
    puts 'Inventory:'
    categories.each do |category|
      puts category
      puts '-' * 30
    end
  end
end

# Measurement modes: WALL_TIME, PROCESS_TIME, ALLOCATIONS, MEMORY
RubyProf.measure_mode = RubyProf::MEMORY # Set to profile for memory
RubyProf.start # Start profiling
# Sample usage
inventory = Inventory.new

electronics = Category.new(1, 'Electronics')
clothing = Category.new(2, 'Clothing')

product1 = Product.new(1, 'Laptop', 999.99, 10)
product2 = Product.new(2, 'Smartphone', 599.99, 20)
product3 = Product.new(3, 'T-shirt', 19.99, 50)
product4 = Product.new(4, 'Jeans', 39.99, 30)

electronics.add_product(product1)
electronics.add_product(product2)
clothing.add_product(product3)
clothing.add_product(product4)

inventory.add_category(electronics)
inventory.add_category(clothing)

# UNCOMMENT THE CODE BELOW TO SEE SAMPLE RESULTS OF THE PROGRAM

# puts "Before Sale:"
# inventory.display_inventory

# Simulate a sale
# sold_product = inventory.find_product(2)
# if sold_product
#   sold_product.quantity -= 5
#   puts "\nAfter Sale:"
#   inventory.display_inventory
# else
#   puts "\nProduct not found!"
# end

result = RubyProf.stop
printer = RubyProf::DotPrinter.new(result)
printer.print($stdout)
