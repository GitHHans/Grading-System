# frozen_string_literal: true
require 'ruby-prof'
class Person
  attr_reader :name, :age
  # attr_accessor :name, :age
  # Constructor
  def initialize(name, age)
    @name = name
    @age = age
  end
end

# Create an instance of the Person class
person = Person.new("John", 30)

# Name and age will not be accessible without a getter
puts "Name: #{person.name}"
puts "Age: #{person.age}"

# Name and age will not modifiable without a setter
# person.name = "Alice"
# person.age = 25

puts "Updated Name: #{person.name}"
puts "Updated Age: #{person.age}"

# TODO: test to do!
RubyProf.start

result = RubyProf.stop

printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)