# frozen_string_literal: true

# Animal class
class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts "#{@name} makes a sound"
  end
end
